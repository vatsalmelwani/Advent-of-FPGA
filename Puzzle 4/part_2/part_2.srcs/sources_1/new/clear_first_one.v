`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2026 02:29:27
// Design Name: 
// Module Name: clear_first_one
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

module clear_first_one (
    input  wire [7:0] in,
    output reg  [7:0] out
);

always @(*) begin
    out = in; // default: pass-through

    if      (in[7]) out[7] = 1'b0;
    else if (in[6]) out[6] = 1'b0;
    else if (in[5]) out[5] = 1'b0;
    else if (in[4]) out[4] = 1'b0;
    else if (in[3]) out[3] = 1'b0;
    else if (in[2]) out[2] = 1'b0;
    else if (in[1]) out[1] = 1'b0;
    else if (in[0]) out[0] = 1'b0;
end

endmodule
