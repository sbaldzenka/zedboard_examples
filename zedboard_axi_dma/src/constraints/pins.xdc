# project : zedboard ps ddr
# date    : 23.12.2025
# author  : siarhei baldzenka
# e-mail  : venera.electronica@gmail.com

# uart
set_property PACKAGE_PIN Y10 [get_ports {i_uart_rx}]; # JA3
set_property PACKAGE_PIN AA9 [get_ports {o_uart_tx}]; # JA4

# IOSTANDARD Constraints
# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard.
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard.
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];