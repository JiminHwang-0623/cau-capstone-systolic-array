vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_11
vlib modelsim_lib/msim/processing_system7_vip_v1_0_13
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_25
vlib modelsim_lib/msim/fifo_generator_v13_2_6
vlib modelsim_lib/msim/axi_data_fifo_v2_1_24
vlib modelsim_lib/msim/axi_crossbar_v2_1_26
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_25
vlib modelsim_lib/msim/axi_clock_converter_v2_1_24
vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_25
vlib modelsim_lib/msim/axi_mmu_v2_1_23

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 modelsim_lib/msim/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 modelsim_lib/msim/processing_system7_vip_v1_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 modelsim_lib/msim/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 modelsim_lib/msim/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 modelsim_lib/msim/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 modelsim_lib/msim/axi_crossbar_v2_1_26
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_25 modelsim_lib/msim/axi_protocol_converter_v2_1_25
vmap axi_clock_converter_v2_1_24 modelsim_lib/msim/axi_clock_converter_v2_1_24
vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_25 modelsim_lib/msim/axi_dwidth_converter_v2_1_25
vmap axi_mmu_v2_1_23 modelsim_lib/msim/axi_mmu_v2_1_23

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6  -93 \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/dbc4/hdl/sa_engine_ip_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/dbc4/src/FSM.sv" \
"../../../bd/design_1/ipshared/dbc4/src/RF.sv" \
"../../../bd/design_1/ipshared/dbc4/src/SystolicArray.sv" \
"../../../bd/design_1/ipshared/dbc4/src/X_REG.sv" \
"../../../bd/design_1/ipshared/dbc4/src/axi_dma_ctrl.sv" \
"../../../bd/design_1/ipshared/dbc4/src/controller.sv" \
"../../../bd/design_1/ipshared/dbc4/hdl/dma_read.sv" \
"../../../bd/design_1/ipshared/dbc4/hdl/dma_write.sv" \
"../../../bd/design_1/ipshared/dbc4/src/dpram_wrapper.sv" \
"../../../bd/design_1/ipshared/dbc4/src/hPE.sv" \
"../../../bd/design_1/ipshared/dbc4/src/sa_core.sv" \
"../../../bd/design_1/ipshared/dbc4/hdl/sa_core_pipeline.sv" \
"../../../bd/design_1/ipshared/dbc4/src/tile8x8.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/dbc4/hdl/sa_engine_ip_v1_0.v" \
"../../../bd/design_1/ip/design_1_sa_engine_ip_0_0/sim/design_1_sa_engine_ip_0_0.v" \

vlog -work axi_protocol_converter_v2_1_25  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_24  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/23c0/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_25  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/38b4/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_23  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/53bb/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../capstone_design_final.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+C:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_s00_mmu_0/sim/design_1_s00_mmu_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

