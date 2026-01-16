`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2025 19:17:11
// Design Name: 
// Module Name: row_reg
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


module row_reg#(
    parameter ROW_SIZE = 64,
    parameter MODULAR_SIZE = 32,
    parameter INDEX_U = 1'd0,
    parameter INDEX_M = 1'd1
    //parameter INDEX_L = 2'd2
)(
    input       wire                                  clk,
    input       wire                                  reset,
    input       wire                                  enable,
    input       wire      [MODULAR_SIZE -1: 0]        in_row_data,
    input       wire                                  in_row_index,
    input       wire      [WORD_INDEX_BITS -1: 0]     in_word_index, // goes from 0 to NO_OF_WORDS -1
    output      wire      [MODULAR_SIZE +2 -1: 0]     out_reg_data
    );
    localparam MODULAR_BITS = $clog2(MODULAR_SIZE);
    localparam REAL_ROW_SIZE = ((ROW_SIZE + MODULAR_SIZE - 1) / MODULAR_SIZE) * MODULAR_SIZE;
    localparam WORD_INDEX_BITS = $clog2(REAL_ROW_SIZE >> MODULAR_BITS);
    localparam NO_OF_WORDS = REAL_ROW_SIZE >> MODULAR_BITS;

    reg [REAL_ROW_SIZE +2 -1: 0] row;

    always @(posedge clk) begin
        if(reset) begin
            row <= 'd0;
        end else if (enable) begin
            if(in_row_index == INDEX_U) begin
                row[((NO_OF_WORDS - in_word_index) << MODULAR_BITS) +1 -1 -: MODULAR_SIZE] <= in_row_data;
            end
        end
    end

    assign out_reg_data = row[((NO_OF_WORDS - in_word_index) << MODULAR_BITS) -1 +2 -: MODULAR_SIZE +2];
endmodule