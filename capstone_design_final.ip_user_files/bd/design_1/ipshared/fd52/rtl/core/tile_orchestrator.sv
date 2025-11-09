//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tile_orchestrator (SystemVerilog module)
// Description:
//   Top-level FSM to sequence LOAD → COMPUTE → STORE per tile/block.
//   - PORT-ONLY SKELETON for early wiring/compile.
//   - Minimal behavior: one-cycle req pulses and done= start.
//
// Last Updated: 2025-11-06 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

import sa_params_pkg::*;
`include "sa_defs.svh"

module tile_orchestrator (
  input  logic                 clk,
  input  logic                 rstn,

  // Control register snapshot
  input  logic                 start,
  input  logic                 update_A,
  input  logic [31:0]          N,
  input  logic [31:0]          K,
  input  logic [31:0]          M,
  input  logic [31:0]          TILE_SIZE_CFG,
  input  logic [31:0]          BLOCK_M_CFG,

  // Requests to sub-blocks
  output logic                 ld_req,
  input  logic                 ld_done,

  output logic                 comp_req,
  input  logic                 comp_done,

  output logic                 st_req,
  input  logic                 st_done,

  // Tile indices (optional; zeros in stub)
  output logic [31:0]          i_idx,
  output logic [31:0]          j_idx,
  output logic [31:0]          k_base,

  // Status to AXI-Lite
  output logic                 busy,
  output logic                 done,
  output logic                 error
);

  // ---------------------------------------------------------------------------
  // Stub behavior: single-cycle pulses, no sequencing
  // ---------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      ld_req  <= 1'b0;
      comp_req<= 1'b0;
      st_req  <= 1'b0;
      i_idx   <= '0;
      j_idx   <= '0;
      k_base  <= '0;
      busy    <= 1'b0;
      done    <= 1'b0;
      error   <= 1'b0;
    end else begin
      // One-cycle pulses on start
      ld_req   <= start;
      comp_req <= start;
      st_req   <= start;
      // Static indices in stub
      i_idx    <= '0;
      j_idx    <= '0;
      k_base   <= '0;
      // Simple status
      busy     <= 1'b0;
      done     <= start;
      error    <= 1'b0;
    end
  end

endmodule
