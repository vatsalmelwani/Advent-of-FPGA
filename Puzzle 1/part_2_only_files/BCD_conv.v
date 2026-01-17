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


module BCD_conv(
    input   wire    [9:0]       inp_val,
    output  wire    [7:0]       out_val,
    output  wire    [3:0]       out_mod
    );
    
    reg [21:0] shift_reg;
    //Double Dabble Code
    integer i;
    
    always @(*) begin
        shift_reg = 22'b0;
        shift_reg[9:0] = inp_val;
        for (i = 0; i < 10; i = i + 1) begin : gen_loop
            if (shift_reg[21:18] >= 'd5) begin
                shift_reg[21:18] = shift_reg[21:18] + 'd3;
            end
            if (shift_reg[17:14] >= 'd5) begin
                shift_reg[17:14] = shift_reg[17:14] + 'd3;
            end
            if (shift_reg[13:10] >= 'd5) begin
                shift_reg[13:10] = shift_reg[13:10] + 'd3;
            end
            shift_reg = shift_reg << 1;
        end
    end
    assign out_val = shift_reg[17:10];
    assign out_mod = shift_reg[21:18];
endmodule
