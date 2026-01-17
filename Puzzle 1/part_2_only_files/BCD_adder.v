`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2025 23:41:23
// Design Name: 
// Module Name: BCD_adder
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


module BCD_adder(
    input  wire    [3:0]       A,
    input  wire    [3:0]       B,
    input wire                Cin,
    output wire    [3:0]       S,
    output wire                Cout
    );

    wire [4:0] sum;
    wire [4:0] sum_2;
    wire [4:0] sum_3;
    assign sum = A + B + Cin;
    assign sum_2 = sum - 'd10;
    assign sum_3 = sum + 'd6;
    assign S = (sum <= 'd9) ? sum[3:0] : (sum<='d15 ? sum_2[3:0] : sum_3[3:0]);
    assign Cout = (sum <= 'd9) ? 1'b0 : 1'b1;
endmodule
