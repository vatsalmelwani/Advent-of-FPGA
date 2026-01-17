`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2025 00:03:29
// Design Name: 
// Module Name: Zero_counter
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


module Zero_counter(
    input       wire                    clk,
    input       wire                    rst,
    input       wire        [7:0]       inp_accum_BCD_val,
    output      reg         [15:0]      out_zero_counts
    );
    
    always @(posedge clk) begin
        if(rst) begin
            out_zero_counts <= 16'h0000;
        end else begin
            out_zero_counts <= out_zero_counts + (inp_accum_BCD_val == 'd0);
        end
    end
endmodule
