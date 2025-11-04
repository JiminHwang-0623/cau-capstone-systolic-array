`ifndef TB_TASKS_SVH
`define TB_TASKS_SVH

//==============================================================================
// Testbench Helper Tasks for Systolic Array Matrix Multiplication
//==============================================================================
// Author: Jimin Hwang
// Date: 2025-11-03
//
// This file contains reusable tasks for AXI VIP-based testbench:
//   1. write_register()    - Write to AXI4-Lite register
//   2. read_register()     - Read from AXI4-Lite register
//   3. load_matrix_file()  - Load .hex file into VIP memory
//   4. wait_for_done()     - Poll DONE status bit
//   5. verify_results()    - Compare results with golden reference
//==============================================================================

// Import AXI VIP packages
import axi_vip_pkg::*;
import sa_engine_ip_v1_0_bfm_1_slave_0_0_pkg::*;
import sa_engine_ip_v1_0_bfm_1_master_0_0_pkg::*;

//------------------------------------------------------------------------------
// Register Map Constants
//------------------------------------------------------------------------------
localparam logic [31:0] STATUS_REG_ADDR = 32'h0000_0000;

//==============================================================================
// Task 1: Write to AXI4-Lite Register
//==============================================================================
// Description:
//   Writes a 32-bit value to the specified AXI4-Lite register address.
//   Uses Slave VIP (configured as Master mode) to send write transaction.
//
// Parameters:
//   addr - 32-bit register address (byte-aligned)
//   data - 32-bit data to write
//
// Usage:
//   write_register(32'h00, 32'h00000001);  // Write 1 to address 0x00
//==============================================================================
task automatic write_register(
    input [31:0] addr,
    input [31:0] data,
    ref sa_engine_ip_v1_0_bfm_1_slave_0_0_mst_t agent
);
    xil_axi_resp_t resp;
    bit [63:0] wdata_temp;
    
    wdata_temp = data;  // Convert to 64-bit for VIP API
    
    // Send AXI4-Lite Write transaction
    agent.AXI4LITE_WRITE_BURST(
        .addr(addr),                // Write address
        .prot(3'b000),              // Protection type (normal access)
        .data(wdata_temp),          // Write data
        .resp(resp)                 // Response
    );
    
    // Check response
    if (resp != XIL_AXI_RESP_OKAY) begin
        $error("[%0t] Write Register FAILED! Addr=0x%0h, Resp=%0d", $time, addr, resp);
    end else begin
        $display("[%0t] Write Register: Addr=0x%08X, Data=0x%08X", $time, addr, data);
    end
endtask

//==============================================================================
// Task 2: Read from AXI4-Lite Register
//==============================================================================
// Description:
//   Reads a 32-bit value from the specified AXI4-Lite register address.
//   Uses Slave VIP (configured as Master mode) to send read transaction.
//
// Parameters:
//   addr - 32-bit register address (byte-aligned)
//   data - Output: 32-bit data read from register
//
// Usage:
//   read_register(32'h00, status);  // Read STATUS register
//==============================================================================
task automatic read_register(
    input  [31:0] addr,
    output [31:0] data,
    ref sa_engine_ip_v1_0_bfm_1_slave_0_0_mst_t agent
);
    xil_axi_resp_t resp;
    bit [63:0] rdata_temp;
    
    // Send AXI4-Lite Read transaction
    agent.AXI4LITE_READ_BURST(
        .addr(addr),                // Read address
        .prot(3'b000),              // Protection type (normal access)
        .data(rdata_temp),          // Read data
        .resp(resp)                 // Response
    );
    
    // Extract 32-bit data
    data = rdata_temp[31:0];
    
    // Check response
    if (resp != XIL_AXI_RESP_OKAY) begin
        $error("[%0t] Read Register FAILED! Addr=0x%0h, Resp=%0d", $time, addr, resp);
    end else begin
        $display("[%0t] Read Register:  Addr=0x%08X, Data=0x%08X", $time, addr, data);
    end
endtask

//==============================================================================
// Task 3: Load Matrix Data from .hex File to VIP Memory
//==============================================================================
// Description:
//   Reads a .hex file and loads the data into Master VIP memory using
//   backdoor access. The file format is 4-digit hex per line (2 bytes).
//
//   File format example (matrix_A_B.hex):
//     E65C  <- Byte 0: 0xE6, Byte 1: 0x5C
//     61DF  <- Byte 2: 0x61, Byte 3: 0xDF
//     ...
//
// Parameters:
//   filename  - Path to .hex file (relative to simulation directory)
//   base_addr - Starting address in VIP memory (64-bit)
//
// Usage:
//   load_matrix_file("../data/matrix_A_B.hex", 64'h00000000);
//==============================================================================
task automatic load_matrix_file(
    input string filename,
    input [63:0] base_addr,
    ref sa_engine_ip_v1_0_bfm_1_master_0_0_slv_mem_t agent
);
    int fd;
    bit [15:0] hex_value;
    bit [15:0] hex_values[2];  // Buffer for two 16-bit values
    bit [31:0] word_data;
    int byte_count = 0;
    int scan_result;
    int value_idx = 0;
    bit [63:0] word_addr;
    
    $display("[%0t] Loading file: %s", $time, filename);
    
    // Open file
    fd = $fopen(filename, "r");
    if (fd == 0) begin
        $fatal(1, "[%0t] ERROR: Cannot open file '%s'", $time, filename);
    end
    
    // Read line by line: 2 lines = 1 word (32-bit)
    while (!$feof(fd)) begin
        // Get one line (16-bit hex value)
        scan_result = $fscanf(fd, "%h\n", hex_value);
        
        if (scan_result == 1) begin
            hex_values[value_idx] = hex_value;
            value_idx++;
            byte_count += 2;
            
            // When we have 2 values (4 bytes), combine into 32-bit word
            if (value_idx >= 2) begin
                word_addr = base_addr + (byte_count - 4);
                // Big-endian: {Line2[31:16], Line1[15:0]}
                word_data = {hex_values[1], hex_values[0]};
                agent.mem_model.backdoor_memory_write(word_addr, word_data);
                value_idx = 0;
            end
        end
    end
    
    // Write remaining value (if odd number of lines)
    if (value_idx > 0) begin
        word_addr = base_addr + (byte_count - 2);
        word_data = {16'h0000, hex_values[0]};
        agent.mem_model.backdoor_memory_write(word_addr, word_data);
    end
    
    $fclose(fd);
    $display("[%0t] Loaded %0d bytes to VIP memory at 0x%0h", $time, byte_count, base_addr);
endtask

//==============================================================================
// Task 4: Wait for DONE Signal
//==============================================================================
// Description:
//   Polls the STATUS register (address 0x00) until DONE bit (bit[1]) is set.
//   Includes timeout protection to prevent infinite loops.
//
// Register Map:
//   STATUS[31:0] @ 0x00
//     bit[0]: START latch (write-only, reads return last written value)
//     bit[1]: DONE (read-only)
//     bit[2]: BUSY (read-only)
//     bit[3]: ERROR (read-only)
//
// Timeout:
//   Max iterations: 10000
//   Wait per iteration: 100ns
//   Total timeout: ~1ms
//
// Usage:
//   wait_for_done();
//==============================================================================
task automatic wait_for_done(
    ref sa_engine_ip_v1_0_bfm_1_slave_0_0_mst_t agent
);
    bit [31:0] status;
    int timeout_cnt = 0;
    const int MAX_TIMEOUT = 10000;
    
    $display("[%0t] Waiting for DONE signal...", $time);
    
    forever begin
        // Read STATUS register
        read_register(STATUS_REG_ADDR, status, agent);
        
        // Check DONE bit (bit[1])
        if (status[1] == 1'b1) begin
            $display("[%0t] DONE signal detected! (STATUS=0x%08X)", $time, status);
            return;
        end
        
        // Timeout check
        timeout_cnt++;
        if (timeout_cnt >= MAX_TIMEOUT) begin
            $error("[%0t] TIMEOUT! DONE signal not detected after %0d iterations", $time, MAX_TIMEOUT);
            $error("[%0t] Last STATUS=0x%08X", $time, status);
            $fatal(1, "Simulation aborted due to timeout");
        end
        
        // Wait before next poll
        #100ns;
    end
endtask

//==============================================================================
// Task 5: Verify Results Against Golden Reference
//==============================================================================
// Description:
//   Reads golden result from file and compares with data in VIP memory.
//   Reports pass/fail count and displays mismatches.
//
// File Format:
//   golden_result.hex contains 64 lines of 8-digit hex (INT32 values)
//   Example:
//     00004B1E  <- Result[0] = 0x00004B1E
//     FFFF9FCC  <- Result[1] = 0xFFFF9FCC (negative)
//     ...
//
// Parameters:
//   golden_file  - Path to golden result file
//   result_addr  - Starting address in VIP memory where results are stored
//   num_elements - Number of INT32 elements to compare (default: 64)
//
// Usage:
//   verify_results("../data/golden_result.hex", 64'h00000400, 64);
//==============================================================================
task automatic verify_results(
    input string golden_file,
    input [63:0] result_addr,
    input int num_elements,
    ref sa_engine_ip_v1_0_bfm_1_master_0_0_slv_mem_t agent
);
    int fd;
    bit [31:0] golden_value;
    bit [31:0] hw_result;
    int pass_cnt = 0;
    int fail_cnt = 0;
    int scan_result;
    
    $display("[%0t] ========================================", $time);
    $display("[%0t] Starting Result Verification", $time);
    $display("[%0t] ========================================", $time);
    
    // Open golden file
    fd = $fopen(golden_file, "r");
    if (fd == 0) begin
        $fatal(1, "[%0t] ERROR: Cannot open golden file '%s'", $time, golden_file);
    end
    
    // Compare each element
    for (int i = 0; i < num_elements; i++) begin
        // Read golden value from file
        scan_result = $fscanf(fd, "%h\n", golden_value);
        if (scan_result != 1) begin
            $error("[%0t] ERROR: Failed to read golden value #%0d", $time, i);
            break;
        end
        
        // Read hardware result from VIP memory (word-aligned read)
        hw_result = agent.mem_model.backdoor_memory_read(result_addr + i*4);
        
        // Compare
        if (hw_result == golden_value) begin
            pass_cnt++;
            $display("[%0t] [PASS] Element[%02d]: Expected=0x%08X, Got=0x%08X", 
                     $time, i, golden_value, hw_result);
        end else begin
            fail_cnt++;
            $error("[%0t] [FAIL] Element[%02d]: Expected=0x%08X, Got=0x%08X", 
                   $time, i, golden_value, hw_result);
        end
    end
    
    $fclose(fd);
    
    // Summary
    $display("[%0t] ========================================", $time);
    $display("[%0t] Verification Summary", $time);
    $display("[%0t] ========================================", $time);
    $display("[%0t] Total Elements: %0d", $time, num_elements);
    $display("[%0t] PASS: %0d", $time, pass_cnt);
    $display("[%0t] FAIL: %0d", $time, fail_cnt);
    $display("[%0t] ========================================", $time);
    
    if (fail_cnt == 0) begin
        $display("[%0t] [SUCCESS] ALL TESTS PASSED!", $time);
    end else begin
        $error("[%0t] [FAILURE] %0d TESTS FAILED!", $time, fail_cnt);
        $fatal(1, "Simulation failed due to result mismatch");
    end
endtask

`endif // TB_TASKS_SVH

