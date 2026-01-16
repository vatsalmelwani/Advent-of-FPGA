`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2025 23:45:15
// Design Name: 
// Module Name: word_index_counter
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


module word_index_counter#(
    parameter ROW_SIZE = 64,
    parameter MODULAR_SIZE = 32
)(
    input       wire                                       clk,
    input       wire                                       reset,
    input       wire                                       enable,
    output      reg         [WORD_INDEX_BITS -1: 0]        out_word_index
    );

    localparam MODULAR_BITS = $clog2(MODULAR_SIZE);
    localparam REAL_ROW_SIZE = ((ROW_SIZE + MODULAR_SIZE - 1) / MODULAR_SIZE) * MODULAR_SIZE;
    localparam WORD_INDEX_BITS = $clog2(REAL_ROW_SIZE >> MODULAR_BITS);
    localparam NO_OF_WORDS = REAL_ROW_SIZE >> MODULAR_BITS;

    always @ (posedge clk) begin
        if(reset) begin
            out_word_index <= 'd0;
        end else begin
            if(out_word_index < NO_OF_WORDS -1 && enable) begin
                out_word_index <= out_word_index + 'd1;
            end else if (enable) begin
                out_word_index <= 'd0;
            end
        end
    end
endmodule
