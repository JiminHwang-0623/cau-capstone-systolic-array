//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tb_tile_loader (SystemVerilog testbench)
// Description:
//   Testbench for tile_loader (V2: DMA Read, B-block row-by-row).
//   - Tests basic tile loading with DMA read and B-block row-by-row.
//   - Covers bulk and block modes with various tile sizes.
//   - Uses dma_read_stub for DMA read simulation.
//
// Last Updated: 2025-11-07 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

module tb_tile_loader;

  // Clock/Reset
  bit clk = 0; always #5 clk = ~clk; // 100 MHz
  bit rstn = 0;

  // Parameters (small first)
  localparam int ADDR_W = 32;
  localparam int DATA_W = 32;

  // Orchestrator regs
  logic                 ld_req;
  logic                 update_A;
  logic [31:0]          N,K,M;
  logic [31:0]          TILE_SIZE_CFG, BLOCK_M_CFG, j_block;
  logic [ADDR_W-1:0]    base_A, base_B;
  logic [31:0]          stride_A, stride_B;

  // tile_loader <-> addr_gen
  logic                 ag_start;
  logic [31:0]          ag_base_addr, ag_bytes_total;
  logic                 ag_req_valid, ag_req_ready;
  logic [ADDR_W-1:0]    ag_req_addr;
  logic [7:0]           ag_req_len;
  logic                 ag_req_last, ag_done;

  // tile_loader <-> dma_read_stub
  logic                 rd_start_dma;
  logic [ADDR_W-1:0]    rd_start_addr;
  logic [7:0]           rd_num_trans;
  logic                 rd_done;
  logic [DATA_W-1:0]    rd_data;
  logic                 rd_data_vld;

  // A DPRAM
  logic                 a_we;
  logic [7:0]           a_addr; // small test → 256 words max
  logic [DATA_W-1:0]    a_wdata;

  // B bram_pingpong
  logic [31:0]          b_seg_words;
  logic                 b_fill_req, b_fill_busy, b_fill_done;
  logic                 b_fill_we;
  logic [7:0]           b_fill_addr; // small DEPTH
  logic [DATA_W-1:0]    b_fill_wdata;

  // Status
  logic                 ld_done;

  // Instantiate DUTs
  tile_loader #(
    .A_ADDR_W(8),
    .B_ADDR_W(8)
  ) u_loader (
    .clk(clk), .rstn(rstn),
    .ld_req(ld_req), .update_A(update_A), .N(N), .K(K), .M(M),
    .TILE_SIZE_CFG(TILE_SIZE_CFG), .BLOCK_M_CFG(BLOCK_M_CFG), .j_block(j_block),
    .base_A(base_A), .base_B(base_B), .stride_A(stride_A), .stride_B(stride_B),
    .ag_start(ag_start), .ag_base_addr(ag_base_addr), .ag_bytes_total(ag_bytes_total),
    .ag_req_valid(ag_req_valid), .ag_req_ready(ag_req_ready),
    .ag_req_addr(ag_req_addr), .ag_req_len(ag_req_len), .ag_req_last(ag_req_last), .ag_done(ag_done),
    .rd_start_dma(rd_start_dma), .rd_start_addr(rd_start_addr), .rd_num_trans(rd_num_trans),
    .rd_done(rd_done), .rd_data(rd_data), .rd_data_vld(rd_data_vld),
    .a_we(a_we), .a_addr(a_addr), .a_wdata(a_wdata),
    .b_seg_words(b_seg_words), .b_fill_req(b_fill_req), .b_fill_busy(b_fill_busy), .b_fill_done(b_fill_done),
    .b_fill_we(b_fill_we), .b_fill_addr(b_fill_addr), .b_fill_wdata(b_fill_wdata),
    .ld_done(ld_done)
  );

  axi_addr_gen #(
    .CLOG2(0)
  ) u_ag (
    .clk(clk), .rstn(rstn),
    .start(ag_start), .base_addr(ag_base_addr), .bytes_total(ag_bytes_total), .stride_bytes(32'd0),
    .req_valid(ag_req_valid), .req_ready(ag_req_ready),
    .req_addr(ag_req_addr), .req_len(ag_req_len), .req_last(ag_req_last),
    .done(ag_done)
  );

  dma_read_stub #(
    .ADDR_W(ADDR_W), .DATA_W(DATA_W)
  ) u_stub (
    .clk(clk), .rstn(rstn),
    .rd_start_dma(rd_start_dma), .rd_start_addr(rd_start_addr), .rd_num_trans(rd_num_trans),
    .rd_done(rd_done), .rd_data(rd_data), .rd_data_vld(rd_data_vld)
  );

  // A DPRAM (write-only in this TB)
  dpram_wrapper #(
    .DW(32), .AW(8), .DEPTH(256)
  ) u_a (
    .clk   (clk),
    .ena   (1'b1), .addra(a_addr), .wea(a_we), .dia(a_wdata),
    .enb   (1'b0), .addrb('0),     .dob()
  );

  // B bram (DEPTH=256 words for test)
  bram_pingpong #(
    .DATA_W(32), .DEPTH(256), .USE_CONS_COMMIT(1)
  ) u_b (
    .clk(clk), .rstn(rstn),
    .seg_words    (b_seg_words),
    .fill_req     (b_fill_req), .fill_busy(b_fill_busy),
    .fill_we      (b_fill_we),  .fill_addr(b_fill_addr), .fill_wdata(b_fill_wdata), .fill_done(b_fill_done),
    .consume_req  (1'b0), .consume_busy(), .rd_addr('0), .rd_en(1'b0), .rd_rdata(), .cons_commit(1'b0), .consume_done(),
    .bank_sel     ()
  );

  // Counters / Logs
  int a_words_written;
  int b_words_written;
  int rd_cmds, rd_beats;
  int blocks_done;
  int jb;

  always @(posedge clk) begin
    if (!rstn) begin
      a_words_written <= 0; b_words_written <= 0; rd_cmds <= 0; rd_beats <= 0; blocks_done <= 0;
    end else begin
      if (a_we)       a_words_written <= a_words_written + 1;
      if (b_fill_we)  b_words_written <= b_words_written + 1;
      if (rd_start_dma) rd_cmds <= rd_cmds + 1;
      if (rd_data_vld)  rd_beats <= rd_beats + 1;
      if (b_fill_done)  blocks_done <= blocks_done + 1;
    end
  end

  task automatic reset_dut();
    rstn = 0; ld_req=0; update_A=0; N=0; K=0; M=0; TILE_SIZE_CFG=8; BLOCK_M_CFG=0; j_block=0;
    base_A=32'h0000_1000; base_B=32'h0002_0000; stride_A=0; stride_B=0;
    repeat(5) @(posedge clk); rstn=1; repeat(2) @(posedge clk);
  endtask

  // Testcases
  initial begin
    reset_dut();

    // TC1: A bulk small (N=8,K=16)
    N=8; K=16; M=32; stride_A=K; stride_B=M; update_A=1; ld_req=1; @(posedge clk); ld_req=0;
    wait(ld_done==1); @(posedge clk);
    $display("[TC1 A] words_written=%0d (exp=%0d) rd_cmds=%0d rd_beats=%0d", a_words_written, (N*K)/4, rd_cmds, rd_beats);

    // clear counters
    a_words_written=0; b_words_written=0; rd_cmds=0; rd_beats=0; blocks_done=0;

    // TC2: B block small (K=16, BLOCK_M=16, j_block=0)
    update_A=0; N=8; K=16; M=32; BLOCK_M_CFG=16; j_block=0; ld_req=1; @(posedge clk); ld_req=0;
    wait(ld_done==1); @(posedge clk);
    $display("[TC2 B] seg_words=%0d words_written=%0d rows=%0d rd_cmds=%0d rd_beats=%0d", b_seg_words, b_words_written, K, rd_cmds, rd_beats);

    // clear counters
    a_words_written=0; b_words_written=0; rd_cmds=0; rd_beats=0; blocks_done=0;

    // TC3: DistilBERT A bulk (N=64, K=768)
    update_A=1; N=64; K=768; M=3072; stride_A=K; ld_req=1; @(posedge clk); ld_req=0;
    wait(ld_done==1); @(posedge clk);
    $display("[TC3 A Distil] bursts=%0d (exp=768) words=%0d (exp=12288)", rd_cmds, a_words_written);

    // clear counters
    a_words_written=0; b_words_written=0; rd_cmds=0; rd_beats=0; blocks_done=0;

    // TC4: DistilBERT B block (BLOCK_M=256, j_block=0)
    update_A=0; N=64; K=768; M=3072; stride_B=M; BLOCK_M_CFG=256; j_block=0; ld_req=1; @(posedge clk); ld_req=0;
    wait(ld_done==1); @(posedge clk);
    $display("[TC4 B Distil block0] bursts=%0d (exp=3072) seg_words=%0d (exp=49152) words=%0d", rd_cmds, b_seg_words, b_words_written);
    
    // clear counters
    a_words_written=0; b_words_written=0; rd_cmds=0; rd_beats=0; blocks_done=0;

    // TC5: DistilBERT B full sweep over j_block (12 blocks @ 256)
    update_A=0; N=64; K=768; M=3072; stride_B=M; BLOCK_M_CFG=256; 
    for (jb=0; jb<3072; jb+=256) begin
      j_block = jb;
      ld_req  = 1; @(posedge clk); ld_req = 0;
      wait(ld_done==1); @(posedge clk);
      $display("[TC5 B Distil sweep] block@%0d bursts=%0d (exp=3072) seg_words=%0d (exp=49152) words=%0d", 
               jb, rd_cmds, b_seg_words, b_words_written);
      // reset per-block counters to see per-block numbers
      rd_cmds=0; b_words_written=0; rd_beats=0;
    end
    $display("[TC5 B Distil sweep] blocks_done=%0d (exp=12)", blocks_done);

    $display("All tile_loader unit tests completed.");
    $finish;
  end

endmodule
