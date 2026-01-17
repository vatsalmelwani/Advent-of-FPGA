module store_count (
    enable,
    reset,
    clk,
    data,
    out_sum
);

    input enable;
    input reset;
    input clk;
    input [5:0] data;
    output [15:0] out_sum;

    wire [15:0] _10;
    wire [9:0] _7;
    wire [15:0] _8;
    wire [15:0] _5;
    wire [15:0] _9;
    reg [15:0] _11;
    assign _10 = 16'b0000000000000000;
    assign _7 = 10'b0000000000;
    assign _8 = { _7,
                  data };
    assign _5 = _11;
    assign _9 = _5 + _8;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _11 <= _10;
        else
            if (enable)
                _11 <= _9;
    end
    assign out_sum = _11;

endmodule
module count_ones (
    data,
    count
);

    input [31:0] data;
    output [5:0] count;

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
    assign _123 = data[0:0];
    assign _122 = 5'b00000;
    assign _124 = { _122,
                    _123 };
    assign _120 = data[1:1];
    assign _121 = { _122,
                    _120 };
    assign _125 = _121 + _124;
    assign _116 = data[2:2];
    assign _117 = { _122,
                    _116 };
    assign _113 = data[3:3];
    assign _114 = { _122,
                    _113 };
    assign _118 = _114 + _117;
    assign _126 = _118 + _125;
    assign _108 = data[4:4];
    assign _109 = { _122,
                    _108 };
    assign _105 = data[5:5];
    assign _106 = { _122,
                    _105 };
    assign _110 = _106 + _109;
    assign _101 = data[6:6];
    assign _102 = { _122,
                    _101 };
    assign _98 = data[7:7];
    assign _99 = { _122,
                   _98 };
    assign _103 = _99 + _102;
    assign _111 = _103 + _110;
    assign _127 = _111 + _126;
    assign _92 = data[8:8];
    assign _93 = { _122,
                   _92 };
    assign _89 = data[9:9];
    assign _90 = { _122,
                   _89 };
    assign _94 = _90 + _93;
    assign _85 = data[10:10];
    assign _86 = { _122,
                   _85 };
    assign _82 = data[11:11];
    assign _83 = { _122,
                   _82 };
    assign _87 = _83 + _86;
    assign _95 = _87 + _94;
    assign _77 = data[12:12];
    assign _78 = { _122,
                   _77 };
    assign _74 = data[13:13];
    assign _75 = { _122,
                   _74 };
    assign _79 = _75 + _78;
    assign _70 = data[14:14];
    assign _71 = { _122,
                   _70 };
    assign _67 = data[15:15];
    assign _68 = { _122,
                   _67 };
    assign _72 = _68 + _71;
    assign _80 = _72 + _79;
    assign _96 = _80 + _95;
    assign _128 = _96 + _127;
    assign _60 = data[16:16];
    assign _61 = { _122,
                   _60 };
    assign _57 = data[17:17];
    assign _58 = { _122,
                   _57 };
    assign _62 = _58 + _61;
    assign _53 = data[18:18];
    assign _54 = { _122,
                   _53 };
    assign _50 = data[19:19];
    assign _51 = { _122,
                   _50 };
    assign _55 = _51 + _54;
    assign _63 = _55 + _62;
    assign _45 = data[20:20];
    assign _46 = { _122,
                   _45 };
    assign _42 = data[21:21];
    assign _43 = { _122,
                   _42 };
    assign _47 = _43 + _46;
    assign _38 = data[22:22];
    assign _39 = { _122,
                   _38 };
    assign _35 = data[23:23];
    assign _36 = { _122,
                   _35 };
    assign _40 = _36 + _39;
    assign _48 = _40 + _47;
    assign _64 = _48 + _63;
    assign _29 = data[24:24];
    assign _30 = { _122,
                   _29 };
    assign _26 = data[25:25];
    assign _27 = { _122,
                   _26 };
    assign _31 = _27 + _30;
    assign _22 = data[26:26];
    assign _23 = { _122,
                   _22 };
    assign _19 = data[27:27];
    assign _20 = { _122,
                   _19 };
    assign _24 = _20 + _23;
    assign _32 = _24 + _31;
    assign _14 = data[28:28];
    assign _15 = { _122,
                   _14 };
    assign _11 = data[29:29];
    assign _12 = { _122,
                   _11 };
    assign _16 = _12 + _15;
    assign _7 = data[30:30];
    assign _8 = { _122,
                  _7 };
    assign _4 = data[31:31];
    assign _5 = { _122,
                  _4 };
    assign _9 = _5 + _8;
    assign _17 = _9 + _16;
    assign _33 = _17 + _32;
    assign _65 = _33 + _64;
    assign _129 = _65 + _128;
    assign count = _129;

