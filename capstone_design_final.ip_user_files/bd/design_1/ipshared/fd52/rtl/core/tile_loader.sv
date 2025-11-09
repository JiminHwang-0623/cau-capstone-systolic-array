//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tile_loader (SystemVerilog module)
// Description:
//   Loads A (persist) and B (ping-pong) tiles from DDR via DMA Read.
//   - PORT-ONLY SKELETON to enable early wiring/compile.
//   - No functional DMA sequencing or buffering implemented yet.
//
// Last Updated: 2025-11-06 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

import sa_params_pkg::*;
`include "sa_defs.svh"

module tile_loader #(
  parameter int ADDR_W   = AXI_ADDR_WIDTH,
  parameter int DATA_W   = AXI_DATA_WIDTH,
  parameter int A_ADDR_W = 11, // A persist DPRAM address width
  parameter int B_ADDR_W = 10  // B ping-pong address width
)(
  input  logic                 clk,
  input  logic                 rstn,

  // Control from orchestrator
  input  logic                 ld_req,
  input  logic                 update_A,
  input  logic [31:0]          N,
  input  logic [31:0]          K,
  input  logic [31:0]          M,
  input  logic [31:0]          TILE_SIZE_CFG,
  input  logic [31:0]          BLOCK_M_CFG,

  // Base addresses / strides (byte units)
  input  logic [ADDR_W-1:0]    base_A,
  input  logic [ADDR_W-1:0]    base_B,
  input  logic [31:0]          stride_A,
  input  logic [31:0]          stride_B,

  // DMA READ command interface
  output logic                 rd_start,
  output logic [ADDR_W-1:0]    rd_base_addr,
  output logic [31:0]          rd_bytes,
  input  logic                 rd_done,

  // DMA READ data stream (from dma_read)
  input  logic [DATA_W-1:0]    rd_data,
  input  logic                 rd_valid,

  // A persist buffer write port
  output logic                 a_we,
  output logic [A_ADDR_W-1:0]  a_addr,
  output logic [DATA_W-1:0]    a_wdata,

  // B ping-pong fill port
  output logic                 b_fill_req,
  input  logic                 b_fill_busy,
  output logic                 b_fill_we,
  output logic [B_ADDR_W-1:0]  b_fill_addr,
  output logic [DATA_W-1:0]    b_fill_wdata,
  input  logic                 b_fill_done,
  output logic                 b_bank_sel,

  // Done to orchestrator
  output logic                 ld_done
);

  // ---------------------------------------------------------------------------
  // Stub behavior: no DMA, no writes. ld_done pulses on ld_req.
  // ---------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      rd_start     <= 1'b0;
      rd_base_addr <= '0;
      rd_bytes     <= '0;

      a_we         <= 1'b0;
      a_addr       <= '0;
      a_wdata      <= '0;

      b_fill_req   <= 1'b0;
      b_fill_we    <= 1'b0;
      b_fill_addr  <= '0;
      b_fill_wdata <= '0;
      b_bank_sel   <= 1'b0;

      ld_done      <= 1'b0;
    end else begin
      // Defaults
      rd_start     <= 1'b0;
      rd_base_addr <= '0;
      rd_bytes     <= '0;

      a_we         <= 1'b0;
      a_addr       <= '0;
      a_wdata      <= '0;

      b_fill_req   <= 1'b0;
      b_fill_we    <= 1'b0;
      b_fill_addr  <= '0;
      b_fill_wdata <= '0;

      // Keep bank static in stub
      b_bank_sel   <= b_bank_sel;

      // Immediate acknowledge
      ld_done      <= ld_req;
    end
  end

endmodule
