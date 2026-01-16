`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2025 23:50:30
// Design Name: 
// Module Name: data_mux_4x1
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


module data_mux_4x1#(
    parameter DATA_WIDTH = 32
)(
    input       wire        [DATA_WIDTH -1: 0]      in_data_1,
    input       wire        [DATA_WIDTH -1: 0]      in_data_0,
    input       wire                                sel,
    output      wire        [DATA_WIDTH -1: 0]      out_data  
    );

    assign out_data = (sel == 1'd0) ? (in_data_0) : (in_data_1);
endmodule