//----------------------------------------------------------------+
// Project: Capstone Design
// Module : tb_tile_compute (SystemVerilog testbench)
// Description:
//   Integrates tile_compute (Option A) with pe_array_8x8 and stubs
//   simple loader/store to verify segmented accumulation and single
//   drain per tile.
//   - TC1: n=8,m=8,k_total=16 (k_eff=[8,8])
//   - TC2: n=5,m=7,k_total=13 (k_eff=[8,5])
//   - TC3: N=64,K=768,M=3072, BLOCK_M=256 (run 1 block by default)
//
// Last Updated: 2025-11-11 (by Jimin Hwang)
//----------------------------------------------------------------+

`timescale 1ns/1ps

module tb_tile_compute;

  // Clock/Reset (100 MHz)
  bit clk = 0; always #5 clk = ~clk; // 100 MHz
  bit rstn = 0;

  // Params (TILE_SIZE=8, SIDE=8, ACC_BITS=32, TB_USE_DSP=0)
  localparam int T  = 8;   // TILE_SIZE
  localparam int SIDE = 8;
  localparam int ACC_BITS = 32;
  localparam bit TB_USE_DSP = 1'b1; // set 1 to test DSP path

  // Target (TC3: N=64, K=768, M=3072, BLOCK_M=256)
  localparam int N_MAX = 64;
  localparam int K_MAX = 768;
  localparam int M_MAX = 3072;
  localparam int BLOCK_M = 256;

  // Execution toggles
  localparam bit RUN_TC1 = 1'b1;
  localparam bit RUN_TC2 = 1'b1;
  localparam bit RUN_TC3 = 1'b0; // set 1 to run one 256-col block (TC3)

  // DUT: tile_compute
  logic        start_tile;
  logic [15:0] k_total;
  logic [3:0]  n_eff, m_eff;
  logic        load_req;    // -> loader stub
  logic [3:0]  k_eff;       // from compute to loader
  logic        ld_done;     // pe_array ld_done
  logic        start_pe, acc_clr;
  logic        pe_done;
  logic        c_drain_req;
  logic [6:0]  drain_limit;
  logic        busy, tile_done;

  tile_compute #(
    .TILE_SIZE(T), .ACC_BITS(ACC_BITS)
  ) u_tc (
    .clk(clk), .rstn(rstn),
    .start_tile(start_tile),
    .k_total(k_total), .n_eff(n_eff), .m_eff(m_eff),
    .load_req(load_req), .k_eff(k_eff), .ld_done(ld_done),
    .start_pe(start_pe), .acc_clr(acc_clr), .pe_done(pe_done),
    .c_drain_req(c_drain_req), .drain_limit(drain_limit),
    .busy(busy), .tile_done(tile_done)
  );

  // DUT: pe_array_8x8 (K_CYCLES=T)
  logic        a_ld_start, a_ld_valid;
  logic [31:0] a_ld_data;
  logic        b_ld_start, b_ld_valid;
  logic [31:0] b_ld_data;
  logic        ld_done_pe;
  logic        c_busy, c_valid, c_last;
  logic [ACC_BITS-1:0] c_data;

  pe_array_8x8 #(
    .SIDE(SIDE), .ELEM_BITS(8), .ACC_BITS(ACC_BITS), .USE_DSP(TB_USE_DSP), .K_CYCLES(T)
  ) u_sa (
    .clk(clk), .rstn(rstn),
    .start(start_pe), .acc_clr(acc_clr), .done(pe_done),
    .a_ld_start(a_ld_start), .a_ld_valid(a_ld_valid), .a_ld_data(a_ld_data),
    .b_ld_start(b_ld_start), .b_ld_valid(b_ld_valid), .b_ld_data(b_ld_data),
    .ld_done(ld_done_pe),
    .c_drain_req(c_drain_req), .c_busy(c_busy), .c_valid(c_valid), .c_data(c_data), .c_last(c_last)
  );

  // tile_compute uses pe_array's ld_done
  assign ld_done = ld_done_pe;

  // Memories (TB-side model)
  byte signed A_mem [0:N_MAX-1][0:K_MAX-1];
  // Single-block mode: B block (K_MAX x BLOCK_M), j_block=0 assumed
  byte signed B_blk_mem [0:K_MAX-1][0:BLOCK_M-1];

  // Current tile coordinates (TB-side)
  int i0, j0;       // tile origin
  int k0_seg;       // current segment start (tracked in TB)
  int seg_idx;

  // Golden for current tile
  int Cexp [SIDE][SIDE];

  // Helpers
  function automatic logic [31:0] pack4(input int d0, input int d1, input int d2, input int d3);
    logic [31:0] w;
    w[7:0]   = $signed(d0[7:0]);
    w[15:8]  = $signed(d1[7:0]);
    w[23:16] = $signed(d2[7:0]);
    w[31:24] = $signed(d3[7:0]);
    return w;
  endfunction

  task automatic reset_dut();
    rstn=0; a_ld_start=0; a_ld_valid=0; a_ld_data='0; b_ld_start=0; b_ld_valid=0; b_ld_data='0;
    start_tile=0; seg_idx=0; k0_seg=0; i0=0; j0=0;
    repeat(5) @(posedge clk); rstn=1; @(posedge clk);
  endtask

  // Fill A/B with deterministic signed int8 pattern
  task automatic build_AB(int N, int K, int M);
    for (int r=0;r<N;r++)
      for (int k=0;k<K;k++) A_mem[r][k] = $signed(((r+k)%9) - 4);
    // Only first block (columns 0..BLOCK_M-1)
    for (int k=0;k<K;k++)
      for (int c=0;c<BLOCK_M;c++) B_blk_mem[k][c] = $signed((((k*3)+c)%9) - 4);
  endtask

  // Compute golden Cexp for current tile window (by value)
  task automatic build_Cexp(
    input int i0_t,
    input int j0_t,
    input int k_total_t,
    input int n_eff_t,
    input int m_eff_t
  );
    for (int r=0;r<SIDE;r++)
      for (int c=0;c<SIDE;c++) Cexp[r][c]=0;
    for (int r=0;r<n_eff_t;r++) begin
      for (int c=0;c<m_eff_t;c++) begin
        int sum=0;
        for (int k=0;k<k_total_t;k++) begin
          // Single-block: j0_t+c in [0..BLOCK_M-1]
          sum += A_mem[i0_t+r][k] * B_blk_mem[k][j0_t+c];
        end
        Cexp[r][c]=sum;
      end
    end
  endtask

  // Loader stub: on demand, stream A(8xT)와 B(Tx8)를 동시에 전송(동시 시작)
  task automatic stream_segment_parallel(input int i0_t, input int j0_t, input int k0_t,
                                         input int n_eff_t, input int m_eff_t, input int k_eff_t);
    int liA, liB, r, kk, c;
    int d0A,d1A,d2A,d3A;
    int d0B,d1B,d2B,d3B;
    // 동시 start 펄스
    a_ld_start=1; b_ld_start=1; @(posedge clk); a_ld_start=0; b_ld_start=0;
    liA=0; liB=0;
    fork
      // A 스트림(8xT → 16비트)
      begin
        while (liA < SIDE*T) begin
          for (int b=0;b<4;b++) begin
            r  = (liA+b) / T;
            kk = (liA+b) % T;
            if ((liA+b) >= SIDE*T)
              case(b) 0: d0A=0; 1: d1A=0; 2: d2A=0; 3: d3A=0; endcase
            else begin
              int vA = (r<n_eff_t && kk<k_eff_t) ? A_mem[i0_t+r][k0_t+kk] : 0;
              case(b) 0: d0A=vA; 1: d1A=vA; 2: d2A=vA; 3: d3A=vA; endcase
            end
          end
          a_ld_data  = pack4(d0A,d1A,d2A,d3A);
          a_ld_valid = 1; @(posedge clk);
          liA += 4;
        end
        a_ld_valid=0;
      end
      // B 스트림(Tx8 → 16비트)
      begin
        while (liB < T*SIDE) begin
          for (int b=0;b<4;b++) begin
            int idx = liB+b;
            kk = idx / SIDE; c = idx % SIDE;
            if (idx >= T*SIDE)
              case(b) 0: d0B=0; 1: d1B=0; 2: d2B=0; 3: d3B=0; endcase
            else begin
              int vB = (kk<k_eff_t && c<m_eff_t) ? B_blk_mem[k0_t+kk][j0_t+c] : 0;
              case(b) 0: d0B=vB; 1: d1B=vB; 2: d2B=vB; 3: d3B=vB; endcase
            end
          end
          b_ld_data  = pack4(d0B,d1B,d2B,d3B);
          b_ld_valid = 1; @(posedge clk);
          liB += 4;
        end
        b_ld_valid=0;
      end
    join
    @(posedge clk);
    // ld_done는 pe_array가 자체 생성(ld_done_pe)
  endtask

  // Store stub: drain_limit 개수만 수신하고 골든 비교
  // task automatic drain_and_check_tile(input string name,
  //                                     input int n_eff_t, input int m_eff_t);
  //   int need = n_eff_t * m_eff_t;
  //   int r=0, c=0, got, exp, errors=0, cnt=0;
  //   $display("-- %s drain (need=%0d) --", name, need);
  //   // wait for c_drain_req pulse to be seen at DUT
  //   @(posedge clk);
  //   while (cnt < need) begin
  //     @(posedge clk);
  //     if (c_valid) begin
  //       got = $signed(c_data);
  //       exp = Cexp[r][c];
  //       if (got!=exp) begin
  //         errors++;
  //         $display("[%s r%0d c%0d] exp=%0d got=%0d FAIL", name, r,c, exp, got);
  //       end
  //       else begin
  //         // optional terse pass prints
  //       end
  //       cnt++;
  //       if (c==m_eff_t-1) begin c=0; r=r+1; end else c=c+1;
  //     end
  //   end
  //   @(posedge clk);
  //   $display("%s summary: errors=%0d (exp=0)", name, errors);
  // endtask

  task automatic drain_and_check_tile(input string name,
                                    input int n_eff_t, input int m_eff_t);
    int need = n_eff_t * m_eff_t;
    int side_r = 0, side_c = 0;       // DUT가 내보내는 8x8 좌표
    int got_cnt = 0, errors = 0;

    $display("-- %s drain (need=%0d) --", name, need);
    @(posedge clk);

    // DUT가 보낸 전체 8x8 스트림 중 필요한 위치만 골라서 비교
    while (got_cnt < need) begin
      @(posedge clk);
      if (c_valid) begin
        int v = $signed(c_data);

        // 이 위치가 유효 타일 창 안이면 비교/집계
        if (side_r < n_eff_t && side_c < m_eff_t) begin
          int exp = Cexp[side_r][side_c];
          if (v != exp) begin
            errors++;
            $display("[%s r%0d c%0d] exp=%0d got=%0d FAIL",
                    name, side_r, side_c, exp, v);
          end
          got_cnt++;
        end

        // 8x8 좌표 전진 (DUT는 매 행 8개씩 보낸다고 가정)
        if (side_c == SIDE-1) begin
          side_c = 0;
          side_r++;
        end else begin
          side_c++;
        end
      end
    end

    @(posedge clk);
    $display("%s summary: errors=%0d (exp=0)", name, errors);
  endtask


  // 기존 reactive loader 제거: 각 테스트케이스 내부에서 load_req 이벤트에 응답

  // Testcases
  task automatic run_tc1();
    int local_i0;
    int local_j0;
    $display("\n==== TC1: n=8 m=8 k=16 ====");
    local_i0=0; local_j0=0; n_eff=8; m_eff=8; k_total=16;
    i0=local_i0; j0=local_j0;
    build_Cexp(i0,j0,k_total, n_eff,m_eff);
    start_tile=1; @(posedge clk); start_tile=0;
    // load_req 이벤트마다 세그먼트 동시 스트림
    while (!c_drain_req) begin
      @(posedge clk);
      if (load_req) begin
        k0_seg = seg_idx*T;
        stream_segment_parallel(i0, j0, k0_seg, n_eff, m_eff, k_eff);
        seg_idx++;
      end
    end
    // @(posedge clk);
    drain_and_check_tile("TC1", n_eff, m_eff);
  endtask

  task automatic run_tc2();
    int local_i0;
    int local_j0;
    seg_idx=0;
    $display("\n==== TC2: n=5 m=7 k=13 ====");
    local_i0=0; local_j0=0; n_eff=5; m_eff=7; k_total=13;
    i0=local_i0; j0=local_j0;
    build_Cexp(i0,j0,k_total, n_eff,m_eff);
    start_tile=1; @(posedge clk); start_tile=0;
    while (!c_drain_req) begin
      @(posedge clk);
      if (load_req) begin
        k0_seg = seg_idx*T;
        stream_segment_parallel(i0, j0, k0_seg, n_eff, m_eff, k_eff);
        seg_idx++;
      end
    end
    // @(posedge clk);
    drain_and_check_tile("TC2", n_eff, m_eff);
  endtask

  task automatic run_tc3_one_block();
    int j_block=0;
    seg_idx=0;
    $display("\n==== TC3: N=64 K=768 M=3072 (one 256-col block) ====");
    for (int r=0;r<N_MAX;r+=SIDE) begin
      for (int c=0;c<BLOCK_M;c+=SIDE) begin
        i0=r; j0=j_block+c; n_eff=8; m_eff=8; k_total=768;
        build_Cexp(i0,j0,k_total, n_eff,m_eff);
        start_tile=1; @(posedge clk); start_tile=0;
        while (!c_drain_req) begin
          @(posedge clk);
          if (load_req) begin
            k0_seg = seg_idx*T;
            stream_segment_parallel(i0, j0, k0_seg, n_eff, m_eff, k_eff);
            seg_idx++;
          end
        end
        // @(posedge clk);
        drain_and_check_tile($sformatf("TC3 i0=%0d j0=%0d", i0,j0), n_eff, m_eff);
      end
    end
  endtask

  // Main
  initial begin
    // Build max-size vectors for simplicity
    build_AB(N_MAX, K_MAX, BLOCK_M);
    reset_dut();
    if (RUN_TC1) run_tc1();
    if (RUN_TC2) run_tc2();
    if (RUN_TC3) run_tc3_one_block();
    $display("All tile_compute tests completed.");
    $finish;
  end

endmodule
