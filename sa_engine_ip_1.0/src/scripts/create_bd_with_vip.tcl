# ==============================================================================
# Block Design Creation Script with AXI VIP
# ==============================================================================
# Author: Jimin Hwang
# Date: 2025-11-03
#
# This script creates a Block Design with:
#   - Your sa_engine_ip
#   - AXI VIP (Slave mode) for M00_AXI (acts as DRAM)
#   - AXI VIP (Master mode) for S00_AXI (acts as PS)
#
# Usage:
#   In Vivado Tcl Console:
#   source C:/Users/sudea/capstone_design_final/sa_engine_ip_1.0/src/scripts/create_bd_with_vip.tcl
# ==============================================================================

puts "=========================================="
puts "  Creating Block Design with VIP"
puts "=========================================="

set design_name "sa_engine_ip_v1_0_bfm_1"

# ==============================================================================
# Check if Block Design already exists
# ==============================================================================
set existing_bd [get_bd_designs -quiet $design_name]
if {$existing_bd != ""} {
    puts "\[WARNING\] Block Design '$design_name' already exists!"
    puts "Do you want to delete and recreate? (You need to manually delete it in GUI)"
    puts "Exiting..."
    return
}

# ==============================================================================
# Step 1: Create Block Design
# ==============================================================================
puts "\n\[Step 1\] Creating Block Design: $design_name"
create_bd_design $design_name
puts "  \[OK\] Block Design created"

# ==============================================================================
# Step 2: Create Clock and Reset ports
# ==============================================================================
puts "\n\[Step 2\] Creating Clock and Reset ports..."

set ACLK [create_bd_port -dir I -type clk ACLK]
set_property -dict [list CONFIG.FREQ_HZ {100000000} CONFIG.PHASE {0.000} CONFIG.CLK_DOMAIN "${design_name}_ACLK"] $ACLK
puts "  \[OK\] ACLK port created (100 MHz)"

set ARESETN [create_bd_port -dir I -type rst ARESETN]
set_property -dict [list CONFIG.POLARITY {ACTIVE_LOW}] $ARESETN
puts "  \[OK\] ARESETN port created (Active Low)"

set_property CONFIG.ASSOCIATED_RESET ARESETN $ACLK

# ==============================================================================
# Step 3: Add your IP (sa_engine_ip)
# ==============================================================================
puts "\n\[Step 3\] Adding sa_engine_ip..."

# Check if IP exists in catalog
set ip_vlnv "jimin.hwang:user:sa_engine_ip:1.0"
set ip_check [get_ipdefs -all -quiet $ip_vlnv]

if {$ip_check == ""} {
    puts "  \[ERROR\] IP not found in catalog: $ip_vlnv"
    puts "  You need to add IP repository first!"
    puts "  Settings -> IP -> Repository -> Add -> sa_engine_ip_1.0 folder"
    close_bd_design [get_bd_designs $design_name]
    return
}

set sa_ip [create_bd_cell -type ip -vlnv $ip_vlnv sa_engine_ip_0]
puts "  \[OK\] sa_engine_ip_0 added"

# ==============================================================================
# Step 4: Add AXI VIP for S00_AXI (Master mode, AXI4-Lite)
# ==============================================================================
puts "\n\[Step 4\] Adding slave_0 (AXI VIP for S00_AXI)..."

set slave_vip [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 slave_0]
set_property -dict [list \
    CONFIG.PROTOCOL {AXI4LITE} \
    CONFIG.INTERFACE_MODE {MASTER} \
] $slave_vip
puts "  \[OK\] slave_0 added (Master mode, AXI4-Lite)"

# ==============================================================================
# Step 5: Add AXI VIP for M00_AXI (Slave mode, AXI4)
# ==============================================================================
puts "\n\[Step 5\] Adding master_0 (AXI VIP for M00_AXI)..."

set master_vip [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 master_0]
set_property -dict [list \
    CONFIG.PROTOCOL {AXI4} \
    CONFIG.INTERFACE_MODE {SLAVE} \
] $master_vip
puts "  \[OK\] master_0 added (Slave mode, AXI4)"

# ==============================================================================
# Step 6: Connect interfaces
# ==============================================================================
puts "\n\[Step 6\] Connecting AXI interfaces..."

# Connect slave_0 (VIP Master) -> S00_AXI (IP Slave)
connect_bd_intf_net [get_bd_intf_pins slave_0/M_AXI] [get_bd_intf_pins sa_engine_ip_0/S00_AXI]
puts "  \[OK\] slave_0/M_AXI -> sa_engine_ip_0/S00_AXI"

# Connect M00_AXI (IP Master) -> master_0 (VIP Slave)
connect_bd_intf_net [get_bd_intf_pins sa_engine_ip_0/M00_AXI] [get_bd_intf_pins master_0/S_AXI]
puts "  \[OK\] sa_engine_ip_0/M00_AXI -> master_0/S_AXI"

# ==============================================================================
# Step 7: Connect clocks and resets
# ==============================================================================
puts "\n\[Step 7\] Connecting clocks and resets..."

# All clocks connect to ACLK port
connect_bd_net [get_bd_ports ACLK] [get_bd_pins slave_0/aclk]
connect_bd_net [get_bd_ports ACLK] [get_bd_pins master_0/aclk]
connect_bd_net [get_bd_ports ACLK] [get_bd_pins sa_engine_ip_0/s00_axi_aclk]
connect_bd_net [get_bd_ports ACLK] [get_bd_pins sa_engine_ip_0/m00_axi_aclk]
puts "  \[OK\] All clocks connected to ACLK"

# All resets connect to ARESETN port
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins slave_0/aresetn]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins master_0/aresetn]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins sa_engine_ip_0/s00_axi_aresetn]
connect_bd_net [get_bd_ports ARESETN] [get_bd_pins sa_engine_ip_0/m00_axi_aresetn]
puts "  \[OK\] All resets connected to ARESETN"

# ==============================================================================
# Step 8: Assign addresses
# ==============================================================================
puts "\n\[Step 8\] Assigning addresses..."

assign_bd_address
puts "  \[OK\] Addresses assigned automatically"

# ==============================================================================
# Step 9: Validate design
# ==============================================================================
puts "\n\[Step 9\] Validating design..."

validate_bd_design
puts "  \[OK\] Design validated"

# ==============================================================================
# Step 10: Save design
# ==============================================================================
puts "\n\[Step 10\] Saving Block Design..."

save_bd_design
puts "  \[OK\] Design saved"

# ==============================================================================
# Step 11: Create HDL Wrapper
# ==============================================================================
puts "\n\[Step 11\] Creating HDL Wrapper..."

set bd_file [get_files ${design_name}.bd]
set wrapper_file [make_wrapper -files $bd_file -top]
add_files -norecurse $wrapper_file
puts "  \[OK\] HDL Wrapper created"

# ==============================================================================
# Summary
# ==============================================================================
puts "\n=========================================="
puts "  Block Design Created Successfully!"
puts "=========================================="
puts ""
puts "Design name: $design_name"
puts "Wrapper: ${design_name}_wrapper"
puts ""
puts "Components:"
puts "  - sa_engine_ip_0: Your IP"
puts "  - slave_0: AXI VIP (Master mode, AXI4-Lite) -> S00_AXI"
puts "  - master_0: AXI VIP (Slave mode, AXI4) -> M00_AXI"
puts ""
puts "Next steps:"
puts "  1. Update compile order: update_compile_order -fileset sources_1"
puts "  2. Generate output products: generate_target all \[get_files *.bd\]"
puts "  3. Run setup_sim.tcl to add testbench files"
puts "  4. Launch simulation"
puts "=========================================="

