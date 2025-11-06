//----------------------------------------------------------------+
// Project: Capstone Design
// Module : axi_addr_gen (SystemVerilog module)
// Description:
//   Generic address/burst generator interface for AXI DMA.
//   - This is a PORT-ONLY SKELETON to enable early integration.
//   - No functional address sequencing is implemented yet.
//
// Usage intent:
//   Given base address and total byte size, produce a stream of
//   contiguous bursts (addr + ARLEN/AWLEN) via valid/ready handshake.
//
// Note:
//   Actual bursting/alignment logic will be implemented later. For now,
//   outputs are benign defaults and 'done' pulses on start.
//
// Last Updated: 2025-11-06 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

import sa_params_pkg::*;
`include "sa_defs.svh"

module axi_addr_gen #(
  parameter int ADDR_W          = AXI_ADDR_WIDTH,
  parameter int P_BYTES_PER_BEAT= (AXI_DATA_WIDTH/8),
  parameter int P_MAX_BURST     = 16
)(
  input  logic                 clk,
  input  logic                 rstn,

  // Command
  input  logic                 start,        // one-shot command
  input  logic [ADDR_W-1:0]    base_addr,    // byte address (aligned to beat)
  input  logic [31:0]          bytes_total,  // total transfer bytes
  input  logic [31:0]          stride_bytes, // optional stride per tile/row (can be 0)

  // Burst output (stream of requests)
  output logic                 req_valid,
  input  logic                 req_ready,
  output logic [ADDR_W-1:0]    req_addr,
  output logic [7:0]           req_len,      // AXI: beats-1
  output logic                 req_last,

  // Command completion
  output logic                 done
);

  // ---------------------------------------------------------------------------
  // Stub behavior: drive safe defaults, pulse 'done' on 'start'
  // ---------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      req_valid <= 1'b0;
      req_addr  <= '0;
      req_len   <= '0;
      req_last  <= 1'b0;
      done      <= 1'b0;
    end else begin
      // No request emission in stub
      req_valid <= 1'b0;
      req_addr  <= '0;
      req_len   <= '0;
      req_last  <= 1'b1; // single-chunk intent

      // Immediate acknowledge the command (one-cycle pulse)
      done <= start;
    end
  end

endmodule
