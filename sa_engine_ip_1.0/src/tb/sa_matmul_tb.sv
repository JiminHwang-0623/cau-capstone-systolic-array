
`timescale 1ns / 1ps
`include "axi_vip_config.svh"
`include "tb_tasks.svh"

import axi_vip_pkg::*;
import sa_engine_ip_v1_0_bfm_1_slave_0_0_pkg::*;
import sa_engine_ip_v1_0_bfm_1_master_0_0_pkg::*;

module sa_matmul_tb();


xil_axi_uint                            error_cnt = 0;
xil_axi_uint                            comparison_cnt = 0;
axi_transaction                         wr_transaction;   
axi_transaction                         rd_transaction;   
axi_monitor_transaction                 mst_monitor_transaction;  
axi_monitor_transaction                 master_moniter_transaction_queue[$];  
xil_axi_uint                            master_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 mst_scb_transaction;  
axi_monitor_transaction                 passthrough_monitor_transaction;  
axi_monitor_transaction                 passthrough_master_moniter_transaction_queue[$];  
xil_axi_uint                            passthrough_master_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 passthrough_mst_scb_transaction;  
axi_monitor_transaction                 passthrough_slave_moniter_transaction_queue[$];  
xil_axi_uint                            passthrough_slave_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 passthrough_slv_scb_transaction;  
axi_monitor_transaction                 slv_monitor_transaction;  
axi_monitor_transaction                 slave_moniter_transaction_queue[$];  
xil_axi_uint                            slave_moniter_transaction_queue_size =0;  
axi_monitor_transaction                 slv_scb_transaction;  
xil_axi_uint                           mst_agent_verbosity = 0;  
xil_axi_uint                           slv_agent_verbosity = 0;  
xil_axi_uint                           passthrough_agent_verbosity = 0;  
bit                                     clock;
bit                                     reset;
xil_axi_ulong                           mem_rd_addr;
xil_axi_ulong                           mem_wr_addr;
bit[32-1:0]                             write_data;
bit                                     write_strb[];
bit[32-1:0]                             read_data;
sa_engine_ip_v1_0_bfm_1_slave_0_0_mst_t          slv_agent_0;
// bit error_0;  // Not used in our IP
// bit done_0;   // Not used in our IP
// bit init_0;   // Not used in our IP
integer result_slave;  
bit [31:0] S00_AXI_test_data[3:0]; 
 localparam LC_AXI_BURST_LENGTH = 8; 
 localparam LC_AXI_DATA_WIDTH = 32; 
task automatic COMPARE_DATA; 
  input [(LC_AXI_BURST_LENGTH * LC_AXI_DATA_WIDTH)-1:0]expected; 
  input [(LC_AXI_BURST_LENGTH * LC_AXI_DATA_WIDTH)-1:0]actual; 
  begin 
    if (expected === 'hx || actual === 'hx) begin 
      $display("TESTBENCH ERROR! COMPARE_DATA cannot be performed with an expected or actual vector that is all 'x'!"); 
 result_slave = 0;    $stop; 
  end 
  if (actual != expected) begin 
    $display("TESTBENCH ERROR! Data expected is not equal to actual.",     " expected = 0x%h",expected,     " actual   = 0x%h",actual); 
    result_slave = 0; 
    $stop; 
  end 
  else  
    begin 
     $display("TESTBENCH Passed! Data expected is equal to actual.", 
              " expected = 0x%h",expected,               " actual   = 0x%h",actual); 
    end 
  end 
endtask 
integer                                 i; 
integer                                 j;  
xil_axi_uint                            trans_cnt_before_switch = 48;  
xil_axi_uint                            passthrough_cmd_switch_cnt = 0;  
event                                   passthrough_mastermode_start_event;  
event                                   passthrough_mastermode_end_event;  
event                                   passthrough_slavemode_end_event;  
xil_axi_uint                            mtestID;  
xil_axi_ulong                           mtestADDR;  
xil_axi_len_t                           mtestBurstLength;  
xil_axi_size_t                          mtestDataSize;   
xil_axi_burst_t                         mtestBurstType;   
xil_axi_lock_t                          mtestLOCK;  
xil_axi_cache_t                         mtestCacheType = 0;  
xil_axi_prot_t                          mtestProtectionType = 3'b000;  
xil_axi_region_t                        mtestRegion = 4'b000;  
xil_axi_qos_t                           mtestQOS = 4'b000;  
xil_axi_data_beat                       dbeat;  
xil_axi_data_beat [255:0]               mtestWUSER;   
xil_axi_data_beat                       mtestAWUSER = 'h0;  
xil_axi_data_beat                       mtestARUSER = 0;  
xil_axi_data_beat [255:0]               mtestRUSER;      
xil_axi_uint                            mtestBUSER = 0;  
xil_axi_resp_t                          mtestBresp;  
xil_axi_resp_t[255:0]                   mtestRresp;  
bit [63:0]                              mtestWDataL; 
bit [63:0]                              mtestRDataL; 
axi_transaction                         pss_wr_transaction;   
axi_transaction                         pss_rd_transaction;   
axi_transaction                         reactive_transaction;   
axi_transaction                         rd_payload_transaction;  
axi_transaction                         wr_rand;  
axi_transaction                         rd_rand;  
axi_transaction                         wr_reactive;  
axi_transaction                         rd_reactive;  
axi_transaction                         wr_reactive2;   
axi_transaction                         rd_reactive2;  
axi_ready_gen                           bready_gen;  
axi_ready_gen                           rready_gen;  
axi_ready_gen                           awready_gen;  
axi_ready_gen                           wready_gen;  
axi_ready_gen                           arready_gen;  
axi_ready_gen                           bready_gen2;  
axi_ready_gen                           rready_gen2;  
axi_ready_gen                           awready_gen2;  
axi_ready_gen                           wready_gen2;  
axi_ready_gen                           arready_gen2;  
xil_axi_payload_byte                    data_mem[xil_axi_ulong];  
sa_engine_ip_v1_0_bfm_1_master_0_0_slv_mem_t          mst_agent_0;

  `BD_WRAPPER DUT(
      .ARESETN(reset), 
//.M00_AXI_INIT_AXI_TXN(init_0),     // Not used in our IP
//.M00_AXI_TXN_DONE(done_0),         // Not used in our IP
//.M00_AXI_ERROR(error_0),           // Not used in our IP
      .ACLK(clock) 
    ); 
  
