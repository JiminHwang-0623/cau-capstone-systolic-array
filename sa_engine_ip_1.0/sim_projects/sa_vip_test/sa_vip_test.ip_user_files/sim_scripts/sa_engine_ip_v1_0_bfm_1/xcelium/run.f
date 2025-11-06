-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../sa_vip_test.gen/sources_1/bd/sa_engine_ip_v1_0_bfm_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ip/sa_engine_ip_v1_0_bfm_1_slave_0_0/sim/sa_engine_ip_v1_0_bfm_1_slave_0_0_pkg.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_11 -sv \
  "../../../../sa_vip_test.gen/sources_1/bd/sa_engine_ip_v1_0_bfm_1/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ip/sa_engine_ip_v1_0_bfm_1_slave_0_0/sim/sa_engine_ip_v1_0_bfm_1_slave_0_0.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ip/sa_engine_ip_v1_0_bfm_1_master_0_0/sim/sa_engine_ip_v1_0_bfm_1_master_0_0_pkg.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ip/sa_engine_ip_v1_0_bfm_1_master_0_0/sim/sa_engine_ip_v1_0_bfm_1_master_0_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/axi/sa_engine_ip_v1_0_S00_AXI.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/pe/X_REG.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/pkg/sa_params_pkg.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/axi/axi_dma_ctrl.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/axi/dma_read.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/axi/dma_write.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/mem/dpram_wrapper.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/pe/hPE.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/pe/sa_PE_wrapper.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/pe/sa_RF.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/pe/sa_controller.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/core/sa_core.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/core/sa_core_pipeline.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/pe/sa_unit.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/core/tile_compute.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/core/tile_loader.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/core/tile_orchestrator.sv" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/core/tile_store.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ipshared/1d96/rtl/top/sa_engine_ip_v1_0.v" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/ip/sa_engine_ip_v1_0_bfm_1_sa_engine_ip_0_0/sim/sa_engine_ip_v1_0_bfm_1_sa_engine_ip_0_0.v" \
  "../../../bd/sa_engine_ip_v1_0_bfm_1/sim/sa_engine_ip_v1_0_bfm_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

