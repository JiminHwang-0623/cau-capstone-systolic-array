//----------------------------------------------------------------+
// Project: Capstone Design
// Module : pe_array_8x8 (SystemVerilog module)
// Description:
//   8x8 PE array placeholder with minimal interface.
//   - Intended to host either LUT or DSP PEs.
//
// Last Updated: 2025-11-06 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

module pe_array_8x8 #(
  parameter int SIDE      = 8,
  parameter int ELEM_BITS = 8,
  parameter int ACC_BITS  = 32,
  parameter bit USE_DSP   = 1'b0
)(
  input  logic                           clk,
  input  logic                           rstn,
  input  logic                           start,
  input  logic [SIDE*ELEM_BITS-1:0]      a_bus,
  input  logic [SIDE*ELEM_BITS-1:0]      b_bus,
  output logic                           done
);

  // Stub: immediate acknowledge
  always_ff @(posedge clk or negedge rstn) begin
    if (!rstn) begin
      done <= 1'b0;
    end else begin
      done <= start;
    end
  end

endmodule
