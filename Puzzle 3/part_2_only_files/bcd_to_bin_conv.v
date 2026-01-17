`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2025 18:54:50
// Design Name: 
// Module Name: bcd_to_bin_conv
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bcd_to_bin_conv#(
    parameter IN_BCD_DIGITS = 12,
    parameter OUT_BIN_WIDTH = 40
)(
    input       wire    [(IN_BCD_DIGITS<<2) -1:0]    in_bcd,
    output      reg     [OUT_BIN_WIDTH-1:0]        out_bin
    );

    reg [IN_BCD_DIGITS*4 + OUT_BIN_WIDTH -1:0] shift_reg;
    integer i;
    integer j;
    always @(*) begin
        shift_reg[(IN_BCD_DIGITS<<2) + OUT_BIN_WIDTH -1 -: (IN_BCD_DIGITS<<2)] = in_bcd;
        shift_reg[OUT_BIN_WIDTH -1 : 0] = 0;

        // Reverse Double Dabble
        for (i = 0; i < OUT_BIN_WIDTH; i = i + 1) begin
            shift_reg = shift_reg >> 1;
            for (j = 0; j < IN_BCD_DIGITS; j = j + 1) begin
                if (shift_reg[(IN_BCD_DIGITS<<2) + OUT_BIN_WIDTH - (j<<2) -1 -: 4] > 'd7)
                    shift_reg[(IN_BCD_DIGITS<<2) + OUT_BIN_WIDTH - (j<<2) -1 -: 4] = shift_reg[(IN_BCD_DIGITS<<2) + OUT_BIN_WIDTH - (j<<2) -1 -: 4] - 'd3;
            end
        end

        out_bin = shift_reg[OUT_BIN_WIDTH -1 : 0];
    end
endmodule
