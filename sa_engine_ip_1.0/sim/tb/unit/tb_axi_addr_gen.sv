//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tb_axi_addr_gen (SystemVerilog testbench)
// Description:
//   Testbench for axi_addr_gen (V1: AXI32, 16-beat fixed bursts).
//   - Tests basic burst generation, backpressure handling, and zero-length cases.
//   - Uses Queue for expected and got bursts (dynamic array).
//   - Supports ready mode toggling for backpressure testing.
//   - Optional: negative alignment test (commented out).
//
// Last Updated: 2025-11-07 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

// Unit testbench for axi_addr_gen (V1: AXI32, 16-beat fixed bursts)

module tb_axi_addr_gen;

  // Clock/Reset
  bit clk = 0;
  bit rstn = 0;
  always #5 clk = ~clk; // 100 MHz

  // DUT I/O
  localparam int ADDR_W = 32;
  logic                 start;
  logic [ADDR_W-1:0]    base_addr;
  logic [31:0]          bytes_total;
  logic [31:0]          stride_bytes; // unused in V1

  logic                 req_valid;
  logic                 req_ready;
  logic [ADDR_W-1:0]    req_addr;
  logic [7:0]           req_len;
  logic                 req_last;
  logic                 done;

  // Instantiate DUT
  axi_addr_gen #(
    .ADDR_W(ADDR_W)
  ) dut (
    .clk         (clk),
    .rstn        (rstn),
    .start       (start),
    .base_addr   (base_addr),
    .bytes_total (bytes_total),
    .stride_bytes(stride_bytes),
    .req_valid   (req_valid),
    .req_ready   (req_ready),
    .req_addr    (req_addr),
    .req_len     (req_len),
    .req_last    (req_last),
    .done        (done)
  );

  // Burst transaction for scoreboard (Queue type)
  typedef struct packed {
    logic [31:0] addr;
    logic [7:0]  len;
    logic        last;
  } burst_t;

  burst_t exp_q[$];
  burst_t got_q[$];

  // Monitor: capture handshakes (valid/ready handshake)
  always @(posedge clk) begin
    if (rstn && req_valid && req_ready) begin
      burst_t t;
      t.addr = req_addr;
      t.len  = req_len;
      t.last = req_last;
      got_q.push_back(t);
    end
  end

  // Utilities
  function automatic void build_expected(input logic [31:0] base,
                                         input int bytes,
                                         output burst_t exp[$]);
    // Local Variables
    int      beats_total;
    int      ptr;
    int      beats;
    burst_t  t;

    // Logic (build expected bursts)
    exp = {};
    if (bytes == 0) return;
    beats_total = bytes / 4; // AXI32 (4 B/beat)
    ptr         = base;
    while (beats_total > 0) begin
      beats = (beats_total >= 16) ? 16 : beats_total;
      t.addr = ptr;
      t.len  = beats - 1; // AXI len = beats-1
      t.last = (beats_total <= 16);
      exp.push_back(t);
      ptr         += beats * 4;
      beats_total -= beats;
    end
  endfunction

  // Task: drive_start (send start command)
  task automatic drive_start(input logic [31:0] base,
                             input int bytes);
    base_addr   <= base;
    bytes_total <= bytes;
    stride_bytes<= 32'd0;
    start       <= 1'b1;
    @(posedge clk);
    start       <= 1'b0;
  endtask

  // Ready driver modes
  typedef enum int { READY_ALL=0, READY_TOGGLE=1 } ready_mode_e;
  task automatic drive_ready(input ready_mode_e mode,
                             input int unsigned hold_cycles = 0);
    int unsigned cnt = 0;
    req_ready = 1'b0;
    forever begin
      @(posedge clk);
      if (!rstn) begin
        req_ready <= 1'b0;
        cnt = 0;
      end else begin
        case (mode)
          READY_ALL:    req_ready <= 1'b1;
          READY_TOGGLE: req_ready <= (cnt[1] == 1'b0); // 1,1,0,0,1,1,0,0...
          default:      req_ready <= 1'b1;
        endcase
        cnt++;
      end
      if (hold_cycles != 0 && cnt >= hold_cycles) disable fork;
    end
  endtask

  // Task: compare_results (compare expected and got bursts)
  task automatic compare_results(input string name);
    if (got_q.size() != exp_q.size()) begin
      $error("[%s] Burst count mismatch: got=%0d exp=%0d", name, got_q.size(), exp_q.size());
      $fatal(1);
    end
    foreach (exp_q[i]) begin
      if (got_q[i].addr !== exp_q[i].addr ||
          got_q[i].len  !== exp_q[i].len  ||
          got_q[i].last !== exp_q[i].last) begin
        $error("[%s] Mismatch @%0d: got{addr=0x%08X,len=%0d,last=%0d} exp{addr=0x%08X,len=%0d,last=%0d}",
               name, i,
               got_q[i].addr, got_q[i].len, got_q[i].last,
               exp_q[i].addr, exp_q[i].len, exp_q[i].last);
        $fatal(1);
      end
    end
    $display("[%s] PASS: %0d bursts verified", name, exp_q.size());
  endtask

  // Test sequence
  initial begin
    // Reset
    start = 0; base_addr = '0; bytes_total = '0; stride_bytes = '0;
    req_ready = 0;
    rstn = 0; repeat (5) @(posedge clk); rstn = 1; repeat (2) @(posedge clk);

    // S1: single-burst (64B)
    exp_q = {}; got_q = {};
    fork
      drive_ready(READY_ALL);
    join_none
    build_expected(32'h0000_1000, 64, exp_q);
    drive_start(32'h0000_1000, 64);
    @(posedge done);
    compare_results("S1-single");

    // S2: multi-burst (256B)
    exp_q = {}; got_q = {};
    build_expected(32'h0000_2000, 256, exp_q);
    drive_start(32'h0000_2000, 256);
    @(posedge done);
    compare_results("S2-multi");

    // S3: backpressure (toggle ready)
    exp_q = {}; got_q = {};
    disable fork; // stop previous ready driver
    fork
      drive_ready(READY_TOGGLE);
    join_none
    build_expected(32'h0000_3000, 256, exp_q);
    drive_start(32'h0000_3000, 256);
    @(posedge done);
    compare_results("S3-backpressure");

    // S4: zero-length
    exp_q = {}; got_q = {};
    disable fork; fork drive_ready(READY_ALL); join_none
    build_expected(32'h0000_4000, 0, exp_q);
    drive_start(32'h0000_4000, 0);
    @(posedge done);
    if (got_q.size() != 0) begin
      $error("[S4-zero] Expected 0 bursts, got %0d", got_q.size());
      $fatal(1);
    end else begin
      $display("[S4-zero] PASS: 0 bursts as expected");
    end

    // (Optional) S5: negative alignment test – enable if you want to see assert
    // exp_q = {}; got_q = {};
    // build_expected(32'h0000_5002, 64, exp_q); // expect assert, not normal run
    // drive_start(32'h0000_5002, 64);
    // wait(done); // likely never reached due to $fatal in assertion

    $display("\nAll unit tests completed successfully.");
    $finish;
  end

endmodule
