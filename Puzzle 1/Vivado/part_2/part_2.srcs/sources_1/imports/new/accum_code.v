`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2025 20:07:59
// Design Name: 
// Module Name: accum_code
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


module accum_code(
    input       wire                clk,
    input       wire                rst,
    input       wire                R_L, //0 for R, 1 for L
    input       wire        [7:0]   BCD_val,
    input       wire        [3:0]   BCD_mod,
    output      wire        [7:0]   accum_val_out,
    output      wire        [3:0]   BCD_mod_out,
    output      wire                accum_zero_cross
    );
    
    reg [7:0] accum_val;
    reg [3:0] BCD_mod_reg;
    reg accum_zero_cross_reg;
    always @(posedge clk) begin
        if(rst) begin
            accum_val <= 'd0;
            BCD_mod_reg <= 'd0;
            accum_zero_cross_reg <= 'd0;
        end else begin
            accum_val <= new_accum_val_sum;
            BCD_mod_reg <= BCD_mod;
            accum_zero_cross_reg <= (R_L) ? (accum_val < new_accum_val_sum && accum_val!='d0) : (Cout2 && new_accum_val_sum != 'd0);
        end
    end

    wire [3:0] BCD_val_final_low, BCD_val_final_high;
    assign BCD_val_final_low = (BCD_val[3:0] != 'd0) ? 'd10 - BCD_val[3:0]
                                : 'd0;
    assign BCD_val_final_high = (BCD_val[3:0] != 'd0) ? 'd9 - BCD_val[7:4]  
                                : (BCD_val[7:4] != 'd0) ? 'd10 - BCD_val[7:4]
                                : 'd0;
    wire [7:0] new_accum_val_sum;
    wire Cout1;
    wire Cout2;

    wire [7:0] BCD_final;
    assign BCD_final = R_L ? {BCD_val_final_high, BCD_val_final_low} : BCD_val;

    BCD_adder bcd_add_inst (
        .A(accum_val[3:0]),
        .B(BCD_final[3:0]),
        .Cin(1'b0),
        .S(new_accum_val_sum[3:0]),
        .Cout(Cout1)
    );

    BCD_adder bcd_add_inst2 (
        .A(accum_val[7:4]),
        .B(BCD_final[7:4]),
        .Cin(Cout1),
        .S(new_accum_val_sum[7:4]),
        .Cout(Cout2)
    );
    assign accum_zero_cross = accum_zero_cross_reg;
    assign accum_val_out = accum_val;
    assign BCD_mod_out = BCD_mod_reg;
endmodule
