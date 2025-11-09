//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tile_compute (SystemVerilog module)
// Description:
//   Drives 8x8 PE array to compute one C tile from A/B tiles.
//   - PORT-ONLY SKELETON for early wiring/compile.
//   - No compute implemented yet.
//
// Last Updated: 2025-11-06 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

import sa_params_pkg::*;
`include "sa_defs.svh"

module tile_compute #(
  parameter int DATA_W    = AXI_DATA_WIDTH,
  parameter int C_ADDR_W  = 12
)(
  input  logic                 clk,
  input  logic                 rstn,

  // Control from orchestrator
  input  logic                 comp_req,
  input  logic [31:0]          N,
  input  logic [31:0]          K,
  input  logic [31:0]          M,
  input  logic [31:0]          TILE_SIZE_CFG,

  // Streamed inputs (from A persist / B ping-pong)
  output logic                 a_ready,
  input  logic                 a_valid,
  input  logic [DATA_W-1:0]    a_data,

  output logic                 b_ready,
  input  logic                 b_valid,
  input  logic [DATA_W-1:0]    b_data,

  // C tile buffer write port
  output logic                 c_we,
  output logic [C_ADDR_W-1:0]  c_addr,
  output logic [DATA_W-1:0]    c_wdata,

  // Done to orchestrator
  output logic                 comp_done
);

  // ---------------------------------------------------------------------------
  // Stub behavior: accept anything, no writes. comp_done pulses on comp_req.
  // ---------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      a_ready   <= 1'b1;
      b_ready   <= 1'b1;
      c_we      <= 1'b0;
      c_addr    <= '0;
      c_wdata   <= '0;
      comp_done <= 1'b0;
    end else begin
      a_ready   <= 1'b1;
      b_ready   <= 1'b1;
      c_we      <= 1'b0;
      c_addr    <= '0;
      c_wdata   <= '0;
      comp_done <= comp_req;
    end
  end

endmodule
