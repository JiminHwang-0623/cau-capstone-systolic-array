`timescale 1ns / 1ns

module sa_engine_tb;

localparam MEM_ADDRW = 23;
localparam MEM_DW = 16;
localparam A = 32;
localparam D = 32;
localparam I = 4;
localparam L = 8;
localparam M = D/8;

parameter IFM_FILE = "matrix_A_B.hex"; 

// Clock
parameter CLK_PERIOD = 10;   //100MHz
reg clk;
reg rstn;

initial begin
   clk = 1'b1;
   forever #(CLK_PERIOD/2) clk = ~clk;
end

//AXI Master IF0 for input/out access
wire  [I-1:0]     M_AWID;       // Address ID
wire  [A-1:0]     M_AWADDR;     // Address Write
wire  [L-1:0]     M_AWLEN;      // Transfer length
wire  [2:0]       M_AWSIZE;     // Transfer width
wire  [1:0]       M_AWBURST;    // Burst type
wire  [1:0]       M_AWLOCK;     // Atomic access information
wire  [3:0]       M_AWCACHE;    // Cachable/bufferable infor
wire  [2:0]       M_AWPROT;     // Protection info
wire              M_AWVALID;    // address/control valid handshake
wire              M_AWREADY;
wire  [I-1:0]     M_WID;        // Write ID
wire  [D-1:0]     M_WDATA;      // Write Data bus
wire  [M-1:0]     M_WSTRB;      // Write Data byte lane strobes
wire              M_WLAST;      // Last beat of a burst transfer
wire              M_WVALID;     // Write data valid
wire              M_WREADY;     // Write data ready
wire [I-1:0]      M_BID;        // buffered response ID
wire [1:0]        M_BRESP;      // Buffered write response
wire              M_BVALID;     // Response info valid
wire              M_BREADY;     // Response info ready (to slave)
wire  [I-1:0]     M_ARID;       // Read addr ID
wire  [A-1:0]     M_ARADDR;     // Address Read 
wire  [L-1:0]     M_ARLEN;      // Transfer length
wire  [2:0]       M_ARSIZE;     // Transfer width
wire  [1:0]       M_ARBURST;    // Burst type
wire  [1:0]       M_ARLOCK;     // Atomic access information
wire  [3:0]       M_ARCACHE;    // Cachable/bufferable infor
wire  [2:0]       M_ARPROT;     // Protection info
wire              M_ARVALID;    // address/control valid handshake
wire              M_ARREADY;
wire  [I-1:0]     M_RID;        // Read ID
wire  [D-1:0]     M_RDATA;      // Read data bus
wire  [1:0]       M_RRESP;      // Read response
wire              M_RLAST;      // Last beat of a burst transfer
wire              M_RVALID;     // Read data valid 
wire              M_RREADY;     // Read data ready (to Slave)

<<<<<<< HEAD
wire network_done;
wire network_done_led;

=======
>>>>>>> 5a1be21c592a9e5cddb782db4e28fd23eae160df
// Memory ports for input (activation)
wire [MEM_ADDRW-1:0]   mem_addr;
wire                   mem_we;
wire [MEM_DW-1:0]      mem_di;
wire [MEM_DW-1:0]      mem_do;

<<<<<<< HEAD

=======
>>>>>>> 5a1be21c592a9e5cddb782db4e28fd23eae160df
//--------------------------------------------------------------------
//AXI Slave External Memory: Input
//--------------------------------------------------------------------
axi_sram_if #(  //New
   .MEM_ADDRW(MEM_ADDRW), .MEM_DW(MEM_DW),
   .A(A), .I(I), .L(L), .D(D), .M(M))
u_axi_ext_mem_if_input(
   .ACLK(clk), .ARESETn(rstn),
    
   //AXI Slave IF
   .AWID	(M_AWID		),       // Address ID
   .AWADDR	(M_AWADDR	),     // Address Write
   .AWLEN	(M_AWLEN	   ),      // Transfer length
   .AWSIZE	(M_AWSIZE	),     // Transfer width
   .AWBURST	(M_AWBURST	),    // Burst type
   .AWLOCK	(M_AWLOCK	),     // Atomic access information
   .AWCACHE	(M_AWCACHE	),    // Cachable/bufferable infor
   .AWPROT	(M_AWPROT	),     // Protection info
   .AWVALID	(M_AWVALID	),    // address/control valid handshake
   .AWREADY	(M_AWREADY	),
   //Write data channel
   .WID		(M_WID		),        // Write ID
   .WDATA	(M_WDATA	   ),      // Write Data bus
   .WSTRB	(M_WSTRB	   ),      // Write Data byte lane strobes
   .WLAST	(M_WLAST	   ),      // Last beat of a burst transfer
   .WVALID	(M_WVALID	),     // Write data valid
   .WREADY	(M_WREADY	),     // Write data ready
    //Write response channel
   .BID		(M_BID		),        // buffered response ID
   .BRESP	(M_BRESP	   ),      // Buffered write response
   .BVALID	(M_BVALID	),     // Response info valid
   .BREADY	(M_BREADY	),     // Response info ready (from Master)
      
   .ARID    (M_ARID		),   // Read addr ID
   .ARADDR  (M_ARADDR	),   // Address Read 
   .ARLEN   (M_ARLEN	   ),   // Transfer length
   .ARSIZE  (M_ARSIZE	),   // Transfer width
   .ARBURST (M_ARBURST	),   // Burst type
   .ARLOCK  (M_ARLOCK	),   // Atomic access information
   .ARCACHE (M_ARCACHE	),   // Cachable/bufferable infor
   .ARPROT  (M_ARPROT	),   // Protection info
   .ARVALID (M_ARVALID	),   // address/control valid handshake
   .ARREADY (M_ARREADY	),
   .RID     (M_RID		),   // Read ID
   .RDATA   (M_RDATA	   ),   // Read data bus
   .RRESP   (M_RRESP	   ),   // Read response
   .RLAST   (M_RLAST	   ),   // Last beat of a burst transfer
   .RVALID  (M_RVALID	),   // Read data valid 
   .RREADY  (M_RREADY	),   // Read data ready (to Slave)

   //Interface to SRAM 
   .mem_addr(mem_addr	),
   .mem_we  (mem_we		),
   .mem_di  (mem_di		),
   .mem_do  (mem_do		)
);


// Input
// IMEM for SIM
// Inputs
sram #(
   .FILE_NAME(IFM_FILE),
   .SIZE(2**MEM_ADDRW),
   .WL_ADDR(MEM_ADDRW),
   .WL_DATA(MEM_DW))
u_ext_mem_input (
   .clk   (clk		   ),
   .rst   (rstn		),
   .addr  (mem_addr	),
   .wdata (mem_di	   ),
   .rdata (mem_do	   ),
   .ena   (1'b0		)     // Read only
   );

//--------------------------------------------------------------------
// CNN Accelerator
//--------------------------------------------------------------------
reg [31:0] i_0;
reg [31:0] i_1;
reg [31:0] i_2;
	
sa_engine_top #(
    .AXI_WIDTH_AD(A),
    .AXI_WIDTH_ID(4),
    .AXI_WIDTH_DA(D),
    .AXI_WIDTH_DS(M),
    .MEM_BASE_ADDR(2048),
    .MEM_DATA_BASE_ADDR(2048)
)
u_sa_engine_top
(
    .clk(clk),
    .rstn(rstn),
       
    .i_ctrl_reg0(i_0     ), // network_start // {debug_big(1), debug_buf_select(16), debug_buf_addr(9)}
    .i_ctrl_reg1(i_1     ), // Read_address (INPUT)
    .i_ctrl_reg2(i_2     ), // Write_address
    .i_ctrl_reg3(32'd0   ), // Reserved

    .M_ARVALID	(M_ARVALID),
    .M_ARREADY	(M_ARREADY),
    .M_ARADDR	(M_ARADDR ),
    .M_ARID		(M_ARID	 ),
    .M_ARLEN	(M_ARLEN	 ),
    .M_ARSIZE	(M_ARSIZE ),
    .M_ARBURST	(M_ARBURST),
    .M_ARLOCK	(M_ARLOCK ),
    .M_ARCACHE	(M_ARCACHE),
    .M_ARPROT	(M_ARPROT ),
    .M_ARQOS	(			 ),
    .M_ARREGION(			 ),
    .M_ARUSER	(			 ),
    .M_RVALID	(M_RVALID ),
    .M_RREADY	(M_RREADY ),
    .M_RDATA	(M_RDATA	 ),
    .M_RLAST	(M_RLAST	 ),
    .M_RID		(M_RID	 ),
    .M_RUSER	(			 ),
    .M_RRESP	(M_RRESP	 ),
    
    .M_AWVALID	(M_AWVALID),
    .M_AWREADY	(M_AWREADY),
    .M_AWADDR	(M_AWADDR ),
    .M_AWID		(M_AWID	 ),
    .M_AWLEN	(M_AWLEN	 ),
    .M_AWSIZE	(M_AWSIZE ),
    .M_AWBURST	(M_AWBURST),
    .M_AWLOCK	(M_AWLOCK ),
    .M_AWCACHE	(M_AWCACHE),
    .M_AWPROT	(M_AWPROT ),
    .M_AWQOS	(			 ),
    .M_AWREGION(			 ),
    .M_AWUSER	(			 ),
    
    .M_WVALID	(M_WVALID ),
    .M_WREADY	(M_WREADY ),
    .M_WDATA	(M_WDATA	 ),
    .M_WSTRB	(M_WSTRB	 ),
    .M_WLAST	(M_WLAST	 ),
    .M_WID		(M_WID	 ),
    .M_WUSER	(			 ),
    
    .M_BVALID	(M_BVALID ),
    .M_BREADY	(M_BREADY ),
    .M_BRESP	(M_BRESP	 ),
    .M_BID		(M_BID	 ),
    .M_BUSER	(			 ),
    
    .network_done(network_done),
    .network_done_led(network_done_led)
);


initial begin
   rstn = 1'b0;         // Reset, low active   
   i_0 = 0;
   i_1 = 0;
   i_2 = 1280*720;
`ifdef DEBUG
   resume_counter = 0;
