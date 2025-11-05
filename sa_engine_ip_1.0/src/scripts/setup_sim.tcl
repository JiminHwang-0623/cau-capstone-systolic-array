# ==============================================================================
# Simulation Setup Script for Systolic Array Matrix Multiplication IP
# ==============================================================================
# Author: Jimin Hwang
# Date: 2025-11-03
#
# This script sets up the simulation environment in Vivado GUI
#
# Usage:
#   1. Open Vivado GUI
#   2. Open project: capstone_design_final.xpr
#   3. Tools -> Run Tcl Script -> setup_sim.tcl
# ==============================================================================

puts "=========================================="
puts "  Simulation Setup Script"
puts "=========================================="

# Get current project
set proj_name [current_project]
puts "Current project: $proj_name"

# ==============================================================================
# Step 1: Add testbench files to simulation fileset
# ==============================================================================
puts "\n\[Step 1\] Adding testbench files..."

set tb_dir "../../sa_engine_ip_1.0/src/tb"
set data_dir "../../sa_engine_ip_1.0/src/data"

# Add testbench SystemVerilog files
puts "  Adding sa_matmul_tb.sv..."
if {[file exists "$tb_dir/sa_matmul_tb.sv"]} {
    add_files -fileset sim_1 -norecurse "$tb_dir/sa_matmul_tb.sv"
    puts "    \[OK\] Added sa_matmul_tb.sv"
} else {
    puts "    \[ERROR\] File not found: $tb_dir/sa_matmul_tb.sv"
}

puts "  Adding tb_tasks.svh..."
if {[file exists "$tb_dir/tb_tasks.svh"]} {
    add_files -fileset sim_1 -norecurse "$tb_dir/tb_tasks.svh"
    puts "    \[OK\] Added tb_tasks.svh"
} else {
    puts "    \[ERROR\] File not found: $tb_dir/tb_tasks.svh"
}

puts "  Adding axi_vip_config.svh..."
if {[file exists "$tb_dir/axi_vip_config.svh"]} {
    add_files -fileset sim_1 -norecurse "$tb_dir/axi_vip_config.svh"
    puts "    \[OK\] Added axi_vip_config.svh"
} else {
    puts "    \[ERROR\] File not found: $tb_dir/axi_vip_config.svh"
}

# ==============================================================================
# Step 2: Set testbench as simulation top
# ==============================================================================
puts "\n\[Step 2\] Setting simulation top..."

# Note: We'll use sa_matmul_tb as top, but it requires Block Design
# For now, just set it. Block Design needs to be created manually in GUI.

set_property top sa_matmul_tb [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
puts "  Simulation top set to: sa_matmul_tb"

# ==============================================================================
# Step 3: Configure simulation settings
# ==============================================================================
puts "\n\[Step 3\] Configuring simulation settings..."

# Set simulation runtime
set_property -name {xsim.simulate.runtime} -value {100us} -objects [get_filesets sim_1]
puts "  Runtime set to: 100us"

# Set to log all signals (for debugging)
set_property -name {xsim.simulate.log_all_signals} -value {true} -objects [get_filesets sim_1]
puts "  Log all signals: enabled"

# Set simulation mode to behavioral
set_property -name {xsim.simulate.sim_mode} -value {behavioral} -objects [get_filesets sim_1]
puts "  Simulation mode: behavioral"

# ==============================================================================
# Step 4: Update compile order
# ==============================================================================
puts "\n\[Step 4\] Updating compile order..."

update_compile_order -fileset sim_1
puts "  Compile order updated"

# ==============================================================================
# Summary
# ==============================================================================
puts "\n=========================================="
puts "  Setup Complete!"
puts "=========================================="
puts ""
puts "Next steps:"
puts "  1. This script added testbench files to sim_1"
puts "  2. You need to create Block Design with VIP manually:"
puts "     a. Create Block Design -> Tools -> Create Block Design"
puts "     b. Add IP: Your sa_engine_ip"
puts "     c. Add IP: AXI VIP (2 instances)"
puts "        - slave_0: Mode=MASTER, Protocol=AXI4LITE -> connect to S00_AXI"
puts "        - master_0: Mode=SLAVE, Protocol=AXI4 -> connect to M00_AXI"
puts "     d. Create HDL Wrapper"
puts "  3. Or run launch_simulation to see if it works"
puts ""
puts "To launch simulation:"
puts "  Flow Navigator -> Simulation -> Run Simulation -> Run Behavioral Simulation"
puts "=========================================="
