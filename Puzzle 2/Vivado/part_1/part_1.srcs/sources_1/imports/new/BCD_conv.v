`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2025 19:45:49
// Design Name: 
// Module Name: BCD_conv
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


module BCD_conv#(
    parameter IN_WIDTH = 336,
    parameter OUT_DIGITS = 100
)(
    input       wire        [IN_WIDTH-1:0]          inp_val,
    output      wire        [OUT_DIGITS*4 -1:0]     out_val
    );
    
    reg [IN_WIDTH + OUT_DIGITS*4 -1:0] shift_reg;
    //Double Dabble Code
    integer i;
    integer j;
    
    always @(*) begin
        shift_reg = 'd0;
        shift_reg[IN_WIDTH-1:0] = inp_val;
        for (i = 0; i < IN_WIDTH; i = i + 1) begin : gen_loop
            for (j = IN_WIDTH + OUT_DIGITS*4 -1; j > IN_WIDTH; j = j -4) begin : add3_loop
                if (shift_reg[j -: 4] >= 'd5) begin
                    shift_reg[j -: 4] = shift_reg[j -: 4] + 'd3;
                end
            end
            shift_reg = shift_reg << 1;
        end
    end
    assign out_val = shift_reg[OUT_DIGITS*4 + IN_WIDTH -1 -: OUT_DIGITS*4];
endmodule
