`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2025 00:07:48
// Design Name: 
// Module Name: puzzle_1
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


module puzzle_1(
    input       wire        [9:0]       inp_bin_val,
    input       wire                    R_L,
    input       wire                    clk,
    input       wire                    rst,
    output      wire        [15:0]      out_zero_counts
    );
    
    //convert binary to BCD
    wire [7:0] BCD_val;
    BCD_conv bcd_conv_inst (
        .inp_val(inp_bin_val),
        .out_val(BCD_val)
    );

    //accumulator
    wire [7:0] accum_val;
    accum_code accum_code_inst (
        .clk(clk),
        .rst(rst),
        .R_L(R_L),
        .BCD_val(BCD_val),
        .accum_val_out(accum_val)
    );
    //count number of zeros in accum_val by instantiating Zero_counter
    Zero_counter zero_counter_inst (
        .clk(clk),
        .rst(rst),
        .inp_accum_BCD_val(accum_val),
        .out_zero_counts(out_zero_counts)
    );
endmodule
