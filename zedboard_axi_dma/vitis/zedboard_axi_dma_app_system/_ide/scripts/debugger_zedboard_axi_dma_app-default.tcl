# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis/zedboard_axi_dma_app_system/_ide/scripts/debugger_zedboard_axi_dma_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis/zedboard_axi_dma_app_system/_ide/scripts/debugger_zedboard_axi_dma_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248780532" && level==0 && jtag_device_ctx=="jsn-Zed-210248780532-23727093-0"}
fpga -file /mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis/zedboard_axi_dma_app/_ide/bitstream/zedboard_axi_dma_top.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis/zedboard_axi_dma_platform/export/zedboard_axi_dma_platform/hw/zedboard_axi_dma_top.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis/zedboard_axi_dma_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /mnt/ssd_240Gb/github/zedboard_examples/zedboard_axi_dma/vitis/zedboard_axi_dma_app/Debug/zedboard_axi_dma_app.elf
configparams force-mem-access 0
bpadd -addr &main
