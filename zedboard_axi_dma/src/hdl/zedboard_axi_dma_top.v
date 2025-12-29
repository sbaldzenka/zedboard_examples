// project : zedboard axi dma
// date    : 23.12.2025
// author  : siarhei baldzenka
// e-mail  : venera.electronica@gmail.com

`timescale 1ns/100ps

module zedboard_axi_dma_top
(
    // ddr3 interface
    inout  wire [14:0] io_ddr3_addr,
    inout  wire [ 2:0] io_ddr3_ba,
    inout  wire        io_ddr3_cas_n,
    inout  wire        io_ddr3_ck_n,
    inout  wire        io_ddr3_ck_p,
    inout  wire        io_ddr3_cke,
    inout  wire        io_ddr3_cs_n,
    inout  wire [ 3:0] io_ddr3_dm,
    inout  wire [31:0] io_ddr3_dq,
    inout  wire [ 3:0] io_ddr3_dqs_n,
    inout  wire [ 3:0] io_ddr3_dqs_p,
    inout  wire        io_ddr3_odt,
    inout  wire        io_ddr3_ras_n,
    inout  wire        io_ddr3_reset_n,
    inout  wire        io_ddr3_we_n,
    inout  wire        io_ddr3_vrn,
    inout  wire        io_ddr3_vrp,
    // uart interface
    input  wire        i_uart_rx,
    output wire        o_uart_tx
);

    bd_wrapper bd_wrapper_inst
    (
        .DDR_addr          ( io_ddr3_addr    ),
        .DDR_ba            ( io_ddr3_ba      ),
        .DDR_cas_n         ( io_ddr3_cas_n   ),
        .DDR_ck_n          ( io_ddr3_ck_n    ),
        .DDR_ck_p          ( io_ddr3_ck_p    ),
        .DDR_cke           ( io_ddr3_cke     ),
        .DDR_cs_n          ( io_ddr3_cs_n    ),
        .DDR_dm            ( io_ddr3_dm      ),
        .DDR_dq            ( io_ddr3_dq      ),
        .DDR_dqs_n         ( io_ddr3_dqs_n   ),
        .DDR_dqs_p         ( io_ddr3_dqs_p   ),
        .DDR_odt           ( io_ddr3_odt     ),
        .DDR_ras_n         ( io_ddr3_ras_n   ),
        .DDR_reset_n       ( io_ddr3_reset_n ),
        .DDR_we_n          ( io_ddr3_we_n    ),
        .FIXED_IO_ddr_vrn  ( io_ddr3_vrn     ),
        .FIXED_IO_ddr_vrp  ( io_ddr3_vrp     ),
        .FIXED_IO_mio      (                 ),
        .FIXED_IO_ps_clk   (                 ),
        .FIXED_IO_ps_porb  (                 ),
        .FIXED_IO_ps_srstb (                 ),
        .UART_rxd          ( i_uart_rx       ),
        .UART_txd          ( o_uart_tx       )
    );

endmodule