vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_11
vlib activehdl/processing_system7_vip_v1_0_13
vlib activehdl/xil_defaultlib
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_25
vlib activehdl/fifo_generator_v13_2_6
vlib activehdl/axi_data_fifo_v2_1_24
vlib activehdl/axi_crossbar_v2_1_26
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_protocol_converter_v2_1_25
vlib activehdl/axi_clock_converter_v2_1_24
vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/axi_dwidth_converter_v2_1_25
vlib activehdl/axi_mmu_v2_1_23

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 activehdl/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 activehdl/processing_system7_vip_v1_0_13
vmap xil_defaultlib activehdl/xil_defaultlib
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 activehdl/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 activehdl/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 activehdl/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 activehdl/axi_crossbar_v2_1_26
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_25 activehdl/axi_protocol_converter_v2_1_25
vmap axi_clock_converter_v2_1_24 activehdl/axi_clock_converter_v2_1_24
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_25 activehdl/axi_dwidth_converter_v2_1_25
vmap axi_mmu_v2_1_23 activehdl/axi_mmu_v2_1_23

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -sv2k12 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/2293/hdl/sa_engine_ip_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/2293/src/X_REG.sv" \
"../../../bd/design_1/ipshared/2293/src/axi_dma_ctrl.sv" \
"../../../bd/design_1/ipshared/2293/hdl/dma_read.sv" \
"../../../bd/design_1/ipshared/2293/hdl/dma_write.sv" \
"../../../bd/design_1/ipshared/2293/src/dpram_wrapper.sv" \
"../../../bd/design_1/ipshared/2293/src/hPE.sv" \
"../../../bd/design_1/ipshared/2293/src/sa_PE_wrapper.sv" \
"../../../bd/design_1/ipshared/2293/src/sa_RF.sv" \
"../../../bd/design_1/ipshared/2293/src/sa_controller.sv" \
"../../../bd/design_1/ipshared/2293/src/sa_core.sv" \
"../../../bd/design_1/ipshared/2293/hdl/sa_core_pipeline.sv" \
"../../../bd/design_1/ipshared/2293/src/sa_unit.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/2293/hdl/sa_engine_ip_v1_0.v" \
"../../../bd/design_1/ip/design_1_sa_engine_ip_0_0/sim/design_1_sa_engine_ip_0_0.v" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_24  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/23c0/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_25  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/38b4/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_23  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/53bb/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_s00_mmu_0/sim/design_1_s00_mmu_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

