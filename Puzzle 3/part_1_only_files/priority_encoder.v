`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2025 04:38:48
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder (
    input  wire [127:0] in,
    output reg  [6:0]   out,
    output reg          valid
);

    integer i;

    always @* begin
        out   = 7'd0;
        valid = 1'b0;

        // highest priority = bit 127
        for (i = 127; i >= 0; i = i - 1) begin
            if (!valid) begin
                if (in[i]) begin
                    out   = i[6:0];
                    valid = 1'b1;   // after this, no more updates allowed
                end
            end
        end
    end

endmodule

