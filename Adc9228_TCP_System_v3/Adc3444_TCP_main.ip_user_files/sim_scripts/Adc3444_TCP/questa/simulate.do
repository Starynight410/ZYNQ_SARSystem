onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Adc3444_TCP_opt

do {wave.do}

view wave
view structure
view signals

do {Adc3444_TCP.udo}

run -all

quit -force
