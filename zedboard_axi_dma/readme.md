# ZedBoard AXI DMA

Read and write test data to DDR3 via Xilinx AXI DMA IP core.

![Block Design](/../doc/img/zedboard_axi_dma_bd.png)
![Memory](/../doc/img/zedboard_axi_dma_bd.png)

> Vivado IDE version: 2022.1

For build use */vivado/**zedboard_axi_dma.xpr*** files.

### Catalogs structure:
 - src
   - bd - block design files;
   - constraints - pins assignment;
   - hdl - Verilog files;
 - vitis - C-project for ZYNQ;
 - vivado - folder with .xpr file for Vivado GUI-mode;