//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tb_bram_pingpong (SystemVerilog testbench)
// Description:
//   Testbench for bram_pingpong (B-block and C-tile modes).
//   - Tests basic fill/consume patterns with external commit and internal counting.
//   - Covers overlap, single bank fill, and internal counting modes.
//
// Last Updated: 2025-11-07 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

module tb_bram_pingpong;

  // Clock/Reset
  bit clk = 0; always #5 clk = ~clk; // 100 MHz
  bit rstn = 0;

  // Parameters for unit-scale tests (small DEPTH to keep sim short)
  localparam int DEPTH_SMALL = 16; // words per bank for B-like test
  localparam int ADDR_W_S    = $clog2(DEPTH_SMALL);

  // ------------------------
  // DUT #1: B-block style (external commit)
  // ------------------------
  logic [31:0]          b_seg_words;
  logic                 b_fill_req, b_fill_busy, b_fill_we;
  logic [ADDR_W_S-1:0]  b_fill_addr;
  logic [31:0]          b_fill_wdata;
  logic                 b_fill_done;

  logic                 b_consume_req, b_consume_busy;
  logic [ADDR_W_S-1:0]  b_rd_addr;
  logic                 b_rd_en;
  logic [31:0]          b_rd_rdata;
  logic                 b_cons_commit;
  logic                 b_consume_done;
  logic                 b_bank_sel;

  bram_pingpong #(
    .DATA_W(32),
    .DEPTH (DEPTH_SMALL),
    .USE_CONS_COMMIT(1)
  ) u_b (
    .clk(clk), .rstn(rstn),
    .seg_words    (b_seg_words),
    .fill_req     (b_fill_req),
    .fill_busy    (b_fill_busy),
    .fill_we      (b_fill_we),
    .fill_addr    (b_fill_addr),
    .fill_wdata   (b_fill_wdata),
    .fill_done    (b_fill_done),
    .consume_req  (b_consume_req),
    .consume_busy (b_consume_busy),
    .rd_addr      (b_rd_addr),
    .rd_en        (b_rd_en),
    .rd_rdata     (b_rd_rdata),
    .cons_commit  (b_cons_commit),
    .consume_done (b_consume_done),
    .bank_sel     (b_bank_sel)
  );

  // ------------------------
  // DUT #2: C-tile style (internal counting)
  // ------------------------
  localparam int C_DEPTH = 64; // 256B / 4B
  localparam int C_AW    = $clog2(C_DEPTH);

  logic [31:0]          c_seg_words;
  logic                 c_fill_req, c_fill_busy, c_fill_we;
  logic [C_AW-1:0]      c_fill_addr;
  logic [31:0]          c_fill_wdata;
  logic                 c_fill_done;

  logic                 c_consume_req, c_consume_busy;
  logic [C_AW-1:0]      c_rd_addr;
  logic                 c_rd_en;
  logic [31:0]          c_rd_rdata;
  logic                 c_cons_commit;
  logic                 c_consume_done;
  logic                 c_bank_sel;

  bram_pingpong #(
    .DATA_W(32),
    .DEPTH (C_DEPTH),
    .USE_CONS_COMMIT(0)
  ) u_c (
    .clk(clk), .rstn(rstn),
    .seg_words    (c_seg_words),
    .fill_req     (c_fill_req),
    .fill_busy    (c_fill_busy),
    .fill_we      (c_fill_we),
    .fill_addr    (c_fill_addr),
    .fill_wdata   (c_fill_wdata),
    .fill_done    (c_fill_done),
    .consume_req  (c_consume_req),
    .consume_busy (c_consume_busy),
    .rd_addr      (c_rd_addr),
    .rd_en        (c_rd_en),
    .rd_rdata     (c_rd_rdata),
    .cons_commit  (c_cons_commit),
    .consume_done (c_consume_done),
    .bank_sel     (c_bank_sel)
  );

  // ------------------------
  // Helpers
  // ------------------------

  // Task: reset_dut (reset DUTs)
  task automatic reset_dut();
    rstn = 0; b_fill_req=0; b_fill_we=0; b_consume_req=0; b_rd_en=0; b_cons_commit=0;
             c_fill_req=0; c_fill_we=0; c_consume_req=0; c_rd_en=0; c_cons_commit=0;
    repeat(5) @(posedge clk);
    rstn = 1; repeat(2) @(posedge clk);
  endtask

  // Function: gen_word (generate word data)
  function automatic [31:0] gen_word(input int seed, input int addr);
    return 32'(seed ^ addr);
  endfunction

  // Task: b_fill_segment (fill segment for B-block)
  task automatic b_fill_segment(input int seed, input int words);
    int a;
    b_seg_words <= words;
    b_fill_req  <= 1'b1; @(posedge clk); b_fill_req <= 1'b0;
    for (a=0; a<words; a++) begin
      b_fill_addr  <= a[ADDR_W_S-1:0];
      b_fill_wdata <= gen_word(seed, a);
      b_fill_we    <= 1'b1; @(posedge clk); b_fill_we <= 1'b0;
    end
    // wait done
    wait(b_fill_done==1'b1); @(posedge clk);
  endtask

  // Task: b_consume_and_check (consume and check for B-block)
  task automatic b_consume_and_check(input int seed, input int words);
    int exp_word;
    int prev;
    int a;
    // arm consumer
    b_consume_req <= 1'b1; @(posedge clk); b_consume_req <= 1'b0;

    // sequential reads with 1-cycle latency check
    // prime
    b_rd_addr <= '0; b_rd_en <= 1'b0; @(posedge clk);
    for (a=0; a<words; a++) begin
      b_rd_addr <= a[ADDR_W_S-1:0];
      b_rd_en   <= 1'b1;
      exp_word  = gen_word(seed, a);
      @(posedge clk);
      // compare previous cycle's read (skip first as there was no issue)
      if (a>0) begin
        prev = gen_word(seed, a-1);
        if (b_rd_rdata !== prev) begin
          $error("[B] Data mismatch @%0d: got=0x%08X exp=0x%08X", a-1, b_rd_rdata, prev);
          $fatal(1);
        end
      end
    end
    // one more cycle to capture last
    b_rd_en <= 1'b0; @(posedge clk);
    if (b_rd_rdata !== gen_word(seed, words-1)) begin
      $error("[B] Data mismatch @last: got=0x%08X exp=0x%08X", b_rd_rdata, gen_word(seed, words-1));
      $fatal(1);
    end
    // commit
    b_cons_commit <= 1'b1; @(posedge clk); b_cons_commit <= 1'b0;
    wait(b_consume_done==1'b1); @(posedge clk);
  endtask

  // Task: c_fill_tile (fill tile for C-tile)
  task automatic c_fill_tile(input int seed);
    int a;
    c_seg_words <= C_DEPTH;
    c_fill_req  <= 1'b1; @(posedge clk); c_fill_req <= 1'b0;
    for (a=0; a<C_DEPTH; a++) begin
      c_fill_addr  <= a[C_AW-1:0];
      c_fill_wdata <= gen_word(seed, a);
      c_fill_we    <= 1'b1; @(posedge clk); c_fill_we <= 1'b0;
    end
    wait(c_fill_done==1'b1); @(posedge clk);
  endtask

  // Task: c_consume_and_check (consume and check for C-tile)
  task automatic c_consume_and_check(input int seed);
    int prev;
    int a;
    c_consume_req <= 1'b1; @(posedge clk); c_consume_req <= 1'b0;
    // sequential reads with rd_en counting; expect consume_done after 64
    c_rd_en <= 1'b0; @(posedge clk);
    for (a=0; a<C_DEPTH; a++) begin
      c_rd_addr <= a[C_AW-1:0];
      c_rd_en   <= 1'b1;
      @(posedge clk);
      // data check (1-cycle latency)
      if (a>0) begin
        prev = gen_word(seed, a-1);
        if (c_rd_rdata !== prev) begin
          $error("[C] Data mismatch @%0d: got=0x%08X exp=0x%08X", a-1, c_rd_rdata, prev);
          $fatal(1);
        end
      end
    end
    c_rd_en <= 1'b0; @(posedge clk);
    if (c_rd_rdata !== gen_word(seed, C_DEPTH-1)) begin
      $error("[C] Data mismatch @last: got=0x%08X exp=0x%08X", c_rd_rdata, gen_word(seed, C_DEPTH-1));
      $fatal(1);
    end
    wait(c_consume_done==1'b1); @(posedge clk);
  endtask

  // ------------------------
  // Test sequence
  // ------------------------
  initial begin
    reset_dut();

    // S1: B-block single bank fill -> consume, check
    b_seg_words = DEPTH_SMALL;
    b_fill_addr = '0; b_rd_addr='0; b_rd_en=0; b_cons_commit=0;
    $display("[S1] B-block basic fill/consume test");
    b_fill_segment(32'hA5A50000, DEPTH_SMALL);
    b_consume_and_check(32'hA5A50000, DEPTH_SMALL);

    // S2: overlap: while consuming bank0, fill bank1
    $display("[S2] B-block overlap: consume bank0 while filling bank1");
    // prepare bank0 again
    b_fill_segment(32'h11110000, DEPTH_SMALL);
    // start consuming bank0
    fork
      begin : th_cons
        b_consume_and_check(32'h11110000, DEPTH_SMALL);
      end
      begin : th_fill
        // Wait a couple cycles then fill bank1 with next pattern
        repeat(4) @(posedge clk);
        b_fill_segment(32'h22220000, DEPTH_SMALL);
      end
    join
    // now consume the next bank
    b_consume_and_check(32'h22220000, DEPTH_SMALL);

    // S3: C-tile internal counting mode
    $display("[S3] C-tile ping-pong (internal counting)");
    c_rd_addr='0; c_rd_en=0; c_cons_commit=0;
    c_fill_tile(32'h55AA0000);
    c_consume_and_check(32'h55AA0000);

    $display("All bram_pingpong unit tests PASSED.");
    $finish;
  end

endmodule
