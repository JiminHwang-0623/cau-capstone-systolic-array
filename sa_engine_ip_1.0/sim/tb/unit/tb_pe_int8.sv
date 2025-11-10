//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tb_pe_int8 (SystemVerilog testbench)
// Description:
//   Sequentially verifies pe_int8_lut and pe_int8_dsp with signed
//   int8 x int8 -> int32 accumulate behavior.
//   - Prints expected vs. got to console for each vector.
//
// Last Updated: 2025-11-10 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

module tb_pe_int8;

  // Clock/Reset
  bit clk = 0; always #5 clk = ~clk; // 100 MHz
  bit rstn = 0;

  // DUT signals (shared)
  logic signed [7:0] a;
  logic signed [7:0] b;
  logic               clr;
  logic               en;
  logic        [31:0] y_lut;
  logic        [31:0] y_dsp;

  // Instantiate DUTs
  pe_int8_lut #(
    .ELEM_BITS(8), .ACC_BITS(32)
  ) u_lut (
    .clk    (clk),
    .rstn   (rstn),
    .clr    (clr),
    .en     (en),
    .a      (a),
    .b      (b),
    .acc_out(y_lut)
  );

  pe_int8_dsp #(
    .ELEM_BITS(8), .ACC_BITS(32)
  ) u_dsp (
    .clk    (clk),
    .rstn   (rstn),
    .clr    (clr),
    .en     (en),
    .a      (a),
    .b      (b),
    .acc_out(y_dsp)
  );

  // Test vectors
  localparam int NUM = 6;
  int a_vec   [NUM] = '{  127, -128,  127,   -5,   -1,    0 };
  int b_vec   [NUM] = '{  127, -128, -128,    7,  127, -128 };

  task automatic reset_dut();
    rstn = 0; en = 0; clr = 0; a = '0; b = '0;
    repeat(5) @(posedge clk);
    rstn = 1; @(posedge clk);
  endtask

  task automatic run_phase(input string name, input bit use_lut);
    int errors = 0;
    int got; int exp;
    $display("\n-- %s phase: %0d vectors --", name, NUM);
    for (int i=0; i<NUM; i++) begin
      // Drive inputs (signed semantics)
      a      = a_vec[i][7:0];
      b      = b_vec[i][7:0];
      clr    = (i==0);
      en     = 1'b1;
      @(posedge clk); #1;
      if (i==0) exp = 0;
      exp = exp + (a_vec[i] * b_vec[i]);
      got = use_lut ? $signed(y_lut) : $signed(y_dsp);
      $display("[%s #%0d] a=%0d b=%0d -> exp=%0d got=%0d %s",
               name, i, a_vec[i], b_vec[i], exp, got,
               (got==exp)?"PASS":"FAIL");
      if (got!=exp) errors++;

      // Deassert enable between vectors
      en = 1'b0; @(posedge clk);
    end
    $display("%s summary: errors=%0d (exp=0)", name, errors);
  endtask

  initial begin
    reset_dut();
    run_phase("LUT", 1'b1);
    run_phase("DSP", 1'b0);
    $display("All PE unit tests completed.");
    $finish;
  end

endmodule
