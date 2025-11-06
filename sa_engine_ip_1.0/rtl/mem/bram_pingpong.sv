//----------------------------------------------------------------+
// Project: Capstone Design
// Module : bram_pingpong (SystemVerilog module)
// Description:
//   Double-buffer (ping-pong) wrapper for tile buffering.
//   - PORT-ONLY SKELETON: no actual memory implemented yet.
//   - Provides fill/consume handshakes and bank select signal.
//
// Last Updated: 2025-11-06 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

import sa_params_pkg::*;
`include "sa_defs.svh"

module bram_pingpong #(
  parameter int DATA_W = AXI_DATA_WIDTH,
  parameter int ADDR_W = 10  // depth = 2^ADDR_W words
)(
  input  logic                 clk,
  input  logic                 rstn,

  // Fill-side (writer: loader/DMA read)
  input  logic                 fill_req,
  output logic                 fill_busy,
  input  logic                 fill_we,
  input  logic [ADDR_W-1:0]    fill_addr,
  input  logic [DATA_W-1:0]    fill_wdata,
  output logic                 fill_done,

  // Consume-side (reader: compute)
  input  logic                 consume_req,
  output logic                 consume_busy,
  input  logic [ADDR_W-1:0]    rd_addr,
  output logic [DATA_W-1:0]    rd_rdata,
  output logic                 consume_done,

  // Bank selection (observability / coordination)
  output logic                 bank_sel
);

  // ---------------------------------------------------------------------------
  // Stub behavior: immediate done, no real storage
  // ---------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      fill_busy    <= 1'b0;
      fill_done    <= 1'b0;
      consume_busy <= 1'b0;
      consume_done <= 1'b0;
      bank_sel     <= 1'b0;
      rd_rdata     <= '0;
    end else begin
      // No busy in stub
      fill_busy    <= 1'b0;
      consume_busy <= 1'b0;

      // Immediate completion pulses
      fill_done    <= fill_req;
      consume_done <= consume_req;

      // Static outputs in stub
      rd_rdata     <= '0;

      // Keep bank static; a real impl would toggle on successful fill/consume
      bank_sel     <= bank_sel; // hold
    end
  end

endmodule
