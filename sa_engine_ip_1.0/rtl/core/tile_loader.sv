//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tile_loader (SystemVerilog module)
// Description:
//   Loads A (persist) and B (block ping-pong) from DDR via dma_read
//   using axi_addr_gen requests. V2 policy: B is loaded per j_block
//   row-by-row. Provides A DPRAM write and B bram_pingpong fill.
//
// Last Updated: 2025-11-07 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

import sa_params_pkg::*;
`include "sa_defs.svh"

module tile_loader #(
  parameter int ADDR_W    = AXI_ADDR_WIDTH,
  parameter int DATA_W    = AXI_DATA_WIDTH,
  parameter int A_ADDR_W  = 14, // 12,288 words -> 14 bits
  parameter int B_ADDR_W  = 16  // up to ~49k words
)(
  //--------------------------------------------------------------------------
  // Clock / Reset
  //--------------------------------------------------------------------------
  input  logic                 clk,
  input  logic                 rstn,

  //--------------------------------------------------------------------------
  // Orchestrator Control (run-time registers snapshot)
  //--------------------------------------------------------------------------
  input  logic                 ld_req,          // start one load cycle
  input  logic                 update_A,        // 1: perform A bulk persist load
  input  logic [31:0]          N,
  input  logic [31:0]          K,
  input  logic [31:0]          M,
  input  logic [31:0]          TILE_SIZE_CFG,
  input  logic [31:0]          BLOCK_M_CFG,
  input  logic [31:0]          j_block,        // column block start offset (elements)

  //--------------------------------------------------------------------------
  // Base addresses / Strides (byte units)
  //--------------------------------------------------------------------------
  input  logic [ADDR_W-1:0]    base_A,
  input  logic [ADDR_W-1:0]    base_B,
  input  logic [31:0]          stride_A,       // bytes per A row (usually K)
  input  logic [31:0]          stride_B,       // bytes per B row (usually M)

  //--------------------------------------------------------------------------
  // Address Generator (READ) — command and request stream
  //--------------------------------------------------------------------------
  output logic                 ag_start,        // kick off addr_gen for a region
  output logic [31:0]          ag_base_addr,    // base byte address
  output logic [31:0]          ag_bytes_total,  // total bytes for this region
  input  logic                 ag_req_valid,    // addr_gen issued one burst request
  output logic                 ag_req_ready,    // accept that request now
  input  logic [ADDR_W-1:0]    ag_req_addr,     // burst address
  input  logic [7:0]           ag_req_len,      // AXI len = beats-1
  input  logic                 ag_req_last,     // last burst in this region
  input  logic                 ag_done,         // region finished

  //--------------------------------------------------------------------------
  // AXI DMA Read — command out and data in
  //--------------------------------------------------------------------------
  output logic                 rd_start_dma,    // one-pulse per burst to dma_read
  output logic [ADDR_W-1:0]    rd_start_addr,   // = ag_req_addr
  output logic [7:0]           rd_num_trans,    // = ag_req_len + 1 (beats)
  input  logic                 rd_done,         // burst completed
  input  logic [DATA_W-1:0]    rd_data,         // RDATA stream (32b)
  input  logic                 rd_data_vld,     // RVALID&RREADY handshake

  //--------------------------------------------------------------------------
  // On‑chip Memories — A persist DPRAM write
  //--------------------------------------------------------------------------
  output logic                 a_we,
  output logic [A_ADDR_W-1:0]  a_addr,
  output logic [DATA_W-1:0]    a_wdata,

  //--------------------------------------------------------------------------
  // On‑chip Memories — B block ping‑pong (bram_pingpong, USE_CONS_COMMIT=1)
  //--------------------------------------------------------------------------
  output logic [31:0]          b_seg_words,     // words per B block segment
  output logic                 b_fill_req,      // start filling on EMPTY bank
  input  logic                 b_fill_busy,
  input  logic                 b_fill_done,
  output logic                 b_fill_we,
  output logic [B_ADDR_W-1:0]  b_fill_addr,
  output logic [DATA_W-1:0]    b_fill_wdata,

  //--------------------------------------------------------------------------
  // Status back to Orchestrator
  //--------------------------------------------------------------------------
  output logic                 ld_done          // pulse when preload finished
);

  // ---------------------------------------------------------------------------
  // Internal FSMs and counters
  // ---------------------------------------------------------------------------
  typedef enum logic [2:0] { S_IDLE, S_A_RUN, S_B_ROW_LAUNCH, S_B_ROW_RUN, S_B_WAIT_DONE } state_e;
  state_e state;

  logic        a_loaded;
  logic [31:0] a_total_words, a_word_cnt;

  logic [31:0] cur_block_m, words_per_row;
  logic [31:0] krow, row_word_idx;
  logic        cmd_inflight;

  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      state         <= S_IDLE;
      a_loaded      <= 1'b0;
      a_total_words <= 32'd0;
      a_word_cnt    <= 32'd0;

      ag_start      <= 1'b0;
      ag_base_addr  <= '0;
      ag_bytes_total<= '0;
      ag_req_ready  <= 1'b0;

      rd_start_dma  <= 1'b0;
      rd_start_addr <= '0;
      rd_num_trans  <= 8'd0;

      a_we          <= 1'b0;
      a_addr        <= '0;
      a_wdata       <= '0;

      b_seg_words   <= 32'd0;
      b_fill_req    <= 1'b0;
      b_fill_we     <= 1'b0;
      b_fill_addr   <= '0;
      b_fill_wdata  <= '0;

      cur_block_m   <= 32'd0;
      words_per_row <= 32'd0;
      krow          <= 32'd0;
      row_word_idx  <= 32'd0;
      cmd_inflight  <= 1'b0;

      ld_done       <= 1'b0;
    end else begin
      // defaults
      ag_start      <= 1'b0;
      ag_req_ready  <= 1'b0;
      rd_start_dma  <= 1'b0;
      a_we          <= 1'b0;
      b_fill_req    <= 1'b0;
      b_fill_we     <= 1'b0;
      ld_done       <= 1'b0;

      if (rd_start_dma) cmd_inflight <= 1'b1; else if (rd_done) cmd_inflight <= 1'b0;

      case (state)
        S_IDLE: begin
          if (ld_req) begin
            if (update_A && !a_loaded) begin
              a_total_words  <= (N*K) >> 2;
              a_word_cnt     <= 32'd0;
              a_addr         <= '0;
              ag_base_addr   <= base_A;
              ag_bytes_total <= (N*K);
              ag_start       <= 1'b1;
              state          <= S_A_RUN;
            end else begin
              cur_block_m    <= ((M - j_block) < BLOCK_M_CFG) ? (M - j_block) : BLOCK_M_CFG;
              words_per_row  <= (((M - j_block) < BLOCK_M_CFG) ? (M - j_block) : BLOCK_M_CFG) >> 2;
              b_seg_words    <= (K * (((M - j_block) < BLOCK_M_CFG) ? (M - j_block) : BLOCK_M_CFG)) >> 2;
              krow           <= 32'd0;
              row_word_idx   <= 32'd0;
              if (!b_fill_busy) b_fill_req <= 1'b1;
              state          <= S_B_ROW_LAUNCH;
            end
          end
        end

        S_A_RUN: begin
          if (ag_req_valid && !cmd_inflight) begin
            ag_req_ready  <= 1'b1;
            rd_start_addr <= ag_req_addr;
            rd_num_trans  <= ag_req_len + 8'd1;
            rd_start_dma  <= 1'b1;
          end
          if (rd_data_vld) begin
            a_wdata    <= rd_data;
            a_we       <= 1'b1;
            a_addr     <= a_addr + 1'b1;
            a_word_cnt <= a_word_cnt + 1'b1;
          end
          if (a_word_cnt == a_total_words) begin
            a_loaded <= 1'b1;
            ld_done  <= 1'b1;
            state    <= S_IDLE;
          end
        end

        S_B_ROW_LAUNCH: begin
          if (krow < K) begin
            ag_base_addr   <= base_B + (krow * stride_B) + j_block;
            ag_bytes_total <= cur_block_m;
            ag_start       <= 1'b1;
            row_word_idx   <= 32'd0;
            state          <= S_B_ROW_RUN;
          end else begin
            state <= S_B_WAIT_DONE;
          end
        end

        S_B_ROW_RUN: begin
          if (ag_req_valid && !cmd_inflight) begin
            ag_req_ready  <= 1'b1;
            rd_start_addr <= ag_req_addr;
            rd_num_trans  <= ag_req_len + 8'd1;
            rd_start_dma  <= 1'b1;
          end
          if (rd_data_vld) begin
            b_fill_we    <= 1'b1;
            b_fill_wdata <= rd_data;
            b_fill_addr  <= B_ADDR_W'(krow * words_per_row + row_word_idx);
            row_word_idx <= row_word_idx + 1'b1;
          end
          if (row_word_idx >= words_per_row) begin
            krow  <= krow + 1'b1;
            state <= S_B_ROW_LAUNCH;
          end
        end

        S_B_WAIT_DONE: begin
          if (b_fill_done) begin
            ld_done <= 1'b1;
            state   <= S_IDLE;
          end
        end
      endcase
    end
  end

endmodule