initial begin
    slv_agent_0 = new("slave vip agent",DUT.`BD_INST_NAME.slave_0.inst.IF);
    slv_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE);
    slv_agent_0.set_agent_tag("Slave VIP");
    slv_agent_0.set_verbosity(slv_agent_verbosity);
    slv_agent_0.start_master();  // Master VIP - controls AXI4-Lite
     mst_agent_0 = new("master vip agent",DUT.`BD_INST_NAME.master_0.inst.IF);//ms  
   mst_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE); 
   mst_agent_0.set_agent_tag("Master VIP"); 
   mst_agent_0.set_verbosity(mst_agent_verbosity); 
   mst_agent_0.start_slave();  // Slave VIP - emulates memory 
     $timeformat (-12, 1, " ps", 1);
  end
  initial begin
    reset <= 1'b0;
    #200ns;
    reset <= 1'b1;
    repeat (5) @(negedge clock); 
  end
  always #5 clock <= ~clock;
  initial begin
      // Wait for reset and VIP initialization
      #200ns;
      
      // Run matrix multiplication test
      MATRIX_MULTIPLY_TEST();
      
      // Simulation complete
      #100ns;
      $display("\n========================================");
      $display("  SIMULATION FINISHED");
      $display("========================================");
      $finish;
  end
  initial begin
  #1;
    forever begin
      slv_agent_0.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end
task automatic S_AXI_TEST;  
begin   
#1; 
   $display("Sequential write transfers example similar to  AXI BFM WRITE_BURST method starts"); 
   mtestID = 0; 
   mtestADDR = 64'h00000000; 
   mtestBurstLength = 0; 
   mtestDataSize = xil_axi_size_t'(xil_clog2(32/8)); 
   mtestBurstType = XIL_AXI_BURST_TYPE_INCR;  
   mtestLOCK = XIL_AXI_ALOCK_NOLOCK;  
   mtestCacheType = 0;  
   mtestProtectionType = 0;  
   mtestRegion = 0; 
   mtestQOS = 0; 
   result_slave = 1; 
  mtestWDataL[31:0] = 32'h00000001; 
  for(int i = 0; i < 4;i++) begin 
  S00_AXI_test_data[i] <= mtestWDataL[31:0];   
  slv_agent_0.AXI4LITE_WRITE_BURST(  // Use slv_agent_0 (Master VIP)
  mtestADDR, 
  mtestProtectionType, 
  mtestWDataL, 
  mtestBresp 
  );   
  mtestWDataL[31:0] = mtestWDataL[31:0] + 1; 
  mtestADDR = mtestADDR + 64'h4; 
  end 
     $display("Sequential write transfers example similar to  AXI BFM WRITE_BURST method completes"); 
     $display("Sequential read transfers example similar to  AXI BFM READ_BURST method starts"); 
     mtestID = 0; 
     mtestADDR = 64'h00000000; 
     mtestBurstLength = 0; 
     mtestDataSize = xil_axi_size_t'(xil_clog2(32/8)); 
     mtestBurstType = XIL_AXI_BURST_TYPE_INCR;  
     mtestLOCK = XIL_AXI_ALOCK_NOLOCK;  
     mtestCacheType = 0;  
     mtestProtectionType = 0;  
     mtestRegion = 0; 
     mtestQOS = 0; 
 for(int i = 0; i < 4;i++) begin 
   slv_agent_0.AXI4LITE_READ_BURST(  // Use slv_agent_0 (Master VIP)
        mtestADDR, 
        mtestProtectionType, 
        mtestRDataL, 
        mtestRresp 
      ); 
   mtestADDR = mtestADDR + 64'h4; 
   COMPARE_DATA(S00_AXI_test_data[i],mtestRDataL); 
 end 
     $display("Sequential read transfers example similar to  AXI BFM READ_BURST method completes"); 
     $display("Sequential read transfers example similar to  AXI VIP READ_BURST method completes"); 
     $display("---------------------------------------------------------"); 
     $display("EXAMPLE TEST S00_AXI: PTGEN_TEST_FINISHED!"); 
     if ( result_slave ) begin                    
       $display("PTGEN_TEST: PASSED!");                  
     end    else begin                                       
       $display("PTGEN_TEST: FAILED!");                  
     end                                
     $display("---------------------------------------------------------"); 
  end 