endmodule
module mod_counter (
    enable,
    reset,
    clk,
    q
);

    input enable;
    input reset;
    input clk;
    output [2:0] q;

    wire [2:0] _12;
    wire [2:0] _8;
    wire [2:0] _9;
    wire [2:0] _6;
    wire [2:0] _4;
    wire _7;
    wire [2:0] _11;
    reg [2:0] _13;
    assign _12 = 3'b000;
    assign _8 = 3'b001;
    assign _9 = _4 + _8;
    assign _6 = 3'b100;
    assign _4 = _13;
    assign _7 = _4 == _6;
    assign _11 = _7 ? _12 : _9;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _13 <= _12;
        else
            if (enable)
                _13 <= _11;
    end
    assign q = _13;

endmodule
module storage_chunked_neighbor (
    enable,
    reset,
    clk,
    prev_msb_update,
    curr_data,
    sel,
    q
);

    input enable;
    input reset;
    input clk;
    input prev_msb_update;
    input [31:0] curr_data;
    input [2:0] sel;
    output [159:0] q;

    wire [160:0] _75;
    wire [127:0] _70;
    wire _68;
    wire _69;
    wire [31:0] _67;
    wire [160:0] _71;
    wire [2:0] _65;
    wire _66;
    wire [160:0] _72;
    wire [95:0] _61;
    wire _59;
    wire _60;
    wire [63:0] _58;
    wire [160:0] _62;
    wire _57;
    wire [160:0] _63;
    wire [63:0] _52;
    wire _50;
    wire _51;
    wire [95:0] _49;
    wire [160:0] _53;
    wire _48;
    wire [160:0] _54;
    wire [31:0] _44;
    wire _42;
    wire _43;
    wire [31:0] _38;
    wire [2:0] _36;
    wire _37;
    wire [31:0] _39;
    wire [31:0] _34;
    wire [2:0] _32;
    wire _33;
    wire [31:0] _35;
    wire [31:0] _30;
    wire [2:0] _28;
    wire _29;
    wire [31:0] _31;
    wire [31:0] _26;
    wire [2:0] _24;
    wire _25;
    wire [31:0] _27;
    wire [31:0] _22;
    wire _21;
    wire [31:0] _23;
    wire [160:0] _6;
    wire _19;
    wire [160:0] _40;
    wire [127:0] _41;
    wire [160:0] _45;
    wire _18;
    wire [160:0] _46;
    wire _16;
    wire [160:0] _55;
    wire _14;
    wire [160:0] _64;
    wire _12;
    wire [160:0] _73;
    wire _10;
    wire [160:0] _74;
    reg [160:0] _76;
    wire [159:0] _77;
    assign _75 = 161'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    assign _70 = _40[127:0];
    assign _68 = _40[128:128];
    assign _69 = _68 | prev_msb_update;
    assign _67 = _40[160:129];
    assign _71 = { _67,
                   _69,
                   _70 };
    assign _65 = 3'b000;
    assign _66 = sel == _65;
    assign _72 = _66 ? _40 : _71;
    assign _61 = _40[95:0];
    assign _59 = _40[96:96];
    assign _60 = _59 | prev_msb_update;
    assign _58 = _40[160:97];
    assign _62 = { _58,
                   _60,
                   _61 };
    assign _57 = sel == _65;
    assign _63 = _57 ? _40 : _62;
    assign _52 = _40[63:0];
    assign _50 = _40[64:64];
    assign _51 = _50 | prev_msb_update;
    assign _49 = _40[160:65];
    assign _53 = { _49,
                   _51,
                   _52 };
    assign _48 = sel == _65;
    assign _54 = _48 ? _40 : _53;
    assign _44 = _40[31:0];
    assign _42 = _40[32:32];
    assign _43 = _42 | prev_msb_update;
    assign _38 = _6[31:0];
    assign _36 = 3'b100;
    assign _37 = sel == _36;
    assign _39 = _37 ? curr_data : _38;
    assign _34 = _6[63:32];
    assign _32 = 3'b011;
    assign _33 = sel == _32;
    assign _35 = _33 ? curr_data : _34;
    assign _30 = _6[95:64];
    assign _28 = 3'b010;
    assign _29 = sel == _28;
    assign _31 = _29 ? curr_data : _30;
    assign _26 = _6[127:96];
    assign _24 = 3'b001;
    assign _25 = sel == _24;
    assign _27 = _25 ? curr_data : _26;
    assign _22 = _6[159:128];
    assign _21 = sel == _65;
    assign _23 = _21 ? curr_data : _22;
    assign _6 = _76;
    assign _19 = _6[160:160];
    assign _40 = { _19,
                   _23,
                   _27,
                   _31,
                   _35,
                   _39 };
    assign _41 = _40[160:33];
    assign _45 = { _41,
                   _43,
                   _44 };
    assign _18 = sel == _65;
    assign _46 = _18 ? _40 : _45;
    assign _16 = sel == _32;
    assign _55 = _16 ? _54 : _46;
    assign _14 = sel == _28;
    assign _64 = _14 ? _63 : _55;
    assign _12 = sel == _24;
    assign _73 = _12 ? _72 : _64;
    assign _10 = sel == _65;
    assign _74 = _10 ? _40 : _73;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _76 <= _75;
        else
            if (enable)
                _76 <= _74;
    end
    assign _77 = _76[159:0];
    assign q = _77;

