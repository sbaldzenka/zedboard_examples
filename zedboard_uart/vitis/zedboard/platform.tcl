# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /mnt/ssd_240Gb/zedboard_uart/vitis/zedboard/platform.tcl
# 
# OR launch xsct and run below command.
# source /mnt/ssd_240Gb/zedboard_uart/vitis/zedboard/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zedboard}\
-hw {/mnt/ssd_240Gb/zedboard_uart/vitis/zedboard_uart_top.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/mnt/ssd_240Gb/zedboard_uart/vitis}

platform write
platform generate -domains 
platform active {zedboard}
platform generate
bsp reload
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp reload
platform generate
platform active {zedboard}
platform config -updatehw {/mnt/ssd_240Gb/zedboard_uart/vitis/zedboard_uart_top.xsa}
platform generate -domains 
bsp reload
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
bsp reload
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp config stdin "axi_uartlite_0"
bsp config stdout "axi_uartlite_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains zynq_fsbl 
domain active {standalone_domain}
bsp reload
bsp config stdin "axi_uartlite_0"
bsp config stdout "axi_uartlite_0"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
bsp reload
platform generate -domains standalone_domain 
platform config -updatehw {/mnt/ssd_240Gb/zedboard_uart/vitis/zedboard_uart_top.xsa}
platform generate -domains 
