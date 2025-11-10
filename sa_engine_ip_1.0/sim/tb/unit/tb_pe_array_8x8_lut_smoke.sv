//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tb_pe_array_8x8_lut_smoke (SystemVerilog testbench)
// Description:
//   Minimal LUT-only smoke test for pe_array_8x8 following the flow:
//     1) reset_dut
//     2) prepare 8x4 and 4x8 int8 test data
//     3) assert a_ld_start & b_ld_start together and load local regs
//     4) wait ld_done then assert start
//     5) wait done then pulse c_drain_req and compare against golden
//     6) stop on c_last
//     7) prepare 8x8 and 8x8 test data
//     8) repeat
//
// Last Updated: 2025-11-10 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

module tb_pe_array_8x8_lut_smoke;

  // Clock/Reset
  bit clk = 0; always #5 clk = ~clk; // 100 MHz
  bit rstn = 0;

  // Params
  localparam int SIDE = 8;
  localparam int ELEM_BITS = 8;
  localparam int ACC_BITS = 32;
  localparam int K4 = 4;
  localparam int K8 = 8;
  localparam int K768 = 768;
  // Toggle to run LUT vs DSP without editing instances
  localparam bit TB_USE_DSP = 1'b1; // set to 1 to test DSP path
  localparam string IMPL = (TB_USE_DSP==1'b1) ? "DSP" : "LUT";

  // DUT #1: LUT, K=4
  logic start_k4, done_k4;
  logic a_ld_start_k4, a_ld_valid_k4;
  logic [31:0] a_ld_data_k4;
  logic b_ld_start_k4, b_ld_valid_k4;
  logic [31:0] b_ld_data_k4;
  logic ld_done_k4;
  logic drain_req_k4, busy_k4, valid_k4, last_k4;
  logic [ACC_BITS-1:0] data_k4;

  pe_array_8x8 #(
    .SIDE(SIDE), .ELEM_BITS(ELEM_BITS), .ACC_BITS(ACC_BITS), .USE_DSP(TB_USE_DSP), .K_CYCLES(K4)
  ) u_lut_k4 (
    .clk(clk), .rstn(rstn), .start(start_k4), .done(done_k4),
    .a_ld_start(a_ld_start_k4), .a_ld_valid(a_ld_valid_k4), .a_ld_data(a_ld_data_k4),
    .b_ld_start(b_ld_start_k4), .b_ld_valid(b_ld_valid_k4), .b_ld_data(b_ld_data_k4),
    .ld_done(ld_done_k4),
    .c_drain_req(drain_req_k4), .c_busy(busy_k4), .c_valid(valid_k4), .c_data(data_k4), .c_last(last_k4)
  );

  // DUT #2: LUT, K=8
  logic start_k8, done_k8;
  logic a_ld_start_k8, a_ld_valid_k8;
  logic [31:0] a_ld_data_k8;
  logic b_ld_start_k8, b_ld_valid_k8;
  logic [31:0] b_ld_data_k8;
  logic ld_done_k8;
  logic drain_req_k8, busy_k8, valid_k8, last_k8;
  logic [ACC_BITS-1:0] data_k8;

  pe_array_8x8 #(
    .SIDE(SIDE), .ELEM_BITS(ELEM_BITS), .ACC_BITS(ACC_BITS), .USE_DSP(TB_USE_DSP), .K_CYCLES(K8)
  ) u_lut_k8 (
    .clk(clk), .rstn(rstn), .start(start_k8), .done(done_k8),
    .a_ld_start(a_ld_start_k8), .a_ld_valid(a_ld_valid_k8), .a_ld_data(a_ld_data_k8),
    .b_ld_start(b_ld_start_k8), .b_ld_valid(b_ld_valid_k8), .b_ld_data(b_ld_data_k8),
    .ld_done(ld_done_k8),
    .c_drain_req(drain_req_k8), .c_busy(busy_k8), .c_valid(valid_k8), .c_data(data_k8), .c_last(last_k8)
  );

  // DUT #3: LUT, K=768 (TC3)
  logic start_k768, done_k768;
  logic a_ld_start_k768, a_ld_valid_k768;
  logic [31:0] a_ld_data_k768;
  logic b_ld_start_k768, b_ld_valid_k768;
  logic [31:0] b_ld_data_k768;
  logic ld_done_k768;
  logic drain_req_k768, busy_k768, valid_k768, last_k768;
  logic [ACC_BITS-1:0] data_k768;

  pe_array_8x8 #(
    .SIDE(SIDE), .ELEM_BITS(ELEM_BITS), .ACC_BITS(ACC_BITS), .USE_DSP(TB_USE_DSP), .K_CYCLES(K768)
  ) u_lut_k768 (
    .clk(clk), .rstn(rstn), .start(start_k768), .done(done_k768),
    .a_ld_start(a_ld_start_k768), .a_ld_valid(a_ld_valid_k768), .a_ld_data(a_ld_data_k768),
    .b_ld_start(b_ld_start_k768), .b_ld_valid(b_ld_valid_k768), .b_ld_data(b_ld_data_k768),
    .ld_done(ld_done_k768),
    .c_drain_req(drain_req_k768), .c_busy(busy_k768), .c_valid(valid_k768), .c_data(data_k768), .c_last(last_k768)
  );

  // Golden matrices
  int A4   [SIDE][K4];
  int B4   [K4][SIDE];
  int C4exp[SIDE][SIDE];

  int A8   [SIDE][K8];
  int B8   [K8][SIDE];
  int C8exp[SIDE][SIDE];

  int A768   [SIDE][K768];
  int B768   [K768][SIDE];
  int C768exp[SIDE][SIDE];

  // Helpers
  function automatic logic [31:0] pack4(input int d0, input int d1, input int d2, input int d3);
    logic [31:0] bus;
    bus[7:0]   = $signed(d0[7:0]);
    bus[15:8]  = $signed(d1[7:0]);
    bus[23:16] = $signed(d2[7:0]);
    bus[31:24] = $signed(d3[7:0]);
    return bus;
  endfunction

  task automatic reset_dut();
    start_k4=0; drain_req_k4=0; a_ld_start_k4=0; a_ld_valid_k4=0; b_ld_start_k4=0; b_ld_valid_k4=0;
    start_k8=0; drain_req_k8=0; a_ld_start_k8=0; a_ld_valid_k8=0; b_ld_start_k8=0; b_ld_valid_k8=0;
    rstn=0; repeat(5) @(posedge clk); rstn=1; @(posedge clk);
  endtask

  // Build deterministic vectors: small signed range for human readability
  task automatic build_vectors_k4();
    for (int r=0;r<SIDE;r++)
      for (int k=0;k<K4;k++) A4[r][k] = ((r+k)%9) - 4;
    for (int k=0;k<K4;k++)
      for (int c=0;c<SIDE;c++) B4[k][c] = (((k*3)+c)%9) - 4;
    for (int r=0;r<SIDE;r++) begin
      for (int c=0;c<SIDE;c++) begin
        int sum=0;
        for (int k=0;k<K4;k++) sum += A4[r][k]*B4[k][c];
        C4exp[r][c]=sum;
      end
    end
  endtask

  task automatic build_vectors_k8();
    for (int r=0;r<SIDE;r++)
      for (int k=0;k<K8;k++) A8[r][k] = ((r+k)%9) - 4;
    for (int k=0;k<K8;k++)
      for (int c=0;c<SIDE;c++) B8[k][c] = (((k*3)+c)%9) - 4;
    for (int r=0;r<SIDE;r++) begin
      for (int c=0;c<SIDE;c++) begin
        int sum=0;
        for (int k=0;k<K8;k++) sum += A8[r][k]*B8[k][c];
        C8exp[r][c]=sum;
      end
    end
  endtask

  task automatic build_vectors_k768();
    for (int r=0;r<SIDE;r++)
      for (int k=0;k<K768;k++) A768[r][k] = ((r+k)%9) - 4;
    for (int k=0;k<K768;k++)
      for (int c=0;c<SIDE;c++) B768[k][c] = (((k*3)+c)%9) - 4;
    for (int r=0;r<SIDE;r++) begin
      for (int c=0;c<SIDE;c++) begin
        int sum=0;
        for (int k=0;k<K768;k++) sum += A768[r][k]*B768[k][c];
        C768exp[r][c]=sum;
      end
    end
  endtask

  // Concurrent tile loader: asserts both *_ld_start, then streams A and B together
  task automatic load_tiles_co_k4(
    ref logic a_ld_start,
    ref logic a_ld_valid,
    ref logic [31:0] a_ld_data,
    ref logic b_ld_start,
    ref logic b_ld_valid,
    ref logic [31:0] b_ld_data,
    ref logic ld_done
  );
    int lia, lib;
    int totalA, totalB;
    int d0, d1, d2, d3;
    int e0, e1, e2, e3;
    lia=0;
    lib=0;
    totalA=SIDE*K4;
    totalB=K4*SIDE;
    a_ld_start=1; b_ld_start=1; @(posedge clk); a_ld_start=0; b_ld_start=0;
    while (lia<totalA || lib<totalB) begin
      if (lia<totalA) begin
        d0 = (lia<totalA)? A4[lia/K4][lia%K4] : 0; lia++;
        d1 = (lia<totalA)? A4[lia/K4][lia%K4] : 0; lia++;
        d2 = (lia<totalA)? A4[lia/K4][lia%K4] : 0; lia++;
        d3 = (lia<totalA)? A4[lia/K4][lia%K4] : 0; lia++;
        a_ld_data = pack4(d0,d1,d2,d3); a_ld_valid=1;
      end else begin
        a_ld_valid=0; a_ld_data='0;
      end

      if (lib<totalB) begin
        e0 = (lib<totalB)? B4[lib/SIDE][lib%SIDE] : 0; lib++;
        e1 = (lib<totalB)? B4[lib/SIDE][lib%SIDE] : 0; lib++;
        e2 = (lib<totalB)? B4[lib/SIDE][lib%SIDE] : 0; lib++;
        e3 = (lib<totalB)? B4[lib/SIDE][lib%SIDE] : 0; lib++;
        b_ld_data = pack4(e0,e1,e2,e3); b_ld_valid=1;
      end else begin
        b_ld_valid=0; b_ld_data='0;
      end
      @(posedge clk);
    end
    a_ld_valid=0; b_ld_valid=0;
    wait(ld_done); @(posedge clk);
  endtask

  task automatic load_tiles_co_k8(
    ref logic a_ld_start,
    ref logic a_ld_valid,
    ref logic [31:0] a_ld_data,
    ref logic b_ld_start,
    ref logic b_ld_valid,
    ref logic [31:0] b_ld_data,
    ref logic ld_done
  );
    int lia, lib;
    int totalA, totalB;
    int d0, d1, d2, d3;
    int e0, e1, e2, e3;
    lia=0;
    lib=0;
    totalA=SIDE*K8;
    totalB=K8*SIDE;
    a_ld_start=1; b_ld_start=1; @(posedge clk); a_ld_start=0; b_ld_start=0;
    while (lia<totalA || lib<totalB) begin
      if (lia<totalA) begin
        d0 = (lia<totalA)? A8[lia/K8][lia%K8] : 0; lia++;
        d1 = (lia<totalA)? A8[lia/K8][lia%K8] : 0; lia++;
        d2 = (lia<totalA)? A8[lia/K8][lia%K8] : 0; lia++;
        d3 = (lia<totalA)? A8[lia/K8][lia%K8] : 0; lia++;
        a_ld_data = pack4(d0,d1,d2,d3); a_ld_valid=1;
      end else begin
        a_ld_valid=0; a_ld_data='0;
      end

      if (lib<totalB) begin
        e0 = (lib<totalB)? B8[lib/SIDE][lib%SIDE] : 0; lib++;
        e1 = (lib<totalB)? B8[lib/SIDE][lib%SIDE] : 0; lib++;
        e2 = (lib<totalB)? B8[lib/SIDE][lib%SIDE] : 0; lib++;
        e3 = (lib<totalB)? B8[lib/SIDE][lib%SIDE] : 0; lib++;
        b_ld_data = pack4(e0,e1,e2,e3); b_ld_valid=1;
      end else begin
        b_ld_valid=0; b_ld_data='0;
      end
      @(posedge clk);
    end
    a_ld_valid=0; b_ld_valid=0;
    wait(ld_done); @(posedge clk);
  endtask

  task automatic load_tiles_co_k768(
    ref logic a_ld_start,
    ref logic a_ld_valid,
    ref logic [31:0] a_ld_data,
    ref logic b_ld_start,
    ref logic b_ld_valid,
    ref logic [31:0] b_ld_data,
    ref logic ld_done
  );
    int lia, lib;
    int totalA, totalB;
    int d0, d1, d2, d3;
    int e0, e1, e2, e3;
    lia=0;
    lib=0;
    totalA=SIDE*K768;
    totalB=K768*SIDE;
    a_ld_start=1; b_ld_start=1; @(posedge clk); a_ld_start=0; b_ld_start=0;
    while (lia<totalA || lib<totalB) begin
      if (lia<totalA) begin
        d0 = (lia<totalA)? A768[lia/K768][lia%K768] : 0; lia++;
        d1 = (lia<totalA)? A768[lia/K768][lia%K768] : 0; lia++;
        d2 = (lia<totalA)? A768[lia/K768][lia%K768] : 0; lia++;
        d3 = (lia<totalA)? A768[lia/K768][lia%K768] : 0; lia++;
        a_ld_data = pack4(d0,d1,d2,d3); a_ld_valid=1;
      end else begin
        a_ld_valid=0; a_ld_data='0;
      end

      if (lib<totalB) begin
        e0 = (lib<totalB)? B768[lib/SIDE][lib%SIDE] : 0; lib++;
        e1 = (lib<totalB)? B768[lib/SIDE][lib%SIDE] : 0; lib++;
        e2 = (lib<totalB)? B768[lib/SIDE][lib%SIDE] : 0; lib++;
        e3 = (lib<totalB)? B768[lib/SIDE][lib%SIDE] : 0; lib++;
        b_ld_data = pack4(e0,e1,e2,e3); b_ld_valid=1;
      end else begin
        b_ld_valid=0; b_ld_data='0;
      end
      @(posedge clk);
    end
    a_ld_valid=0; b_ld_valid=0;
    wait(ld_done); @(posedge clk);
  endtask

  // Drain and check helper (row-major)
  task automatic drain_and_check(
    input string name,
    ref    logic drain_req,
    ref    logic valid,
    ref    logic last,
    ref    logic [ACC_BITS-1:0] data,
    ref    int exp[SIDE][SIDE]
  );
    int r, c;
    int got, expected;
    int errors;
    r=0; c=0; errors=0;
    drain_req = 1'b1; @(posedge clk); drain_req = 1'b0;
    $display("-- %s drain --", name);
    forever begin
      @(posedge clk);
      if (valid) begin
        got = $signed(data);
        expected = exp[r][c];
        $display("[%s r%0d c%0d] exp=%0d got=%0d %s", name, r, c, expected, got, (got==expected)?"PASS":"FAIL");
        if (got!=expected) errors++;
        if (c==SIDE-1) begin c=0; r=r+1; end else c=c+1;
        if (last) break;
      end
    end
    @(posedge clk);
    $display("%s summary: errors=%0d (exp=0)", name, errors);
  endtask

  initial begin
    reset_dut();

    // Phase 1: 8x4 * 4x8 (K=4)
    build_vectors_k4();
    load_tiles_co_k4(
      a_ld_start_k4, a_ld_valid_k4, a_ld_data_k4,
      b_ld_start_k4, b_ld_valid_k4, b_ld_data_k4,
      ld_done_k4
    );
    start_k4 <= 1'b1; @(posedge clk); start_k4 <= 1'b0;
    wait(done_k4); @(posedge clk);
    drain_and_check({IMPL," K=4"}, drain_req_k4, valid_k4, last_k4, data_k4, C4exp);

    // Phase 2: 8x8 * 8x8 (K=8)
    build_vectors_k8();
    load_tiles_co_k8(
      a_ld_start_k8, a_ld_valid_k8, a_ld_data_k8,
      b_ld_start_k8, b_ld_valid_k8, b_ld_data_k8,
      ld_done_k8
    );
    start_k8 <= 1'b1; @(posedge clk); start_k8 <= 1'b0;
    wait(done_k8); @(posedge clk);
    drain_and_check({IMPL," K=8"}, drain_req_k8, valid_k8, last_k8, data_k8, C8exp);

    // Phase 3 (TC3): 8x768 * 768x8 (K=768)
    build_vectors_k768();
    load_tiles_co_k768(
      a_ld_start_k768, a_ld_valid_k768, a_ld_data_k768,
      b_ld_start_k768, b_ld_valid_k768, b_ld_data_k768,
      ld_done_k768
    );
    start_k768 <= 1'b1; @(posedge clk); start_k768 <= 1'b0;
    wait(done_k768); @(posedge clk);
    drain_and_check({IMPL," K=768 (TC3)"}, drain_req_k768, valid_k768, last_k768, data_k768, C768exp);

    $display("LUT-only smoke test completed.");
    $finish;
  end

endmodule