endmodule
module init_done (
    enable,
    reset,
    clk,
    sel,
    done
);

    input enable;
    input reset;
    input clk;
    input [2:0] sel;
    output done;

    wire _11;
    wire vdd;
    wire _4;
    wire [2:0] _7;
    wire _8;
    wire _10;
    reg _12;
    assign _11 = 1'b0;
    assign vdd = 1'b1;
    assign _4 = _12;
    assign _7 = 3'b100;
    assign _8 = sel == _7;
    assign _10 = _8 ? vdd : _4;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _12 <= _11;
        else
            if (enable)
                _12 <= _10;
    end
    assign done = _12;

endmodule
module top (
    data,
    enable,
    reset,
    clk,
    out_sum
);

    input [31:0] data;
    input enable;
    input reset;
    input clk;
    output [15:0] out_sum;

    wire [31:0] _36;
    wire [31:0] _34;
    wire [31:0] _32;
    wire [31:0] _30;
    wire _60;
    wire [30:0] _56;
    wire _53;
    wire _52;
    reg _54;
    wire [31:0] _46;
    wire [31:0] _47;
    wire [31:0] _48;
    wire [31:0] _49;
    wire [30:0] _43;
    wire [31:0] _44;
    wire [30:0] _39;
    wire [31:0] _41;
    wire [31:0] _45;
    wire [31:0] _50;
    wire _51;
    wire _55;
    wire [31:0] _57;
    wire [2:0] _15;
    wire _16;
    wire [31:0] _58;
    wire _12;
    wire _1;
    wire _14;
    wire [31:0] _59;
    wire [159:0] _61;
    wire [159:0] _2;
    wire [159:0] _3;
    wire [31:0] _28;
    wire [31:0] _27;
    wire _26;
    wire [31:0] _29;
    wire [2:0] _23;
    wire _24;
    wire [31:0] _31;
    wire [2:0] _21;
    wire _22;
    wire [31:0] _33;
    wire [2:0] _19;
    wire _20;
    wire [31:0] _35;
    wire [2:0] _17;
    wire [2:0] _62;
    wire [2:0] _4;
    wire _18;
    wire [31:0] _37;
    wire [31:0] _38;
    wire [5:0] _63;
    wire [5:0] _6;
    wire [15:0] _64;
    wire [15:0] _10;
    assign _36 = _3[31:0];
    assign _34 = _3[63:32];
    assign _32 = _3[95:64];
    assign _30 = _3[127:96];
    assign _60 = _38[31:31];
    assign _56 = _50[30:0];
    assign _53 = 1'b0;
    assign _52 = _38[0:0];
    always @(posedge clk or posedge reset) begin
        if (reset)
            _54 <= _53;
        else
            if (enable)
                _54 <= _52;
    end
    assign _46 = ~ _37;
    assign _47 = _46 | _38;
    assign _48 = ~ _47;
    assign _49 = _48 & _37;
    assign _43 = _38[31:1];
    assign _44 = { _53,
                   _43 };
    assign _39 = _38[30:0];
    assign _41 = { _39,
                   _53 };
    assign _45 = _41 | _44;
    assign _50 = _45 | _49;
    assign _51 = _50[31:31];
    assign _55 = _51 | _54;
    assign _57 = { _55,
                   _56 };
    assign _15 = 3'b000;
    assign _16 = _4 == _15;
    assign _58 = _16 ? _50 : _57;
    init_done
        the_init_done
        ( .clk(clk),
          .reset(reset),
          .enable(enable),
          .sel(_4),
          .done(_12) );
    assign _1 = _12;
    assign _14 = _1 == _53;
    assign _59 = _14 ? data : _58;
    storage_chunked_neighbor
        the_storage_chunked_neighbor
        ( .clk(clk),
          .reset(reset),
          .enable(enable),
          .sel(_4),
          .curr_data(_59),
          .prev_msb_update(_60),
          .q(_61[159:0]) );
    assign _2 = _61;
    assign _3 = _2;
    assign _28 = _3[159:128];
    assign _27 = 32'b00000000000000000000000000000000;
    assign _26 = _4 == _15;
    assign _29 = _26 ? _28 : _27;
    assign _23 = 3'b001;
    assign _24 = _4 == _23;
    assign _31 = _24 ? _30 : _29;
    assign _21 = 3'b010;
    assign _22 = _4 == _21;
    assign _33 = _22 ? _32 : _31;
    assign _19 = 3'b011;
    assign _20 = _4 == _19;
    assign _35 = _20 ? _34 : _33;
    assign _17 = 3'b100;
    mod_counter
        the_mod_counter
        ( .clk(clk),
          .reset(reset),
          .enable(enable),
          .q(_62[2:0]) );
    assign _4 = _62;
    assign _18 = _4 == _17;
    assign _37 = _18 ? _36 : _35;
    assign _38 = data & _37;
    count_ones
        the_count_ones
        ( .data(_38),
          .count(_63[5:0]) );
    assign _6 = _63;
    store_count
        the_store_count
        ( .clk(clk),
          .reset(reset),
          .enable(enable),
          .data(_6),
          .out_sum(_64[15:0]) );
    assign _10 = _64;
    assign out_sum = _10;

endmodule