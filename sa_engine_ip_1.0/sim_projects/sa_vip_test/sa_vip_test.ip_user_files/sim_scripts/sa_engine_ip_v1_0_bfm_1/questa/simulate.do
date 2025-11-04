onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib sa_engine_ip_v1_0_bfm_1_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {sa_engine_ip_v1_0_bfm_1.udo}

run -all

quit -force