endtask  

//==============================================================================
// Main Test Task: Matrix Multiplication Test
//==============================================================================
// Description:
//   Complete end-to-end test for 8x8 matrix multiplication using systolic array.
//   
//   Test Flow:
//     1. Load Matrix A and B to VIP memory (DRAM simulation)
//     2. Configure IP registers (READ_BASE, WRITE_BASE)
//     3. Start computation (write START bit)
//     4. Wait for DONE signal
//     5. Verify results against golden reference
//
//   Memory Layout:
//     0x00000000 ~ 0x0000003F: Matrix A (64 bytes, INT8)
//     0x00000040 ~ 0x0000007F: Matrix B (64 bytes, INT8)
//     0x00000400 ~ 0x000004FF: Result C (256 bytes, INT32)
//==============================================================================
task MATRIX_MULTIPLY_TEST;
begin
    $display("\n");
    $display("========================================");
    $display("  Matrix Multiplication Test Start");
    $display("========================================");
    
    //==========================================================================
    // Step 1: Load test data to VIP memory
    //==========================================================================
    $display("\n[Step 1] Loading test data to VIP memory...");
    $display("  File: matrix_A_B.hex");
    $display("  Base Address: 0x00000000");
    load_matrix_file("matrix_A_B.hex", 64'h00000000, mst_agent_0);
    
    //==========================================================================
    // Step 2: Configure IP registers
    //==========================================================================
    $display("\n[Step 2] Configuring IP registers...");
    
    // READ_BASE register (0x04): Where to read input matrices
    write_register(32'h00000004, 32'h00000000, slv_agent_0);
    $display("  READ_BASE  = 0x00000000 (Matrix A starts here)");
    
    // WRITE_BASE register (0x08): Where to write result matrix
    write_register(32'h00000008, 32'h00000400, slv_agent_0);
    $display("  WRITE_BASE = 0x00000400 (Result C goes here)");
    
    //==========================================================================
    // Step 3: Start computation
    //==========================================================================
    $display("\n[Step 3] Starting matrix multiplication...");
    
    // CONTROL register (0x00): Write 1 to START bit
    write_register(32'h00000000, 32'h00000001, slv_agent_0);
    $display("  START bit set");
    
    // Clear START bit (pulse mode)
    write_register(32'h00000000, 32'h00000000, slv_agent_0);
    $display("  START bit cleared (pulse mode)");
    $display("  IP is now reading matrices, computing, and writing results...");
    
    //==========================================================================
    // Step 4: Wait for computation to complete
    //==========================================================================
    $display("\n[Step 4] Waiting for DONE signal...");
    wait_for_done(slv_agent_0);
    $display("  Computation completed!");
    
    //==========================================================================
    // Step 5: Verify results
    //==========================================================================
    $display("\n[Step 5] Verifying results against golden reference...");
    $display("  Golden file: golden_result.hex");
    $display("  Result address: 0x00000400");
    $display("  Number of elements: 64 (8x8 matrix)");
    
    verify_results("golden_result.hex", 64'h00000400, 64, mst_agent_0);
    
    //==========================================================================
    // Test Complete
    //==========================================================================
    $display("\n========================================");
    $display("  Matrix Multiplication Test Complete");
    $display("========================================");
    $display("");
end
endtask

endmodule
