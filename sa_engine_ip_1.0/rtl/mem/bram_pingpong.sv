//----------------------------------------------------------------+
// Project: Capstone Design
// Module : bram_pingpong (SystemVerilog module)
// Description:
//   Generalized double-buffer (ping-pong) BRAM wrapper.
//   - Two banks (bank0/bank1). One is filled by Producer, the other is
//     consumed by Consumer; on completion both sides swap.
//   - Parametrizable segment size (DEPTH, seg_words) and completion mode.
//   - B block mode: external commit (cons_commit) is typical.
//   - C tile mode: internal count with rd_en and seg_words=64.
//
// Last Updated: 2025-11-07 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

import sa_params_pkg::*;
`include "sa_defs.svh"

module bram_pingpong #(
  parameter int DATA_W          = AXI_DATA_WIDTH,
  parameter int DEPTH           = 64,                 // words per bank
  parameter int ADDR_W          = $clog2(DEPTH),
  parameter bit USE_CONS_COMMIT = 1'b1                // 1: use cons_commit, 0: use rd_en counting
)(
  input  logic                 clk,
  input  logic                 rstn,

  // Segment length in words (for last block smaller than DEPTH). If 0 -> DEPTH
  input  logic [31:0]          seg_words,

  // Producer (fill) interface
  input  logic                 fill_req,     // pulse to start a new fill segment
  output logic                 fill_busy,
  input  logic                 fill_we,      // write one 32-bit word
  input  logic [ADDR_W-1:0]    fill_addr,    // word address within bank
  input  logic [DATA_W-1:0]    fill_wdata,
  output logic                 fill_done,    // pulse when segment finished

  // Consumer (read) interface
  input  logic                 consume_req,  // pulse to arm active bank
  output logic                 consume_busy,
  input  logic [ADDR_W-1:0]    rd_addr,      // read address
  input  logic                 rd_en,        // read enable for internal counting mode
  output logic [DATA_W-1:0]    rd_rdata,     // registered 1-cycle data
  input  logic                 cons_commit,  // external completion pulse
  output logic                 consume_done, // pulse on segment consumed

  // Bank selection (observability)
  output logic                 bank_sel      // 0: bank0 ACTIVE, 1: bank1 ACTIVE
);

  // ---------------------------------------------------------------------------
  // Two BRAM banks
  // ---------------------------------------------------------------------------
  (* ram_style = "block" *) logic [DATA_W-1:0] mem0 [0:DEPTH-1];
  (* ram_style = "block" *) logic [DATA_W-1:0] mem1 [0:DEPTH-1];

  // ---------------------------------------------------------------------------
  // Bank states
  // ---------------------------------------------------------------------------
  typedef enum logic [1:0] { S_EMPTY, S_FILL, S_FULL, S_ACTIVE } bstate_e;
  bstate_e st0, st1;

  logic        filling;
  logic        fill_bank;      // 0/1
  logic [31:0] fill_count;

  logic        consuming;
  logic [31:0] cons_count;

  // Helpers
  function logic [31:0] eff_seg_words(input logic [31:0] sw);
    return (sw==32'd0) ? DEPTH : sw;
  endfunction

  function logic has_empty();
    return (st0==S_EMPTY) || (st1==S_EMPTY);
  endfunction

  function logic choose_empty_bank();
    if (st0==S_EMPTY) return 1'b0; else return 1'b1;
  endfunction

  function logic has_full();
    return (st0==S_FULL) || (st1==S_FULL);
  endfunction

  function logic choose_full_bank();
    if (st0==S_FULL) return 1'b0; else return 1'b1;
  endfunction

  // Registered read (1-cycle latency)
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      rd_rdata <= '0;
    end else begin
      if (consuming) begin
        rd_rdata <= (bank_sel==1'b0) ? mem0[rd_addr] : mem1[rd_addr];
      end
    end
  end

  // Main FSM
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      st0          <= S_EMPTY;
      st1          <= S_EMPTY;
      bank_sel     <= 1'b0;

      // fill side
      filling      <= 1'b0;
      fill_bank    <= 1'b0;
      fill_count   <= 32'd0;
      fill_busy    <= 1'b0;
      fill_done    <= 1'b0;

      // consume side
      consuming    <= 1'b0;
      cons_count   <= 32'd0;
      consume_busy <= 1'b0;
      consume_done <= 1'b0;
    end else begin
      fill_done    <= 1'b0;
      consume_done <= 1'b0;

      // ---------- Fill path ----------
      if (!filling) begin
        fill_busy <= 1'b0;
        if (fill_req && has_empty()) begin
          fill_bank  <= choose_empty_bank();
          filling    <= 1'b1;
          fill_busy  <= 1'b1;
          fill_count <= 32'd0;
          if (choose_empty_bank()==1'b0) st0 <= S_FILL; else st1 <= S_FILL;
        end
      end else begin
        fill_busy <= 1'b1;
        if (fill_we) begin
          if (fill_bank==1'b0) mem0[fill_addr] <= fill_wdata; else mem1[fill_addr] <= fill_wdata;
          fill_count <= fill_count + 1;
          if (fill_count + 1 >= eff_seg_words(seg_words)) begin
            // segment filled
            filling   <= 1'b0;
            fill_busy <= 1'b0;
            fill_done <= 1'b1;
            if (fill_bank==1'b0) st0 <= S_FULL; else st1 <= S_FULL;
          end
        end
      end

      // ---------- Consume path ----------
      if (!consuming) begin
        consume_busy <= 1'b0;
        if (consume_req && has_full()) begin
          bank_sel     <= choose_full_bank();
          consuming    <= 1'b1;
          consume_busy <= 1'b1;
          cons_count   <= 32'd0;
          if (choose_full_bank()==1'b0) st0 <= S_ACTIVE; else st1 <= S_ACTIVE;
        end
      end else begin
        consume_busy <= 1'b1;
        if (USE_CONS_COMMIT) begin
          if (cons_commit) begin
            consuming    <= 1'b0;
            consume_busy <= 1'b0;
            consume_done <= 1'b1;
            if (bank_sel==1'b0) st0 <= S_EMPTY; else st1 <= S_EMPTY;
          end
        end else begin
          if (rd_en) begin
            cons_count <= cons_count + 1;
            if (cons_count + 1 >= eff_seg_words(seg_words)) begin
              consuming    <= 1'b0;
              consume_busy <= 1'b0;
              consume_done <= 1'b1;
              if (bank_sel==1'b0) st0 <= S_EMPTY; else st1 <= S_EMPTY;
            end
          end
        end
      end
    end
  end

endmodule
