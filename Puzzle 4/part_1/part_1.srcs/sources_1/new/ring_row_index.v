`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2025 23:12:49
// Design Name: 
// Module Name: ring_row_index
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


module ring_row_index#(
    parameter ROW_SIZE = 64,
    parameter MODULAR_SIZE = 32,
    parameter INDEX_U = 1'd0,
    parameter INDEX_M = 1'd1
)(
    input       wire                                clk,
    input       wire                                reset,
    input       wire                                enable,
    input       wire    [WORD_INDEX_BITS -1: 0]     in_word_index,
    output      reg                                 out_mux_sel_u,
    output      wire                                out_mux_sel_m
    );
    localparam MODULAR_BITS = $clog2(MODULAR_SIZE);
    localparam REAL_ROW_SIZE = ((ROW_SIZE + MODULAR_SIZE - 1) / MODULAR_SIZE) * MODULAR_SIZE;
    localparam WORD_INDEX_BITS = $clog2(REAL_ROW_SIZE >> MODULAR_BITS);
    localparam NO_OF_WORDS = REAL_ROW_SIZE >> MODULAR_BITS;

    always @(posedge clk) begin
        if(reset) begin
            out_mux_sel_u <= INDEX_U;
        end else if (enable) begin
            if(in_word_index == NO_OF_WORDS-1) begin
                out_mux_sel_u <= !out_mux_sel_u;
            end
        end
    end
    
    assign out_mux_sel_m = !out_mux_sel_u;

endmodule