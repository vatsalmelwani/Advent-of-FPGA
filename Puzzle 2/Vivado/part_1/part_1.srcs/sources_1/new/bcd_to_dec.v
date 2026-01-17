`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2025 19:05:37
// Design Name: 
// Module Name: bcd_to_dec
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


module bcd_to_dec(
    input   wire    [3:0]       bcd,
    output  wire    [9:0]       dec
    );

    assign dec[9] = (bcd == 4'd9);
    assign dec[8] = (bcd == 4'd8);
    assign dec[7] = (bcd == 4'd7);
    assign dec[6] = (bcd == 4'd6);
    assign dec[5] = (bcd == 4'd5);
    assign dec[4] = (bcd == 4'd4);
    assign dec[3] = (bcd == 4'd3);
    assign dec[2] = (bcd == 4'd2);
    assign dec[1] = (bcd == 4'd1);
    assign dec[0] = (bcd == 4'd0);

endmodule
