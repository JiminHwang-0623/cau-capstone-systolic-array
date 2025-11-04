onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+sa_engine_ip_v1_0_bfm_1 -L xilinx_vip -L axi_infrastructure_v1_1_0 -L xil_defaultlib -L axi_vip_v1_1_11 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sa_engine_ip_v1_0_bfm_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {sa_engine_ip_v1_0_bfm_1.udo}

run -all

endsim

quit -force
