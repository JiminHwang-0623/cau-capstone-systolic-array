//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tile_store (SystemVerilog module)
// Description:
//   Stores C tile from on-chip buffer to DDR via DMA Write.
//   - PORT-ONLY SKELETON to enable early wiring/compile.
//   - No functional DMA sequencing implemented yet.
//
// Last Updated: 2025-11-06 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

import sa_params_pkg::*;
`include "sa_defs.svh"

module tile_store #(
  parameter int ADDR_W   = AXI_ADDR_WIDTH,
  parameter int DATA_W   = AXI_DATA_WIDTH,
  parameter int C_ADDR_W = 12  // C tile buffer address width
)(
  input  logic                 clk,
  input  logic                 rstn,

  // Control from orchestrator
  input  logic                 st_req,
  input  logic [ADDR_W-1:0]    base_C,
  input  logic [31:0]          stride_C,

  // DMA WRITE command interface
  output logic                 wr_start,
  output logic [ADDR_W-1:0]    wr_base_addr,
  output logic [31:0]          wr_bytes,
  input  logic                 wr_ready,
  input  logic                 wr_done,

  // DMA WRITE data stream (generic)
  output logic [DATA_W-1:0]    wr_data,
  output logic                 wr_data_valid,
  input  logic                 wr_data_ready,

  // C tile buffer read port
  output logic                 c_rd_en,
  output logic [C_ADDR_W-1:0]  c_rd_addr,
  input  logic [DATA_W-1:0]    c_rd_data,
  input  logic                 c_rd_valid,

  // Done to orchestrator
  output logic                 st_done
);

  // ---------------------------------------------------------------------------
  // Stub behavior: no DMA/data moves. st_done pulses on st_req.
  // ---------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      wr_start      <= 1'b0;
      wr_base_addr  <= '0;
      wr_bytes      <= '0;
      wr_data       <= '0;
      wr_data_valid <= 1'b0;

      c_rd_en       <= 1'b0;
      c_rd_addr     <= '0;

      st_done       <= 1'b0;
    end else begin
      // Defaults
      wr_start      <= 1'b0;
      wr_base_addr  <= '0;
      wr_bytes      <= '0;
      wr_data       <= '0;
      wr_data_valid <= 1'b0;

      c_rd_en       <= 1'b0;
      c_rd_addr     <= '0;

      // Immediate acknowledge
      st_done       <= st_req;
    end
  end

endmodule
