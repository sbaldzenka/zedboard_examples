#!/bin/sh

# Set path to Vivado
vivado_install_path='/mnt/ssd_240Gb/programs/xilinx/Vivado/2022.1'

# Set current project variables
current_prj_dir=$(pwd)
export CURRENT_VIVADO_PROJECT_VARIABLE=$current_prj_dir
export PATH=$vivado_install_path/bin:$PATH

# Run build .tcl script in Vivado
vivado -mode batch -nolog -nojournal -source vivado_zedboard_uart.tcl