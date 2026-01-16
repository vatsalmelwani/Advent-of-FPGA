`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2026 03:09:11
// Design Name: 
// Module Name: data_mux_8_1
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


module data_mux_8_1 #(
    parameter ROW_SIZE = 160
)(
    input  wire [2:0]           sel,   // 0–7
    input  wire [0:ROW_SIZE-1]   din1,
    input  wire [0:ROW_SIZE-1]   din2,
    input  wire [0:ROW_SIZE-1]   din3,
    input  wire [0:ROW_SIZE-1]   din4,
    input  wire [0:ROW_SIZE-1]   din5,
    input  wire [0:ROW_SIZE-1]   din6,
    input  wire [0:ROW_SIZE-1]   din7,
    input  wire [0:ROW_SIZE-1]   din8,
    output reg  [0:ROW_SIZE-1]   dout
);

    always @(*) begin
        case (sel)
            3'd0: dout = din1;
            3'd1: dout = din2;
            3'd2: dout = din3;
            3'd3: dout = din4;
            3'd4: dout = din5;
            3'd5: dout = din6;
            3'd6: dout = din7;
            3'd7: dout = din8;
            default: dout = 'd0;
        endcase
    end

endmodule