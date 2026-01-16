`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2025 06:14:58
// Design Name: 
// Module Name: detect_mod
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


module detect_mod#(
    parameter MODULAR_SIZE = 32
)(
    input       wire                                clk,
    input       wire                                reset,
    input       wire                                enable,
    input       wire    [0: MODULAR_SIZE -1]        result_vector,
    input       wire    [0: MODULAR_SIZE +2 -1]     upper_row,
    input       wire    [0: MODULAR_SIZE +2 -1]     lower_row,
    input       wire    [0: MODULAR_SIZE +2 -1]     middle_row,
    input       wire    [0: MODULAR_SIZE +2 -1]     upper_upper_row,
    input       wire    
    output      wire                                out_upper_mod,
    output      wire                                out_upper_left_mod,
    output      wire                                out_upper_right_mod,
    output      wire                                out_middle_mod,
    output      wire                                out_middle_left_mod
    );

    wire [0: MODULAR_SIZE -1 -1] u_l, u_r, l_l, l_r, u, l, m_l, m_r, uu_l, uu_r, u, l, uu;
    assign u_l = upper_row[0: MODULAR_SIZE -2];
    assign u_r = upper_row[2: MODULAR_SIZE];
    assign l_l = lower_row[0: MODULAR_SIZE -2];
    assign l_r = lower_row[2: MODULAR_SIZE];
    assign u = upper_row[1: MODULAR_SIZE -1];
    assign l = lower_row[1: MODULAR_SIZE -1];
    assign m_l = middle_row[2: MODULAR_SIZE];
    assign m_r = middle_row[0: MODULAR_SIZE -2];
    assign uu_l = upper_upper_row[0: MODULAR_SIZE -2];
    assign uu_r = upper_upper_row[2: MODULAR_SIZE];
    assign uu = upper_upper_row[1: MODULAR_SIZE -1];

    assign out_upper_left_mod = result_vector[0] && upper_row[0];
    assign out_upper_right_mod = result_vector[MODULAR_SIZE -1] && upper_row[MODULAR_SIZE +1];
   
   
endmodule
