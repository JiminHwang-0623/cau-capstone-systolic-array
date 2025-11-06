//----------------------------------------------------------------+
// Project: Capstone Design
// Module : pe_int8_dsp (SystemVerilog module)
// Description:
//   INT8xINT8->INT32 PE (DSP-based) placeholder.
//   - PORT-ONLY + benign behavior (no MAC yet).
//
// Last Updated: 2025-11-06 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

module pe_int8_dsp #(
  parameter int ELEM_BITS = 8,
  parameter int ACC_BITS  = 32
)(
  input  logic                         clk,
  input  logic                         rstn,
  input  logic signed [ELEM_BITS-1:0]  a,
  input  logic signed [ELEM_BITS-1:0]  b,
  input  logic        [ACC_BITS-1:0]   acc_in,
  input  logic                         en,
  output logic        [ACC_BITS-1:0]   acc_out
);

  // Stub: no multiplication yet; mirror LUT stub behavior
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      acc_out <= '0;
    end else begin
      acc_out <= en ? acc_in : acc_out;
    end
  end

endmodule