`endif
`ifdef PRELOAD
   preload = 1'b0;
   preload_layer_idx = 4;
`endif
   
   #(4*CLK_PERIOD) rstn = 1'b1; 
   #(100*CLK_PERIOD) 
        @(posedge clk)
            i_0 = 32'd1;
    `ifdef PRELOAD
            preload <= 1'b1;
            preload_layer_idx <= 4;
    `endif
   #(100*CLK_PERIOD) 
         @(posedge clk)
            i_0 = 32'd0;    
   while(!network_done) begin 
         #(128*CLK_PERIOD) @(posedge clk);
   end
   $display("network_done received!");
   #(1000*CLK_PERIOD) 
         @(posedge clk) $stop;
end

<<<<<<< HEAD
// ===== Verilog-2001 safe baseline monitor (ints only) =====
integer fd;
reg started, finished;
integer cyc, start_cyc, done_cyc;
integer rd_bursts, wr_bursts, rd_beats, wr_beats;
integer rd_bytes,  wr_bytes;
reg printed_once;

// 전역 초기화
initial begin
  started = 1'b0;  finished = 1'b0;
  cyc = 0; start_cyc = 0; done_cyc = 0;
  rd_bursts = 0; wr_bursts = 0; rd_beats = 0; wr_beats = 0;
  rd_bytes = 0; wr_bytes = 0;
  printed_once = 1'b0;
end

// 사이클 카운터
always @(posedge clk or negedge rstn) begin
  if (!rstn) cyc <= 0;
  else        cyc <= cyc + 1;
end

// 카운트 & 타임스탬프
always @(posedge clk or negedge rstn) begin
  if (!rstn) begin
    started   <= 1'b0; finished <= 1'b0;
    start_cyc <= 0;    done_cyc  <= 0;
    rd_bursts <= 0;    wr_bursts <= 0;
    rd_beats  <= 0;    wr_beats  <= 0;
  end else begin
    // 시작: 첫 Read 주소 핸드셰이크 시점
    if (!started && (M_ARVALID && M_ARREADY)) begin
      started   <= 1'b1;
      start_cyc <= cyc;
    end
    // 종료: network_done
    if (!finished && network_done) begin
      finished <= 1'b1;
      done_cyc <= cyc;
    end

    // 핸드셰이크 카운트
    if (M_ARVALID && M_ARREADY) rd_bursts <= rd_bursts + 1;
    if (M_AWVALID && M_AWREADY) wr_bursts <= wr_bursts + 1;
    if (M_RVALID  && M_RREADY ) rd_beats  <= rd_beats  + 1;
    if (M_WVALID  && M_WREADY ) wr_beats  <= wr_beats  + 1;
  end
end

// 첫 burst 정렬 정보 한번만 출력(옵션)
always @(posedge clk or negedge rstn) begin
  if (!rstn) printed_once <= 1'b0;
  else if (!printed_once && (M_ARVALID && M_ARREADY)) begin
    $display("ARADDR LSB[6:0]=0x%0h  ARLEN=%0d", M_ARADDR[6:0], M_ARLEN);
    printed_once <= 1'b1;
  end
end

// 완료 시 콘솔 + CSV 출력 (정수만)
initial begin
  fd = $fopen("baseline.csv", "w");
  $fdisplay(fd, "metric,value");
  wait(finished);

  rd_bytes = rd_beats * (D/8);
  wr_bytes = wr_beats * (D/8);

  $display("\n=== Day2 Baseline (.v safe) ===");
  $display("cycles(total)    = %0d", (done_cyc - start_cyc));
  $display("read : bursts=%0d beats=%0d bytes=%0d",
            rd_bursts, rd_beats, rd_bytes);
  $display("write: bursts=%0d beats=%0d bytes=%0d",
            wr_bursts, wr_beats, wr_bytes);

  $fdisplay(fd, "cycles,%0d", (done_cyc - start_cyc));
  $fdisplay(fd, "rd_bursts,%0d", rd_bursts);
  $fdisplay(fd, "wr_bursts,%0d", wr_bursts);
  $fdisplay(fd, "rd_beats,%0d",  rd_beats);
  $fdisplay(fd, "wr_beats,%0d",  wr_beats);
  $fdisplay(fd, "rd_bytes,%0d",  rd_bytes);
  $fdisplay(fd, "wr_bytes,%0d",  wr_bytes);
  $fclose(fd);

  $stop; // 한 번 찍고 멈춤
end
// ==========================================================
=======
>>>>>>> 5a1be21c592a9e5cddb782db4e28fd23eae160df

endmodule