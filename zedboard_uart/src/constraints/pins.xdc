# project : zedboard uart
# date    : 17.12.2025
# author  : siarhei baldzenka
# e-mail  : venera.electronica@gmail.com

# leds
set_property PACKAGE_PIN T22 [get_ports {o_leds[0]}];
set_property PACKAGE_PIN T21 [get_ports {o_leds[1]}];
set_property PACKAGE_PIN U22 [get_ports {o_leds[2]}];
set_property PACKAGE_PIN U21 [get_ports {o_leds[3]}];
set_property PACKAGE_PIN V22 [get_ports {o_leds[4]}];
set_property PACKAGE_PIN W22 [get_ports {o_leds[5]}];
set_property PACKAGE_PIN U19 [get_ports {o_leds[6]}];
set_property PACKAGE_PIN U14 [get_ports {o_leds[7]}];

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