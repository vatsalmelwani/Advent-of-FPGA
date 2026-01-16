`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2025 02:55:41
// Design Name: 
// Module Name: count_ones
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


module count_ones (
    a,
    b
);

    input [7:0] a;
    output [3:0] b;

    wire _29;
    wire [2:0] _28;
    wire [3:0] _30;
    wire _26;
    wire [3:0] _27;
    wire [3:0] _31;
    wire _22;
    wire [3:0] _23;
    wire _19;
    wire [3:0] _20;
    wire [3:0] _24;
    wire [3:0] _32;
    wire _14;
    wire [3:0] _15;
    wire _11;
    wire [3:0] _12;
    wire [3:0] _16;
    wire _7;
    wire [3:0] _8;
    wire _4;
    wire [3:0] _5;
    wire [3:0] _9;
    wire [3:0] _17;
    wire [3:0] _33;
    assign _29 = a[0:0];
    assign _28 = 3'b000;
    assign _30 = { _28,
                   _29 };
    assign _26 = a[1:1];
    assign _27 = { _28,
                   _26 };
    assign _31 = _27 + _30;
    assign _22 = a[2:2];
    assign _23 = { _28,
                   _22 };
    assign _19 = a[3:3];
    assign _20 = { _28,
                   _19 };
    assign _24 = _20 + _23;
    assign _32 = _24 + _31;
    assign _14 = a[4:4];
    assign _15 = { _28,
                   _14 };
    assign _11 = a[5:5];
    assign _12 = { _28,
                   _11 };
    assign _16 = _12 + _15;
    assign _7 = a[6:6];
    assign _8 = { _28,
                  _7 };
    assign _4 = a[7:7];
    assign _5 = { _28,
                  _4 };
    assign _9 = _5 + _8;
    assign _17 = _9 + _16;
    assign _33 = _17 + _32;
    assign b = _33;

endmodule