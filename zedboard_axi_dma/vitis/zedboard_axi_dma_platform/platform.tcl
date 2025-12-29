# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis/zedboard_axi_dma_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis/zedboard_axi_dma_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zedboard_axi_dma_platform}\
-hw {/mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis/zedboard_axi_dma_top.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis}

platform write
platform generate -domains 
platform active {zedboard_axi_dma_platform}
domain active {zynq_fsbl}
bsp reload
bsp config stdin "axi_uartlite_0"
bsp config stdout "axi_uartlite_0"
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp config stdin "axi_uartlite_0"
bsp config stdout "axi_uartlite_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
