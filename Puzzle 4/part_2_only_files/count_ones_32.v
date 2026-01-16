`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2025 03:33:28
// Design Name: 
// Module Name: count_ones_32
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


module count_ones_32 (
    a,
    b
);

    input [31:0] a;
    output [5:0] b;

    wire _123;
    wire [4:0] _122;
    wire [5:0] _124;
    wire _120;
    wire [5:0] _121;
    wire [5:0] _125;
    wire _116;
    wire [5:0] _117;
    wire _113;
    wire [5:0] _114;
    wire [5:0] _118;
    wire [5:0] _126;
    wire _108;
    wire [5:0] _109;
    wire _105;
    wire [5:0] _106;
    wire [5:0] _110;
    wire _101;
    wire [5:0] _102;
    wire _98;
    wire [5:0] _99;
    wire [5:0] _103;
    wire [5:0] _111;
    wire [5:0] _127;
    wire _92;
    wire [5:0] _93;
    wire _89;
    wire [5:0] _90;
    wire [5:0] _94;
    wire _85;
    wire [5:0] _86;
    wire _82;
    wire [5:0] _83;
    wire [5:0] _87;
    wire [5:0] _95;
    wire _77;
    wire [5:0] _78;
    wire _74;
    wire [5:0] _75;
    wire [5:0] _79;
    wire _70;
    wire [5:0] _71;
    wire _67;
    wire [5:0] _68;
    wire [5:0] _72;
    wire [5:0] _80;
    wire [5:0] _96;
    wire [5:0] _128;
    wire _60;
    wire [5:0] _61;
    wire _57;
    wire [5:0] _58;
    wire [5:0] _62;
    wire _53;
    wire [5:0] _54;
    wire _50;
    wire [5:0] _51;
    wire [5:0] _55;
    wire [5:0] _63;
    wire _45;
    wire [5:0] _46;
    wire _42;
    wire [5:0] _43;
    wire [5:0] _47;
    wire _38;
    wire [5:0] _39;
    wire _35;
    wire [5:0] _36;
    wire [5:0] _40;
    wire [5:0] _48;
    wire [5:0] _64;
    wire _29;
    wire [5:0] _30;
    wire _26;
    wire [5:0] _27;
    wire [5:0] _31;
    wire _22;
    wire [5:0] _23;
    wire _19;
    wire [5:0] _20;
    wire [5:0] _24;
    wire [5:0] _32;
    wire _14;
    wire [5:0] _15;
    wire _11;
    wire [5:0] _12;
    wire [5:0] _16;
    wire _7;
    wire [5:0] _8;
    wire _4;
    wire [5:0] _5;
    wire [5:0] _9;
    wire [5:0] _17;
    wire [5:0] _33;
    wire [5:0] _65;
    wire [5:0] _129;
    assign _123 = a[0:0];
    assign _122 = 5'b00000;
    assign _124 = { _122,
                    _123 };
    assign _120 = a[1:1];
    assign _121 = { _122,
                    _120 };
    assign _125 = _121 + _124;
    assign _116 = a[2:2];
    assign _117 = { _122,
                    _116 };
    assign _113 = a[3:3];
    assign _114 = { _122,
                    _113 };
    assign _118 = _114 + _117;
    assign _126 = _118 + _125;
    assign _108 = a[4:4];
    assign _109 = { _122,
                    _108 };
    assign _105 = a[5:5];
    assign _106 = { _122,
                    _105 };
    assign _110 = _106 + _109;
    assign _101 = a[6:6];
    assign _102 = { _122,
                    _101 };
    assign _98 = a[7:7];
    assign _99 = { _122,
                   _98 };
    assign _103 = _99 + _102;
    assign _111 = _103 + _110;
    assign _127 = _111 + _126;
    assign _92 = a[8:8];
    assign _93 = { _122,
                   _92 };
    assign _89 = a[9:9];
    assign _90 = { _122,
                   _89 };
    assign _94 = _90 + _93;
    assign _85 = a[10:10];
    assign _86 = { _122,
                   _85 };
    assign _82 = a[11:11];
    assign _83 = { _122,
                   _82 };
    assign _87 = _83 + _86;
    assign _95 = _87 + _94;
    assign _77 = a[12:12];
    assign _78 = { _122,
                   _77 };
    assign _74 = a[13:13];
    assign _75 = { _122,
                   _74 };
    assign _79 = _75 + _78;
    assign _70 = a[14:14];
    assign _71 = { _122,
                   _70 };
    assign _67 = a[15:15];
    assign _68 = { _122,
                   _67 };
    assign _72 = _68 + _71;
    assign _80 = _72 + _79;
    assign _96 = _80 + _95;
    assign _128 = _96 + _127;
    assign _60 = a[16:16];
    assign _61 = { _122,
                   _60 };
    assign _57 = a[17:17];
    assign _58 = { _122,
                   _57 };
    assign _62 = _58 + _61;
    assign _53 = a[18:18];
    assign _54 = { _122,
                   _53 };
    assign _50 = a[19:19];
    assign _51 = { _122,
                   _50 };
    assign _55 = _51 + _54;
    assign _63 = _55 + _62;
    assign _45 = a[20:20];
    assign _46 = { _122,
                   _45 };
    assign _42 = a[21:21];
    assign _43 = { _122,
                   _42 };
    assign _47 = _43 + _46;
    assign _38 = a[22:22];
    assign _39 = { _122,
                   _38 };
    assign _35 = a[23:23];
    assign _36 = { _122,
                   _35 };
    assign _40 = _36 + _39;
    assign _48 = _40 + _47;
    assign _64 = _48 + _63;
    assign _29 = a[24:24];
    assign _30 = { _122,
                   _29 };
    assign _26 = a[25:25];
    assign _27 = { _122,
                   _26 };
    assign _31 = _27 + _30;
    assign _22 = a[26:26];
    assign _23 = { _122,
                   _22 };
    assign _19 = a[27:27];
    assign _20 = { _122,
                   _19 };
    assign _24 = _20 + _23;
    assign _32 = _24 + _31;
    assign _14 = a[28:28];
    assign _15 = { _122,
                   _14 };
    assign _11 = a[29:29];
    assign _12 = { _122,
                   _11 };
    assign _16 = _12 + _15;
    assign _7 = a[30:30];
    assign _8 = { _122,
                  _7 };
    assign _4 = a[31:31];
    assign _5 = { _122,
                  _4 };
    assign _9 = _5 + _8;
    assign _17 = _9 + _16;
    assign _33 = _17 + _32;
    assign _65 = _33 + _64;
    assign _129 = _65 + _128;
    assign b = _129;

endmodule