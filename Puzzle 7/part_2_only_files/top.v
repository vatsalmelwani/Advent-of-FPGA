module sum_2048_to_64 (
    data,
    sum
);

    input [2047:0] data;
    output [63:0] sum;

    wire [63:0] _66;
    wire [63:0] _64;
    wire [63:0] _62;
    wire [63:0] _60;
    wire [63:0] _58;
    wire [63:0] _56;
    wire [63:0] _54;
    wire [63:0] _52;
    wire [63:0] _50;
    wire [63:0] _48;
    wire [63:0] _46;
    wire [63:0] _44;
    wire [63:0] _42;
    wire [63:0] _40;
    wire [63:0] _38;
    wire [63:0] _36;
    wire [63:0] _34;
    wire [63:0] _32;
    wire [63:0] _30;
    wire [63:0] _28;
    wire [63:0] _26;
    wire [63:0] _24;
    wire [63:0] _22;
    wire [63:0] _20;
    wire [63:0] _18;
    wire [63:0] _16;
    wire [63:0] _14;
    wire [63:0] _12;
    wire [63:0] _10;
    wire [63:0] _8;
    wire [63:0] _6;
    wire [63:0] _4;
    wire [63:0] _3;
    wire [63:0] _5;
    wire [63:0] _7;
    wire [63:0] _9;
    wire [63:0] _11;
    wire [63:0] _13;
    wire [63:0] _15;
    wire [63:0] _17;
    wire [63:0] _19;
    wire [63:0] _21;
    wire [63:0] _23;
    wire [63:0] _25;
    wire [63:0] _27;
    wire [63:0] _29;
    wire [63:0] _31;
    wire [63:0] _33;
    wire [63:0] _35;
    wire [63:0] _37;
    wire [63:0] _39;
    wire [63:0] _41;
    wire [63:0] _43;
    wire [63:0] _45;
    wire [63:0] _47;
    wire [63:0] _49;
    wire [63:0] _51;
    wire [63:0] _53;
    wire [63:0] _55;
    wire [63:0] _57;
    wire [63:0] _59;
    wire [63:0] _61;
    wire [63:0] _63;
    wire [63:0] _65;
    wire [63:0] _67;
    assign _66 = data[2047:1984];
    assign _64 = data[1983:1920];
    assign _62 = data[1919:1856];
    assign _60 = data[1855:1792];
    assign _58 = data[1791:1728];
    assign _56 = data[1727:1664];
    assign _54 = data[1663:1600];
    assign _52 = data[1599:1536];
    assign _50 = data[1535:1472];
    assign _48 = data[1471:1408];
    assign _46 = data[1407:1344];
    assign _44 = data[1343:1280];
    assign _42 = data[1279:1216];
    assign _40 = data[1215:1152];
    assign _38 = data[1151:1088];
    assign _36 = data[1087:1024];
    assign _34 = data[1023:960];
    assign _32 = data[959:896];
    assign _30 = data[895:832];
    assign _28 = data[831:768];
    assign _26 = data[767:704];
    assign _24 = data[703:640];
    assign _22 = data[639:576];
    assign _20 = data[575:512];
    assign _18 = data[511:448];
    assign _16 = data[447:384];
    assign _14 = data[383:320];
    assign _12 = data[319:256];
    assign _10 = data[255:192];
    assign _8 = data[191:128];
    assign _6 = data[127:64];
    assign _4 = data[63:0];
    assign _3 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    assign _5 = _3 + _4;
    assign _7 = _5 + _6;
    assign _9 = _7 + _8;
    assign _11 = _9 + _10;
    assign _13 = _11 + _12;
    assign _15 = _13 + _14;
    assign _17 = _15 + _16;
    assign _19 = _17 + _18;
    assign _21 = _19 + _20;
    assign _23 = _21 + _22;
    assign _25 = _23 + _24;
    assign _27 = _25 + _26;
    assign _29 = _27 + _28;
    assign _31 = _29 + _30;
    assign _33 = _31 + _32;
    assign _35 = _33 + _34;
    assign _37 = _35 + _36;
    assign _39 = _37 + _38;
    assign _41 = _39 + _40;
    assign _43 = _41 + _42;
    assign _45 = _43 + _44;
    assign _47 = _45 + _46;
    assign _49 = _47 + _48;
    assign _51 = _49 + _50;
    assign _53 = _51 + _52;
    assign _55 = _53 + _54;
    assign _57 = _55 + _56;
    assign _59 = _57 + _58;
    assign _61 = _59 + _60;
    assign _63 = _61 + _62;
    assign _65 = _63 + _64;
    assign _67 = _65 + _66;
    assign sum = _67;

endmodule
module accumulate_5_cycles (
    data,
    enable,
    reset,
    clk,
    sum_out
);

    input [2047:0] data;
    input enable;
    input reset;
    input clk;
    output [63:0] sum_out;

    wire [63:0] _21;
    wire [63:0] _9;
    wire [63:0] _2;
    wire [63:0] _19;
    wire [2:0] _17;
    wire [2:0] _15;
    wire [2:0] _12;
    wire [2:0] _13;
    wire _11;
    wire [2:0] _14;
    reg [2:0] _16;
    wire [2:0] _6;
    wire _18;
    wire [63:0] _20;
    reg [63:0] _22;
    wire [63:0] _7;
    assign _21 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    sum_2048_to_64
        the_sum_2048_to_64
        ( .data(data),
          .sum(_9[63:0]) );
    assign _2 = _9;
    assign _19 = _7 + _2;
    assign _17 = 3'b101;
    assign _15 = 3'b000;
    assign _12 = 3'b001;
    assign _13 = _6 + _12;
    assign _11 = _6 == _17;
    assign _14 = _11 ? _6 : _13;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _16 <= _15;
        else
            if (enable)
                _16 <= _14;
    end
    assign _6 = _16;
    assign _18 = _6 == _17;
    assign _20 = _18 ? _7 : _19;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _22 <= _21;
        else
            if (enable)
                _22 <= _20;
    end
    assign _7 = _22;
    assign sum_out = _7;

endmodule
module computation_start (
    enable,
    reset,
    clk,
    sel_delayed,
    q
);

    input enable;
    input reset;
    input clk;
    input [2:0] sel_delayed;
    output q;

    wire _19;
    wire vdd;
    wire _1;
    wire [7:0] _15;
    wire [7:0] _13;
    wire [7:0] _10;
    wire [7:0] _11;
    wire [7:0] _5;
    wire [2:0] _8;
    wire _9;
    wire [7:0] _12;
    reg [7:0] _14;
    wire _16;
    wire _18;
    reg _20;
    assign _19 = 1'b0;
    assign vdd = 1'b1;
    assign _1 = _20;
    assign _15 = 8'b10010000;
    assign _13 = 8'b00000000;
    assign _10 = 8'b00000001;
    assign _11 = _5 + _10;
    assign _5 = _14;
    assign _8 = 3'b100;
    assign _9 = sel_delayed == _8;
    assign _12 = _9 ? _11 : _5;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _14 <= _13;
        else
            if (enable)
                _14 <= _12;
    end
    assign _16 = _14 == _15;
    assign _18 = _16 ? vdd : _1;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _20 <= _19;
        else
            if (enable)
                _20 <= _18;
    end
    assign q = _20;

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
module bram_instance (
    re,
    we,
    din,
    waddr,
    clk,
    raddr,
    dout
);

    input re;
    input we;
    input [2047:0] din;
    input [2:0] waddr;
    input clk;
    input [2:0] raddr;
    output [2047:0] dout;

    reg [2047:0] _9[0:4];
    wire [2047:0] _10;
    reg [2047:0] _11;
    wire [2047:0] _7;
    always @(posedge clk) begin
        if (we)
            _9[waddr] <= din;
    end
    assign _10 = _9[raddr];
    always @(posedge clk) begin
        if (re)
            _11 <= _10;
    end
    assign _7 = _11;
    assign dout = _7;

endmodule
module calc_next_sum (
    x_rs,
    x_ls,
    sum_old,
    sum_new
);

    input [63:0] x_rs;
    input [63:0] x_ls;
    input [63:0] sum_old;
    output [63:0] sum_new;

    wire [63:0] _5;
    wire [63:0] _6;
    assign _5 = sum_old + x_ls;
    assign _6 = _5 + x_rs;
    assign sum_new = _6;

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
module mod_counter_1 (
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
    wire [2:0] _10;
    wire [2:0] _9;
    wire [2:0] _6;
    wire [2:0] _4;
    wire _7;
    wire [2:0] _11;
    reg [2:0] _13;
    assign _12 = 3'b001;
    assign _10 = 3'b000;
    assign _9 = _4 + _12;
    assign _6 = 3'b100;
    assign _4 = _13;
    assign _7 = _4 == _6;
    assign _11 = _7 ? _10 : _9;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _13 <= _12;
        else
            if (enable)
                _13 <= _11;
    end
    assign q = _13;

endmodule
module top (
    data,
    enable,
    reset,
    clk,
    final_sum
);

    input [31:0] data;
    input enable;
    input reset;
    input clk;
    output [63:0] final_sum;

    wire _990;
    wire _991;
    wire [63:0] _113;
    wire [63:0] _110;
    wire _109;
    wire [63:0] _112;
    wire _108;
    wire [63:0] _114;
    wire [63:0] _104;
    wire _102;
    wire [63:0] _105;
    wire _101;
    wire [63:0] _107;
    wire _98;
    wire [62:0] _95;
    wire [63:0] _99;
    wire vdd;
    wire [2:0] _50;
    wire [2:0] _1;
    wire _53;
    wire _54;
    wire [2047:0] _56;
    wire [2047:0] _2;
    wire [2047:0] _3;
    wire [63:0] _89;
    wire _87;
    wire [63:0] _90;
    wire [2:0] _85;
    wire _86;
    wire [63:0] _92;
    wire _84;
    wire [63:0] _94;
    wire _59;
    wire [63:0] _100;
    wire [63:0] _115;
    wire [63:0] _4;
    wire [63:0] _137;
    wire _136;
    wire [63:0] _139;
    wire _135;
    wire [63:0] _141;
    wire [63:0] _131;
    wire _129;
    wire [63:0] _132;
    wire _128;
    wire [63:0] _134;
    wire _125;
    wire [63:0] _126;
    wire [63:0] _120;
    wire _118;
    wire [63:0] _121;
    wire _117;
    wire [63:0] _123;
    wire _116;
    wire [63:0] _127;
    wire [63:0] _142;
    wire [63:0] _5;
    wire [63:0] _164;
    wire _163;
    wire [63:0] _166;
    wire _162;
    wire [63:0] _168;
    wire [63:0] _158;
    wire _156;
    wire [63:0] _159;
    wire _155;
    wire [63:0] _161;
    wire _152;
    wire [63:0] _153;
    wire [63:0] _147;
    wire _145;
    wire [63:0] _148;
    wire _144;
    wire [63:0] _150;
    wire _143;
    wire [63:0] _154;
    wire [63:0] _169;
    wire [63:0] _6;
    wire [63:0] _191;
    wire _190;
    wire [63:0] _193;
    wire _189;
    wire [63:0] _195;
    wire [63:0] _185;
    wire _183;
    wire [63:0] _186;
    wire _182;
    wire [63:0] _188;
    wire _179;
    wire [63:0] _180;
    wire [63:0] _174;
    wire _172;
    wire [63:0] _175;
    wire _171;
    wire [63:0] _177;
    wire _170;
    wire [63:0] _181;
    wire [63:0] _196;
    wire [63:0] _7;
    wire [63:0] _218;
    wire _217;
    wire [63:0] _220;
    wire _216;
    wire [63:0] _222;
    wire [63:0] _212;
    wire _210;
    wire [63:0] _213;
    wire _209;
    wire [63:0] _215;
    wire _206;
    wire [63:0] _207;
    wire [63:0] _201;
    wire _199;
    wire [63:0] _202;
    wire _198;
    wire [63:0] _204;
    wire _197;
    wire [63:0] _208;
    wire [63:0] _223;
    wire [63:0] _8;
    wire [63:0] _245;
    wire _244;
    wire [63:0] _247;
    wire _243;
    wire [63:0] _249;
    wire [63:0] _239;
    wire _237;
    wire [63:0] _240;
    wire _236;
    wire [63:0] _242;
    wire _233;
    wire [63:0] _234;
    wire [63:0] _228;
    wire _226;
    wire [63:0] _229;
    wire _225;
    wire [63:0] _231;
    wire _224;
    wire [63:0] _235;
    wire [63:0] _250;
    wire [63:0] _9;
    wire [63:0] _272;
    wire _271;
    wire [63:0] _274;
    wire _270;
    wire [63:0] _276;
    wire [63:0] _266;
    wire _264;
    wire [63:0] _267;
    wire _263;
    wire [63:0] _269;
    wire _260;
    wire [63:0] _261;
    wire [63:0] _255;
    wire _253;
    wire [63:0] _256;
    wire _252;
    wire [63:0] _258;
    wire _251;
    wire [63:0] _262;
    wire [63:0] _277;
    wire [63:0] _10;
    wire [63:0] _299;
    wire _298;
    wire [63:0] _301;
    wire _297;
    wire [63:0] _303;
    wire [63:0] _293;
    wire _291;
    wire [63:0] _294;
    wire _290;
    wire [63:0] _296;
    wire _287;
    wire [63:0] _288;
    wire [63:0] _282;
    wire _280;
    wire [63:0] _283;
    wire _279;
    wire [63:0] _285;
    wire _278;
    wire [63:0] _289;
    wire [63:0] _304;
    wire [63:0] _11;
    wire [63:0] _326;
    wire _325;
    wire [63:0] _328;
    wire _324;
    wire [63:0] _330;
    wire [63:0] _320;
    wire _318;
    wire [63:0] _321;
    wire _317;
    wire [63:0] _323;
    wire _314;
    wire [63:0] _315;
    wire [63:0] _309;
    wire _307;
    wire [63:0] _310;
    wire _306;
    wire [63:0] _312;
    wire _305;
    wire [63:0] _316;
    wire [63:0] _331;
    wire [63:0] _12;
    wire [63:0] _353;
    wire _352;
    wire [63:0] _355;
    wire _351;
    wire [63:0] _357;
    wire [63:0] _347;
    wire _345;
    wire [63:0] _348;
    wire _344;
    wire [63:0] _350;
    wire _341;
    wire [63:0] _342;
    wire [63:0] _336;
    wire _334;
    wire [63:0] _337;
    wire _333;
    wire [63:0] _339;
    wire _332;
    wire [63:0] _343;
    wire [63:0] _358;
    wire [63:0] _13;
    wire [63:0] _380;
    wire _379;
    wire [63:0] _382;
    wire _378;
    wire [63:0] _384;
    wire [63:0] _374;
    wire _372;
    wire [63:0] _375;
    wire _371;
    wire [63:0] _377;
    wire _368;
    wire [63:0] _369;
    wire [63:0] _363;
    wire _361;
    wire [63:0] _364;
    wire _360;
    wire [63:0] _366;
    wire _359;
    wire [63:0] _370;
    wire [63:0] _385;
    wire [63:0] _14;
    wire [63:0] _407;
    wire _406;
    wire [63:0] _409;
    wire _405;
    wire [63:0] _411;
    wire [63:0] _401;
    wire _399;
    wire [63:0] _402;
    wire _398;
    wire [63:0] _404;
    wire _395;
    wire [63:0] _396;
    wire [63:0] _390;
    wire _388;
    wire [63:0] _391;
    wire _387;
    wire [63:0] _393;
    wire _386;
    wire [63:0] _397;
    wire [63:0] _412;
    wire [63:0] _15;
    wire [63:0] _434;
    wire _433;
    wire [63:0] _436;
    wire _432;
    wire [63:0] _438;
    wire [63:0] _428;
    wire _426;
    wire [63:0] _429;
    wire _425;
    wire [63:0] _431;
    wire _422;
    wire [63:0] _423;
    wire [63:0] _417;
    wire _415;
    wire [63:0] _418;
    wire _414;
    wire [63:0] _420;
    wire _413;
    wire [63:0] _424;
    wire [63:0] _439;
    wire [63:0] _16;
    wire [63:0] _461;
    wire _460;
    wire [63:0] _463;
    wire _459;
    wire [63:0] _465;
    wire [63:0] _455;
    wire _453;
    wire [63:0] _456;
    wire _452;
    wire [63:0] _458;
    wire _449;
    wire [63:0] _450;
    wire [63:0] _444;
    wire _442;
    wire [63:0] _445;
    wire _441;
    wire [63:0] _447;
    wire _440;
    wire [63:0] _451;
    wire [63:0] _466;
    wire [63:0] _17;
    wire [63:0] _488;
    wire _487;
    wire [63:0] _490;
    wire _486;
    wire [63:0] _492;
    wire [63:0] _482;
    wire _480;
    wire [63:0] _483;
    wire _479;
    wire [63:0] _485;
    wire _476;
    wire [63:0] _477;
    wire [63:0] _471;
    wire _469;
    wire [63:0] _472;
    wire _468;
    wire [63:0] _474;
    wire _467;
    wire [63:0] _478;
    wire [63:0] _493;
    wire [63:0] _18;
    wire [63:0] _515;
    wire _514;
    wire [63:0] _517;
    wire _513;
    wire [63:0] _519;
    wire [63:0] _509;
    wire _507;
    wire [63:0] _510;
    wire _506;
    wire [63:0] _512;
    wire _503;
    wire [63:0] _504;
    wire [63:0] _498;
    wire _496;
    wire [63:0] _499;
    wire _495;
    wire [63:0] _501;
    wire _494;
    wire [63:0] _505;
    wire [63:0] _520;
    wire [63:0] _19;
    wire [63:0] _542;
    wire _541;
    wire [63:0] _544;
    wire _540;
    wire [63:0] _546;
    wire [63:0] _536;
    wire _534;
    wire [63:0] _537;
    wire _533;
    wire [63:0] _539;
    wire _530;
    wire [63:0] _531;
    wire [63:0] _525;
    wire _523;
    wire [63:0] _526;
    wire _522;
    wire [63:0] _528;
    wire _521;
    wire [63:0] _532;
    wire [63:0] _547;
    wire [63:0] _20;
    wire [63:0] _569;
    wire _568;
    wire [63:0] _571;
    wire _567;
    wire [63:0] _573;
    wire [63:0] _563;
    wire _561;
    wire [63:0] _564;
    wire _560;
    wire [63:0] _566;
    wire _557;
    wire [63:0] _558;
    wire [63:0] _552;
    wire _550;
    wire [63:0] _553;
    wire _549;
    wire [63:0] _555;
    wire _548;
    wire [63:0] _559;
    wire [63:0] _574;
    wire [63:0] _21;
    wire [63:0] _596;
    wire _595;
    wire [63:0] _598;
    wire _594;
    wire [63:0] _600;
    wire [63:0] _590;
    wire _588;
    wire [63:0] _591;
    wire _587;
    wire [63:0] _593;
    wire _584;
    wire [63:0] _585;
    wire [63:0] _579;
    wire _577;
    wire [63:0] _580;
    wire _576;
    wire [63:0] _582;
    wire _575;
    wire [63:0] _586;
    wire [63:0] _601;
    wire [63:0] _22;
    wire [63:0] _623;
    wire _622;
    wire [63:0] _625;
    wire _621;
    wire [63:0] _627;
    wire [63:0] _617;
    wire _615;
    wire [63:0] _618;
    wire _614;
    wire [63:0] _620;
    wire _611;
    wire [63:0] _612;
    wire [63:0] _606;
    wire _604;
    wire [63:0] _607;
    wire _603;
    wire [63:0] _609;
    wire _602;
    wire [63:0] _613;
    wire [63:0] _628;
    wire [63:0] _23;
    wire [63:0] _650;
    wire _649;
    wire [63:0] _652;
    wire _648;
    wire [63:0] _654;
    wire [63:0] _644;
    wire _642;
    wire [63:0] _645;
    wire _641;
    wire [63:0] _647;
    wire _638;
    wire [63:0] _639;
    wire [63:0] _633;
    wire _631;
    wire [63:0] _634;
    wire _630;
    wire [63:0] _636;
    wire _629;
    wire [63:0] _640;
    wire [63:0] _655;
    wire [63:0] _24;
    wire [63:0] _677;
    wire _676;
    wire [63:0] _679;
    wire _675;
    wire [63:0] _681;
    wire [63:0] _671;
    wire _669;
    wire [63:0] _672;
    wire _668;
    wire [63:0] _674;
    wire _665;
    wire [63:0] _666;
    wire [63:0] _660;
    wire _658;
    wire [63:0] _661;
    wire _657;
    wire [63:0] _663;
    wire _656;
    wire [63:0] _667;
    wire [63:0] _682;
    wire [63:0] _25;
    wire [63:0] _704;
    wire _703;
    wire [63:0] _706;
    wire _702;
    wire [63:0] _708;
    wire [63:0] _698;
    wire _696;
    wire [63:0] _699;
    wire _695;
    wire [63:0] _701;
    wire _692;
    wire [63:0] _693;
    wire [63:0] _687;
    wire _685;
    wire [63:0] _688;
    wire _684;
    wire [63:0] _690;
    wire _683;
    wire [63:0] _694;
    wire [63:0] _709;
    wire [63:0] _26;
    wire [63:0] _731;
    wire _730;
    wire [63:0] _733;
    wire _729;
    wire [63:0] _735;
    wire [63:0] _725;
    wire _723;
    wire [63:0] _726;
    wire _722;
    wire [63:0] _728;
    wire _719;
    wire [63:0] _720;
    wire [63:0] _714;
    wire _712;
    wire [63:0] _715;
    wire _711;
    wire [63:0] _717;
    wire _710;
    wire [63:0] _721;
    wire [63:0] _736;
    wire [63:0] _27;
    wire [63:0] _758;
    wire _757;
    wire [63:0] _760;
    wire _756;
    wire [63:0] _762;
    wire [63:0] _752;
    wire _750;
    wire [63:0] _753;
    wire _749;
    wire [63:0] _755;
    wire _746;
    wire [63:0] _747;
    wire [63:0] _741;
    wire _739;
    wire [63:0] _742;
    wire _738;
    wire [63:0] _744;
    wire _737;
    wire [63:0] _748;
    wire [63:0] _763;
    wire [63:0] _28;
    wire [63:0] _785;
    wire _784;
    wire [63:0] _787;
    wire _783;
    wire [63:0] _789;
    wire [63:0] _779;
    wire _777;
    wire [63:0] _780;
    wire _776;
    wire [63:0] _782;
    wire _773;
    wire [63:0] _774;
    wire [63:0] _768;
    wire _766;
    wire [63:0] _769;
    wire _765;
    wire [63:0] _771;
    wire _764;
    wire [63:0] _775;
    wire [63:0] _790;
    wire [63:0] _29;
    wire [63:0] _812;
    wire _811;
    wire [63:0] _814;
    wire _810;
    wire [63:0] _816;
    wire [63:0] _806;
    wire _804;
    wire [63:0] _807;
    wire _803;
    wire [63:0] _809;
    wire _800;
    wire [63:0] _801;
    wire [63:0] _795;
    wire _793;
    wire [63:0] _796;
    wire _792;
    wire [63:0] _798;
    wire _791;
    wire [63:0] _802;
    wire [63:0] _817;
    wire [63:0] _30;
    wire [63:0] _839;
    wire _838;
    wire [63:0] _841;
    wire _837;
    wire [63:0] _843;
    wire [63:0] _833;
    wire _831;
    wire [63:0] _834;
    wire _830;
    wire [63:0] _836;
    wire _827;
    wire [63:0] _828;
    wire [63:0] _822;
    wire _820;
    wire [63:0] _823;
    wire _819;
    wire [63:0] _825;
    wire _818;
    wire [63:0] _829;
    wire [63:0] _844;
    wire [63:0] _31;
    wire [63:0] _866;
    wire _865;
    wire [63:0] _868;
    wire _864;
    wire [63:0] _870;
    wire [63:0] _860;
    wire _858;
    wire [63:0] _861;
    wire _857;
    wire [63:0] _863;
    wire _854;
    wire [63:0] _855;
    wire [63:0] _849;
    wire _847;
    wire [63:0] _850;
    wire _846;
    wire [63:0] _852;
    wire _845;
    wire [63:0] _856;
    wire [63:0] _871;
    wire [63:0] _32;
    wire [63:0] _893;
    wire _892;
    wire [63:0] _895;
    wire _891;
    wire [63:0] _897;
    wire [63:0] _887;
    wire _885;
    wire [63:0] _888;
    wire _884;
    wire [63:0] _890;
    wire _881;
    wire [63:0] _882;
    wire [63:0] _876;
    wire _874;
    wire [63:0] _877;
    wire _873;
    wire [63:0] _879;
    wire _872;
    wire [63:0] _883;
    wire [63:0] _898;
    wire [63:0] _33;
    wire [63:0] _920;
    wire _919;
    wire [63:0] _922;
    wire _918;
    wire [63:0] _924;
    wire [63:0] _914;
    wire _912;
    wire [63:0] _915;
    wire _911;
    wire [63:0] _917;
    wire _908;
    wire [63:0] _909;
    wire [63:0] _903;
    wire _901;
    wire [63:0] _904;
    wire _900;
    wire [63:0] _906;
    wire _899;
    wire [63:0] _910;
    wire [63:0] _925;
    wire [63:0] _34;
    wire [1919:0] _988;
    wire [63:0] _982;
    wire _981;
    wire [63:0] _984;
    wire _980;
    wire [63:0] _986;
    wire [2047:0] _972;
    reg [2047:0] _973;
    wire [63:0] _974;
    wire _969;
    reg _970;
    wire [63:0] _975;
    wire [2:0] _967;
    wire _968;
    wire [63:0] _977;
    wire _966;
    wire [63:0] _979;
    wire [31:0] _96;
    reg [31:0] _97;
    wire _963;
    wire [63:0] _964;
    wire [63:0] _958;
    wire _956;
    wire [63:0] _959;
    wire [31:0] _79;
    wire [31:0] _77;
    wire [31:0] _75;
    wire [31:0] _73;
    wire _951;
    wire [30:0] _947;
    wire _943;
    reg _945;
    wire [31:0] _937;
    wire [31:0] _938;
    wire [31:0] _939;
    wire [31:0] _940;
    wire [30:0] _934;
    wire [31:0] _935;
    wire [30:0] _930;
    wire [31:0] _932;
    wire [31:0] _936;
    wire [31:0] _941;
    wire _942;
    wire _946;
    wire [31:0] _948;
    wire _929;
    wire [31:0] _949;
    wire _927;
    wire [31:0] _950;
    wire [159:0] _952;
    wire [159:0] _35;
    wire [159:0] _36;
    wire [31:0] _71;
    wire _69;
    wire [31:0] _72;
    wire [2:0] _66;
    wire _67;
    wire [31:0] _74;
    wire [2:0] _64;
    wire _65;
    wire [31:0] _76;
    wire [2:0] _62;
    wire _63;
    wire [31:0] _78;
    wire _61;
    wire [31:0] _80;
    wire [31:0] _81;
    reg [31:0] _83;
    wire _955;
    wire [63:0] _961;
    wire _953;
    wire _38;
    reg _58;
    wire _954;
    wire [63:0] _965;
    wire [63:0] _987;
    wire [63:0] _39;
    wire [2047:0] _989;
    wire [2047:0] _40;
    wire [2047:0] _992;
    wire [2047:0] _41;
    wire [2047:0] _42;
    wire [2:0] _993;
    wire [2:0] _44;
    reg [2:0] _52;
    wire _994;
    wire _45;
    wire [63:0] _995;
    wire [63:0] _48;
    assign _990 = ~ _45;
    assign _991 = enable & _990;
    assign _113 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    assign _110 = _41[63:0];
    assign _109 = ~ _58;
    assign _112 = _109 ? _113 : _110;
    assign _108 = _83[0:0];
    assign _114 = _108 ? _113 : _112;
    assign _104 = _42[127:64];
    assign _102 = _83[1:1];
    assign _105 = _102 ? _104 : _113;
    assign _101 = _83[0:0];
    assign _107 = _101 ? _113 : _105;
    assign _98 = _97[0:0];
    assign _95 = 63'b000000000000000000000000000000000000000000000000000000000000000;
    assign _99 = { _95,
                   _98 };
    assign vdd = 1'b1;
    mod_counter_1
        the_mod_counter_1
        ( .clk(clk),
          .reset(reset),
          .enable(enable),
          .q(_50[2:0]) );
    assign _1 = _50;
    assign _53 = ~ _45;
    assign _54 = enable & _53;
    bram_instance
        the_bram_instance
        ( .clk(clk),
          .waddr(_52),
          .din(_40),
          .we(_54),
          .raddr(_1),
          .re(vdd),
          .dout(_56[2047:0]) );
    assign _2 = _56;
    assign _3 = _2;
    assign _89 = _3[2047:1984];
    assign _87 = _81[31:31];
    assign _90 = _87 ? _89 : _113;
    assign _85 = 3'b100;
    assign _86 = _52 == _85;
    assign _92 = _86 ? _113 : _90;
    assign _84 = _83[0:0];
    assign _94 = _84 ? _113 : _92;
    assign _59 = ~ _58;
    assign _100 = _59 ? _99 : _94;
    calc_next_sum
        the_calc_next_sum
        ( .x_ls(_100),
          .x_rs(_107),
          .sum_old(_114),
          .sum_new(_115[63:0]) );
    assign _4 = _115;
    assign _137 = _41[127:64];
    assign _136 = ~ _58;
    assign _139 = _136 ? _113 : _137;
    assign _135 = _83[1:1];
    assign _141 = _135 ? _113 : _139;
    assign _131 = _42[63:0];
    assign _129 = _83[0:0];
    assign _132 = _129 ? _131 : _113;
    assign _128 = _83[1:1];
    assign _134 = _128 ? _113 : _132;
    assign _125 = _97[1:1];
    assign _126 = { _95,
                    _125 };
    assign _120 = _42[191:128];
    assign _118 = _83[2:2];
    assign _121 = _118 ? _120 : _113;
    assign _117 = _83[1:1];
    assign _123 = _117 ? _113 : _121;
    assign _116 = ~ _58;
    assign _127 = _116 ? _126 : _123;
    calc_next_sum
        the_calc_next_sum_1
        ( .x_ls(_127),
          .x_rs(_134),
          .sum_old(_141),
          .sum_new(_142[63:0]) );
    assign _5 = _142;
    assign _164 = _41[191:128];
    assign _163 = ~ _58;
    assign _166 = _163 ? _113 : _164;
    assign _162 = _83[2:2];
    assign _168 = _162 ? _113 : _166;
    assign _158 = _42[127:64];
    assign _156 = _83[1:1];
    assign _159 = _156 ? _158 : _113;
    assign _155 = _83[2:2];
    assign _161 = _155 ? _113 : _159;
    assign _152 = _97[2:2];
    assign _153 = { _95,
                    _152 };
    assign _147 = _42[255:192];
    assign _145 = _83[3:3];
    assign _148 = _145 ? _147 : _113;
    assign _144 = _83[2:2];
    assign _150 = _144 ? _113 : _148;
    assign _143 = ~ _58;
    assign _154 = _143 ? _153 : _150;
    calc_next_sum
        the_calc_next_sum_2
        ( .x_ls(_154),
          .x_rs(_161),
          .sum_old(_168),
          .sum_new(_169[63:0]) );
    assign _6 = _169;
    assign _191 = _41[255:192];
    assign _190 = ~ _58;
    assign _193 = _190 ? _113 : _191;
    assign _189 = _83[3:3];
    assign _195 = _189 ? _113 : _193;
    assign _185 = _42[191:128];
    assign _183 = _83[2:2];
    assign _186 = _183 ? _185 : _113;
    assign _182 = _83[3:3];
    assign _188 = _182 ? _113 : _186;
    assign _179 = _97[3:3];
    assign _180 = { _95,
                    _179 };
    assign _174 = _42[319:256];
    assign _172 = _83[4:4];
    assign _175 = _172 ? _174 : _113;
    assign _171 = _83[3:3];
    assign _177 = _171 ? _113 : _175;
    assign _170 = ~ _58;
    assign _181 = _170 ? _180 : _177;
    calc_next_sum
        the_calc_next_sum_3
        ( .x_ls(_181),
          .x_rs(_188),
          .sum_old(_195),
          .sum_new(_196[63:0]) );
    assign _7 = _196;
    assign _218 = _41[319:256];
    assign _217 = ~ _58;
    assign _220 = _217 ? _113 : _218;
    assign _216 = _83[4:4];
    assign _222 = _216 ? _113 : _220;
    assign _212 = _42[255:192];
    assign _210 = _83[3:3];
    assign _213 = _210 ? _212 : _113;
    assign _209 = _83[4:4];
    assign _215 = _209 ? _113 : _213;
    assign _206 = _97[4:4];
    assign _207 = { _95,
                    _206 };
    assign _201 = _42[383:320];
    assign _199 = _83[5:5];
    assign _202 = _199 ? _201 : _113;
    assign _198 = _83[4:4];
    assign _204 = _198 ? _113 : _202;
    assign _197 = ~ _58;
    assign _208 = _197 ? _207 : _204;
    calc_next_sum
        the_calc_next_sum_4
        ( .x_ls(_208),
          .x_rs(_215),
          .sum_old(_222),
          .sum_new(_223[63:0]) );
    assign _8 = _223;
    assign _245 = _41[383:320];
    assign _244 = ~ _58;
    assign _247 = _244 ? _113 : _245;
    assign _243 = _83[5:5];
    assign _249 = _243 ? _113 : _247;
    assign _239 = _42[319:256];
    assign _237 = _83[4:4];
    assign _240 = _237 ? _239 : _113;
    assign _236 = _83[5:5];
    assign _242 = _236 ? _113 : _240;
    assign _233 = _97[5:5];
    assign _234 = { _95,
                    _233 };
    assign _228 = _42[447:384];
    assign _226 = _83[6:6];
    assign _229 = _226 ? _228 : _113;
    assign _225 = _83[5:5];
    assign _231 = _225 ? _113 : _229;
    assign _224 = ~ _58;
    assign _235 = _224 ? _234 : _231;
    calc_next_sum
        the_calc_next_sum_5
        ( .x_ls(_235),
          .x_rs(_242),
          .sum_old(_249),
          .sum_new(_250[63:0]) );
    assign _9 = _250;
    assign _272 = _41[447:384];
    assign _271 = ~ _58;
    assign _274 = _271 ? _113 : _272;
    assign _270 = _83[6:6];
    assign _276 = _270 ? _113 : _274;
    assign _266 = _42[383:320];
    assign _264 = _83[5:5];
    assign _267 = _264 ? _266 : _113;
    assign _263 = _83[6:6];
    assign _269 = _263 ? _113 : _267;
    assign _260 = _97[6:6];
    assign _261 = { _95,
                    _260 };
    assign _255 = _42[511:448];
    assign _253 = _83[7:7];
    assign _256 = _253 ? _255 : _113;
    assign _252 = _83[6:6];
    assign _258 = _252 ? _113 : _256;
    assign _251 = ~ _58;
    assign _262 = _251 ? _261 : _258;
    calc_next_sum
        the_calc_next_sum_6
        ( .x_ls(_262),
          .x_rs(_269),
          .sum_old(_276),
          .sum_new(_277[63:0]) );
    assign _10 = _277;
    assign _299 = _41[511:448];
    assign _298 = ~ _58;
    assign _301 = _298 ? _113 : _299;
    assign _297 = _83[7:7];
    assign _303 = _297 ? _113 : _301;
    assign _293 = _42[447:384];
    assign _291 = _83[6:6];
    assign _294 = _291 ? _293 : _113;
    assign _290 = _83[7:7];
    assign _296 = _290 ? _113 : _294;
    assign _287 = _97[7:7];
    assign _288 = { _95,
                    _287 };
    assign _282 = _42[575:512];
    assign _280 = _83[8:8];
    assign _283 = _280 ? _282 : _113;
    assign _279 = _83[7:7];
    assign _285 = _279 ? _113 : _283;
    assign _278 = ~ _58;
    assign _289 = _278 ? _288 : _285;
    calc_next_sum
        the_calc_next_sum_7
        ( .x_ls(_289),
          .x_rs(_296),
          .sum_old(_303),
          .sum_new(_304[63:0]) );
    assign _11 = _304;
    assign _326 = _41[575:512];
    assign _325 = ~ _58;
    assign _328 = _325 ? _113 : _326;
    assign _324 = _83[8:8];
    assign _330 = _324 ? _113 : _328;
    assign _320 = _42[511:448];
    assign _318 = _83[7:7];
    assign _321 = _318 ? _320 : _113;
    assign _317 = _83[8:8];
    assign _323 = _317 ? _113 : _321;
    assign _314 = _97[8:8];
    assign _315 = { _95,
                    _314 };
    assign _309 = _42[639:576];
    assign _307 = _83[9:9];
    assign _310 = _307 ? _309 : _113;
    assign _306 = _83[8:8];
    assign _312 = _306 ? _113 : _310;
    assign _305 = ~ _58;
    assign _316 = _305 ? _315 : _312;
    calc_next_sum
        the_calc_next_sum_8
        ( .x_ls(_316),
          .x_rs(_323),
          .sum_old(_330),
          .sum_new(_331[63:0]) );
    assign _12 = _331;
    assign _353 = _41[639:576];
    assign _352 = ~ _58;
    assign _355 = _352 ? _113 : _353;
    assign _351 = _83[9:9];
    assign _357 = _351 ? _113 : _355;
    assign _347 = _42[575:512];
    assign _345 = _83[8:8];
    assign _348 = _345 ? _347 : _113;
    assign _344 = _83[9:9];
    assign _350 = _344 ? _113 : _348;
    assign _341 = _97[9:9];
    assign _342 = { _95,
                    _341 };
    assign _336 = _42[703:640];
    assign _334 = _83[10:10];
    assign _337 = _334 ? _336 : _113;
    assign _333 = _83[9:9];
    assign _339 = _333 ? _113 : _337;
    assign _332 = ~ _58;
    assign _343 = _332 ? _342 : _339;
    calc_next_sum
        the_calc_next_sum_9
        ( .x_ls(_343),
          .x_rs(_350),
          .sum_old(_357),
          .sum_new(_358[63:0]) );
    assign _13 = _358;
    assign _380 = _41[703:640];
    assign _379 = ~ _58;
    assign _382 = _379 ? _113 : _380;
    assign _378 = _83[10:10];
    assign _384 = _378 ? _113 : _382;
    assign _374 = _42[639:576];
    assign _372 = _83[9:9];
    assign _375 = _372 ? _374 : _113;
    assign _371 = _83[10:10];
    assign _377 = _371 ? _113 : _375;
    assign _368 = _97[10:10];
    assign _369 = { _95,
                    _368 };
    assign _363 = _42[767:704];
    assign _361 = _83[11:11];
    assign _364 = _361 ? _363 : _113;
    assign _360 = _83[10:10];
    assign _366 = _360 ? _113 : _364;
    assign _359 = ~ _58;
    assign _370 = _359 ? _369 : _366;
    calc_next_sum
        the_calc_next_sum_10
        ( .x_ls(_370),
          .x_rs(_377),
          .sum_old(_384),
          .sum_new(_385[63:0]) );
    assign _14 = _385;
    assign _407 = _41[767:704];
    assign _406 = ~ _58;
    assign _409 = _406 ? _113 : _407;
    assign _405 = _83[11:11];
    assign _411 = _405 ? _113 : _409;
    assign _401 = _42[703:640];
    assign _399 = _83[10:10];
    assign _402 = _399 ? _401 : _113;
    assign _398 = _83[11:11];
    assign _404 = _398 ? _113 : _402;
    assign _395 = _97[11:11];
    assign _396 = { _95,
                    _395 };
    assign _390 = _42[831:768];
    assign _388 = _83[12:12];
    assign _391 = _388 ? _390 : _113;
    assign _387 = _83[11:11];
    assign _393 = _387 ? _113 : _391;
    assign _386 = ~ _58;
    assign _397 = _386 ? _396 : _393;
    calc_next_sum
        the_calc_next_sum_11
        ( .x_ls(_397),
          .x_rs(_404),
          .sum_old(_411),
          .sum_new(_412[63:0]) );
    assign _15 = _412;
    assign _434 = _41[831:768];
    assign _433 = ~ _58;
    assign _436 = _433 ? _113 : _434;
    assign _432 = _83[12:12];
    assign _438 = _432 ? _113 : _436;
    assign _428 = _42[767:704];
    assign _426 = _83[11:11];
    assign _429 = _426 ? _428 : _113;
    assign _425 = _83[12:12];
    assign _431 = _425 ? _113 : _429;
    assign _422 = _97[12:12];
    assign _423 = { _95,
                    _422 };
    assign _417 = _42[895:832];
    assign _415 = _83[13:13];
    assign _418 = _415 ? _417 : _113;
    assign _414 = _83[12:12];
    assign _420 = _414 ? _113 : _418;
    assign _413 = ~ _58;
    assign _424 = _413 ? _423 : _420;
    calc_next_sum
        the_calc_next_sum_12
        ( .x_ls(_424),
          .x_rs(_431),
          .sum_old(_438),
          .sum_new(_439[63:0]) );
    assign _16 = _439;
    assign _461 = _41[895:832];
    assign _460 = ~ _58;
    assign _463 = _460 ? _113 : _461;
    assign _459 = _83[13:13];
    assign _465 = _459 ? _113 : _463;
    assign _455 = _42[831:768];
    assign _453 = _83[12:12];
    assign _456 = _453 ? _455 : _113;
    assign _452 = _83[13:13];
    assign _458 = _452 ? _113 : _456;
    assign _449 = _97[13:13];
    assign _450 = { _95,
                    _449 };
    assign _444 = _42[959:896];
    assign _442 = _83[14:14];
    assign _445 = _442 ? _444 : _113;
    assign _441 = _83[13:13];
    assign _447 = _441 ? _113 : _445;
    assign _440 = ~ _58;
    assign _451 = _440 ? _450 : _447;
    calc_next_sum
        the_calc_next_sum_13
        ( .x_ls(_451),
          .x_rs(_458),
          .sum_old(_465),
          .sum_new(_466[63:0]) );
    assign _17 = _466;
    assign _488 = _41[959:896];
    assign _487 = ~ _58;
    assign _490 = _487 ? _113 : _488;
    assign _486 = _83[14:14];
    assign _492 = _486 ? _113 : _490;
    assign _482 = _42[895:832];
    assign _480 = _83[13:13];
    assign _483 = _480 ? _482 : _113;
    assign _479 = _83[14:14];
    assign _485 = _479 ? _113 : _483;
    assign _476 = _97[14:14];
    assign _477 = { _95,
                    _476 };
    assign _471 = _42[1023:960];
    assign _469 = _83[15:15];
    assign _472 = _469 ? _471 : _113;
    assign _468 = _83[14:14];
    assign _474 = _468 ? _113 : _472;
    assign _467 = ~ _58;
    assign _478 = _467 ? _477 : _474;
    calc_next_sum
        the_calc_next_sum_14
        ( .x_ls(_478),
          .x_rs(_485),
          .sum_old(_492),
          .sum_new(_493[63:0]) );
    assign _18 = _493;
    assign _515 = _41[1023:960];
    assign _514 = ~ _58;
    assign _517 = _514 ? _113 : _515;
    assign _513 = _83[15:15];
    assign _519 = _513 ? _113 : _517;
    assign _509 = _42[959:896];
    assign _507 = _83[14:14];
    assign _510 = _507 ? _509 : _113;
    assign _506 = _83[15:15];
    assign _512 = _506 ? _113 : _510;
    assign _503 = _97[15:15];
    assign _504 = { _95,
                    _503 };
    assign _498 = _42[1087:1024];
    assign _496 = _83[16:16];
    assign _499 = _496 ? _498 : _113;
    assign _495 = _83[15:15];
    assign _501 = _495 ? _113 : _499;
    assign _494 = ~ _58;
    assign _505 = _494 ? _504 : _501;
    calc_next_sum
        the_calc_next_sum_15
        ( .x_ls(_505),
          .x_rs(_512),
          .sum_old(_519),
          .sum_new(_520[63:0]) );
    assign _19 = _520;
    assign _542 = _41[1087:1024];
    assign _541 = ~ _58;
    assign _544 = _541 ? _113 : _542;
    assign _540 = _83[16:16];
    assign _546 = _540 ? _113 : _544;
    assign _536 = _42[1023:960];
    assign _534 = _83[15:15];
    assign _537 = _534 ? _536 : _113;
    assign _533 = _83[16:16];
    assign _539 = _533 ? _113 : _537;
    assign _530 = _97[16:16];
    assign _531 = { _95,
                    _530 };
    assign _525 = _42[1151:1088];
    assign _523 = _83[17:17];
    assign _526 = _523 ? _525 : _113;
    assign _522 = _83[16:16];
    assign _528 = _522 ? _113 : _526;
    assign _521 = ~ _58;
    assign _532 = _521 ? _531 : _528;
    calc_next_sum
        the_calc_next_sum_16
        ( .x_ls(_532),
          .x_rs(_539),
          .sum_old(_546),
          .sum_new(_547[63:0]) );
    assign _20 = _547;
    assign _569 = _41[1151:1088];
    assign _568 = ~ _58;
    assign _571 = _568 ? _113 : _569;
    assign _567 = _83[17:17];
    assign _573 = _567 ? _113 : _571;
    assign _563 = _42[1087:1024];
    assign _561 = _83[16:16];
    assign _564 = _561 ? _563 : _113;
    assign _560 = _83[17:17];
    assign _566 = _560 ? _113 : _564;
    assign _557 = _97[17:17];
    assign _558 = { _95,
                    _557 };
    assign _552 = _42[1215:1152];
    assign _550 = _83[18:18];
    assign _553 = _550 ? _552 : _113;
    assign _549 = _83[17:17];
    assign _555 = _549 ? _113 : _553;
    assign _548 = ~ _58;
    assign _559 = _548 ? _558 : _555;
    calc_next_sum
        the_calc_next_sum_17
        ( .x_ls(_559),
          .x_rs(_566),
          .sum_old(_573),
          .sum_new(_574[63:0]) );
    assign _21 = _574;
    assign _596 = _41[1215:1152];
    assign _595 = ~ _58;
    assign _598 = _595 ? _113 : _596;
    assign _594 = _83[18:18];
    assign _600 = _594 ? _113 : _598;
    assign _590 = _42[1151:1088];
    assign _588 = _83[17:17];
    assign _591 = _588 ? _590 : _113;
    assign _587 = _83[18:18];
    assign _593 = _587 ? _113 : _591;
    assign _584 = _97[18:18];
    assign _585 = { _95,
                    _584 };
    assign _579 = _42[1279:1216];
    assign _577 = _83[19:19];
    assign _580 = _577 ? _579 : _113;
    assign _576 = _83[18:18];
    assign _582 = _576 ? _113 : _580;
    assign _575 = ~ _58;
    assign _586 = _575 ? _585 : _582;
    calc_next_sum
        the_calc_next_sum_18
        ( .x_ls(_586),
          .x_rs(_593),
          .sum_old(_600),
          .sum_new(_601[63:0]) );
    assign _22 = _601;
    assign _623 = _41[1279:1216];
    assign _622 = ~ _58;
    assign _625 = _622 ? _113 : _623;
    assign _621 = _83[19:19];
    assign _627 = _621 ? _113 : _625;
    assign _617 = _42[1215:1152];
    assign _615 = _83[18:18];
    assign _618 = _615 ? _617 : _113;
    assign _614 = _83[19:19];
    assign _620 = _614 ? _113 : _618;
    assign _611 = _97[19:19];
    assign _612 = { _95,
                    _611 };
    assign _606 = _42[1343:1280];
    assign _604 = _83[20:20];
    assign _607 = _604 ? _606 : _113;
    assign _603 = _83[19:19];
    assign _609 = _603 ? _113 : _607;
    assign _602 = ~ _58;
    assign _613 = _602 ? _612 : _609;
    calc_next_sum
        the_calc_next_sum_19
        ( .x_ls(_613),
          .x_rs(_620),
          .sum_old(_627),
          .sum_new(_628[63:0]) );
    assign _23 = _628;
    assign _650 = _41[1343:1280];
    assign _649 = ~ _58;
    assign _652 = _649 ? _113 : _650;
    assign _648 = _83[20:20];
    assign _654 = _648 ? _113 : _652;
    assign _644 = _42[1279:1216];
    assign _642 = _83[19:19];
    assign _645 = _642 ? _644 : _113;
    assign _641 = _83[20:20];
    assign _647 = _641 ? _113 : _645;
    assign _638 = _97[20:20];
    assign _639 = { _95,
                    _638 };
    assign _633 = _42[1407:1344];
    assign _631 = _83[21:21];
    assign _634 = _631 ? _633 : _113;
    assign _630 = _83[20:20];
    assign _636 = _630 ? _113 : _634;
    assign _629 = ~ _58;
    assign _640 = _629 ? _639 : _636;
    calc_next_sum
        the_calc_next_sum_20
        ( .x_ls(_640),
          .x_rs(_647),
          .sum_old(_654),
          .sum_new(_655[63:0]) );
    assign _24 = _655;
    assign _677 = _41[1407:1344];
    assign _676 = ~ _58;
    assign _679 = _676 ? _113 : _677;
    assign _675 = _83[21:21];
    assign _681 = _675 ? _113 : _679;
    assign _671 = _42[1343:1280];
    assign _669 = _83[20:20];
    assign _672 = _669 ? _671 : _113;
    assign _668 = _83[21:21];
    assign _674 = _668 ? _113 : _672;
    assign _665 = _97[21:21];
    assign _666 = { _95,
                    _665 };
    assign _660 = _42[1471:1408];
    assign _658 = _83[22:22];
    assign _661 = _658 ? _660 : _113;
    assign _657 = _83[21:21];
    assign _663 = _657 ? _113 : _661;
    assign _656 = ~ _58;
    assign _667 = _656 ? _666 : _663;
    calc_next_sum
        the_calc_next_sum_21
        ( .x_ls(_667),
          .x_rs(_674),
          .sum_old(_681),
          .sum_new(_682[63:0]) );
    assign _25 = _682;
    assign _704 = _41[1471:1408];
    assign _703 = ~ _58;
    assign _706 = _703 ? _113 : _704;
    assign _702 = _83[22:22];
    assign _708 = _702 ? _113 : _706;
    assign _698 = _42[1407:1344];
    assign _696 = _83[21:21];
    assign _699 = _696 ? _698 : _113;
    assign _695 = _83[22:22];
    assign _701 = _695 ? _113 : _699;
    assign _692 = _97[22:22];
    assign _693 = { _95,
                    _692 };
    assign _687 = _42[1535:1472];
    assign _685 = _83[23:23];
    assign _688 = _685 ? _687 : _113;
    assign _684 = _83[22:22];
    assign _690 = _684 ? _113 : _688;
    assign _683 = ~ _58;
    assign _694 = _683 ? _693 : _690;
    calc_next_sum
        the_calc_next_sum_22
        ( .x_ls(_694),
          .x_rs(_701),
          .sum_old(_708),
          .sum_new(_709[63:0]) );
    assign _26 = _709;
    assign _731 = _41[1535:1472];
    assign _730 = ~ _58;
    assign _733 = _730 ? _113 : _731;
    assign _729 = _83[23:23];
    assign _735 = _729 ? _113 : _733;
    assign _725 = _42[1471:1408];
    assign _723 = _83[22:22];
    assign _726 = _723 ? _725 : _113;
    assign _722 = _83[23:23];
    assign _728 = _722 ? _113 : _726;
    assign _719 = _97[23:23];
    assign _720 = { _95,
                    _719 };
    assign _714 = _42[1599:1536];
    assign _712 = _83[24:24];
    assign _715 = _712 ? _714 : _113;
    assign _711 = _83[23:23];
    assign _717 = _711 ? _113 : _715;
    assign _710 = ~ _58;
    assign _721 = _710 ? _720 : _717;
    calc_next_sum
        the_calc_next_sum_23
        ( .x_ls(_721),
          .x_rs(_728),
          .sum_old(_735),
          .sum_new(_736[63:0]) );
    assign _27 = _736;
    assign _758 = _41[1599:1536];
    assign _757 = ~ _58;
    assign _760 = _757 ? _113 : _758;
    assign _756 = _83[24:24];
    assign _762 = _756 ? _113 : _760;
    assign _752 = _42[1535:1472];
    assign _750 = _83[23:23];
    assign _753 = _750 ? _752 : _113;
    assign _749 = _83[24:24];
    assign _755 = _749 ? _113 : _753;
    assign _746 = _97[24:24];
    assign _747 = { _95,
                    _746 };
    assign _741 = _42[1663:1600];
    assign _739 = _83[25:25];
    assign _742 = _739 ? _741 : _113;
    assign _738 = _83[24:24];
    assign _744 = _738 ? _113 : _742;
    assign _737 = ~ _58;
    assign _748 = _737 ? _747 : _744;
    calc_next_sum
        the_calc_next_sum_24
        ( .x_ls(_748),
          .x_rs(_755),
          .sum_old(_762),
          .sum_new(_763[63:0]) );
    assign _28 = _763;
    assign _785 = _41[1663:1600];
    assign _784 = ~ _58;
    assign _787 = _784 ? _113 : _785;
    assign _783 = _83[25:25];
    assign _789 = _783 ? _113 : _787;
    assign _779 = _42[1599:1536];
    assign _777 = _83[24:24];
    assign _780 = _777 ? _779 : _113;
    assign _776 = _83[25:25];
    assign _782 = _776 ? _113 : _780;
    assign _773 = _97[25:25];
    assign _774 = { _95,
                    _773 };
    assign _768 = _42[1727:1664];
    assign _766 = _83[26:26];
    assign _769 = _766 ? _768 : _113;
    assign _765 = _83[25:25];
    assign _771 = _765 ? _113 : _769;
    assign _764 = ~ _58;
    assign _775 = _764 ? _774 : _771;
    calc_next_sum
        the_calc_next_sum_25
        ( .x_ls(_775),
          .x_rs(_782),
          .sum_old(_789),
          .sum_new(_790[63:0]) );
    assign _29 = _790;
    assign _812 = _41[1727:1664];
    assign _811 = ~ _58;
    assign _814 = _811 ? _113 : _812;
    assign _810 = _83[26:26];
    assign _816 = _810 ? _113 : _814;
    assign _806 = _42[1663:1600];
    assign _804 = _83[25:25];
    assign _807 = _804 ? _806 : _113;
    assign _803 = _83[26:26];
    assign _809 = _803 ? _113 : _807;
    assign _800 = _97[26:26];
    assign _801 = { _95,
                    _800 };
    assign _795 = _42[1791:1728];
    assign _793 = _83[27:27];
    assign _796 = _793 ? _795 : _113;
    assign _792 = _83[26:26];
    assign _798 = _792 ? _113 : _796;
    assign _791 = ~ _58;
    assign _802 = _791 ? _801 : _798;
    calc_next_sum
        the_calc_next_sum_26
        ( .x_ls(_802),
          .x_rs(_809),
          .sum_old(_816),
          .sum_new(_817[63:0]) );
    assign _30 = _817;
    assign _839 = _41[1791:1728];
    assign _838 = ~ _58;
    assign _841 = _838 ? _113 : _839;
    assign _837 = _83[27:27];
    assign _843 = _837 ? _113 : _841;
    assign _833 = _42[1727:1664];
    assign _831 = _83[26:26];
    assign _834 = _831 ? _833 : _113;
    assign _830 = _83[27:27];
    assign _836 = _830 ? _113 : _834;
    assign _827 = _97[27:27];
    assign _828 = { _95,
                    _827 };
    assign _822 = _42[1855:1792];
    assign _820 = _83[28:28];
    assign _823 = _820 ? _822 : _113;
    assign _819 = _83[27:27];
    assign _825 = _819 ? _113 : _823;
    assign _818 = ~ _58;
    assign _829 = _818 ? _828 : _825;
    calc_next_sum
        the_calc_next_sum_27
        ( .x_ls(_829),
          .x_rs(_836),
          .sum_old(_843),
          .sum_new(_844[63:0]) );
    assign _31 = _844;
    assign _866 = _41[1855:1792];
    assign _865 = ~ _58;
    assign _868 = _865 ? _113 : _866;
    assign _864 = _83[28:28];
    assign _870 = _864 ? _113 : _868;
    assign _860 = _42[1791:1728];
    assign _858 = _83[27:27];
    assign _861 = _858 ? _860 : _113;
    assign _857 = _83[28:28];
    assign _863 = _857 ? _113 : _861;
    assign _854 = _97[28:28];
    assign _855 = { _95,
                    _854 };
    assign _849 = _42[1919:1856];
    assign _847 = _83[29:29];
    assign _850 = _847 ? _849 : _113;
    assign _846 = _83[28:28];
    assign _852 = _846 ? _113 : _850;
    assign _845 = ~ _58;
    assign _856 = _845 ? _855 : _852;
    calc_next_sum
        the_calc_next_sum_28
        ( .x_ls(_856),
          .x_rs(_863),
          .sum_old(_870),
          .sum_new(_871[63:0]) );
    assign _32 = _871;
    assign _893 = _41[1919:1856];
    assign _892 = ~ _58;
    assign _895 = _892 ? _113 : _893;
    assign _891 = _83[29:29];
    assign _897 = _891 ? _113 : _895;
    assign _887 = _42[1855:1792];
    assign _885 = _83[28:28];
    assign _888 = _885 ? _887 : _113;
    assign _884 = _83[29:29];
    assign _890 = _884 ? _113 : _888;
    assign _881 = _97[29:29];
    assign _882 = { _95,
                    _881 };
    assign _876 = _42[1983:1920];
    assign _874 = _83[30:30];
    assign _877 = _874 ? _876 : _113;
    assign _873 = _83[29:29];
    assign _879 = _873 ? _113 : _877;
    assign _872 = ~ _58;
    assign _883 = _872 ? _882 : _879;
    calc_next_sum
        the_calc_next_sum_29
        ( .x_ls(_883),
          .x_rs(_890),
          .sum_old(_897),
          .sum_new(_898[63:0]) );
    assign _33 = _898;
    assign _920 = _41[1983:1920];
    assign _919 = ~ _58;
    assign _922 = _919 ? _113 : _920;
    assign _918 = _83[30:30];
    assign _924 = _918 ? _113 : _922;
    assign _914 = _42[1919:1856];
    assign _912 = _83[29:29];
    assign _915 = _912 ? _914 : _113;
    assign _911 = _83[30:30];
    assign _917 = _911 ? _113 : _915;
    assign _908 = _97[30:30];
    assign _909 = { _95,
                    _908 };
    assign _903 = _42[2047:1984];
    assign _901 = _83[31:31];
    assign _904 = _901 ? _903 : _113;
    assign _900 = _83[30:30];
    assign _906 = _900 ? _113 : _904;
    assign _899 = ~ _58;
    assign _910 = _899 ? _909 : _906;
    calc_next_sum
        the_calc_next_sum_30
        ( .x_ls(_910),
          .x_rs(_917),
          .sum_old(_924),
          .sum_new(_925[63:0]) );
    assign _34 = _925;
    assign _988 = { _34,
                    _33,
                    _32,
                    _31,
                    _30,
                    _29,
                    _28,
                    _27,
                    _26,
                    _25,
                    _24,
                    _23,
                    _22,
                    _21,
                    _20,
                    _19,
                    _18,
                    _17,
                    _16,
                    _15,
                    _14,
                    _13,
                    _12,
                    _11,
                    _10,
                    _9,
                    _8,
                    _7,
                    _6,
                    _5 };
    assign _982 = _41[2047:1984];
    assign _981 = ~ _58;
    assign _984 = _981 ? _113 : _982;
    assign _980 = _83[31:31];
    assign _986 = _980 ? _113 : _984;
    assign _972 = 2048'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _973 <= _972;
        else
            if (enable)
                _973 <= _42;
    end
    assign _974 = _973[63:0];
    assign _969 = 1'b0;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _970 <= _969;
        else
            if (enable)
                _970 <= _945;
    end
    assign _975 = _970 ? _974 : _113;
    assign _967 = 3'b000;
    assign _968 = _52 == _967;
    assign _977 = _968 ? _113 : _975;
    assign _966 = _83[31:31];
    assign _979 = _966 ? _113 : _977;
    assign _96 = 32'b00000000000000000000000000000000;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _97 <= _96;
        else
            if (enable)
                _97 <= data;
    end
    assign _963 = _97[31:31];
    assign _964 = { _95,
                    _963 };
    assign _958 = _42[1983:1920];
    assign _956 = _83[30:30];
    assign _959 = _956 ? _958 : _113;
    assign _79 = _36[31:0];
    assign _77 = _36[63:32];
    assign _75 = _36[95:64];
    assign _73 = _36[127:96];
    assign _951 = _81[31:31];
    assign _947 = _941[30:0];
    assign _943 = _81[0:0];
    always @(posedge clk or posedge reset) begin
        if (reset)
            _945 <= _969;
        else
            if (enable)
                _945 <= _943;
    end
    assign _937 = ~ _80;
    assign _938 = _937 | _81;
    assign _939 = ~ _938;
    assign _940 = _939 & _80;
    assign _934 = _81[31:1];
    assign _935 = { _969,
                    _934 };
    assign _930 = _81[30:0];
    assign _932 = { _930,
                    _969 };
    assign _936 = _932 | _935;
    assign _941 = _936 | _940;
    assign _942 = _941[31:31];
    assign _946 = _942 | _945;
    assign _948 = { _946,
                    _947 };
    assign _929 = _44 == _967;
    assign _949 = _929 ? _941 : _948;
    assign _927 = _38 == _969;
    assign _950 = _927 ? data : _949;
    storage_chunked_neighbor
        the_storage_chunked_neighbor
        ( .clk(clk),
          .reset(reset),
          .enable(enable),
          .sel(_44),
          .curr_data(_950),
          .prev_msb_update(_951),
          .q(_952[159:0]) );
    assign _35 = _952;
    assign _36 = _35;
    assign _71 = _36[159:128];
    assign _69 = _44 == _967;
    assign _72 = _69 ? _71 : _96;
    assign _66 = 3'b001;
    assign _67 = _44 == _66;
    assign _74 = _67 ? _73 : _72;
    assign _64 = 3'b010;
    assign _65 = _44 == _64;
    assign _76 = _65 ? _75 : _74;
    assign _62 = 3'b011;
    assign _63 = _44 == _62;
    assign _78 = _63 ? _77 : _76;
    assign _61 = _44 == _85;
    assign _80 = _61 ? _79 : _78;
    assign _81 = data & _80;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _83 <= _96;
        else
            if (enable)
                _83 <= _81;
    end
    assign _955 = _83[31:31];
    assign _961 = _955 ? _113 : _959;
    init_done
        the_init_done
        ( .clk(clk),
          .reset(reset),
          .enable(enable),
          .sel(_44),
          .done(_953) );
    assign _38 = _953;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _58 <= _969;
        else
            if (enable)
                _58 <= _38;
    end
    assign _954 = ~ _58;
    assign _965 = _954 ? _964 : _961;
    calc_next_sum
        the_calc_next_sum_31
        ( .x_ls(_965),
          .x_rs(_979),
          .sum_old(_986),
          .sum_new(_987[63:0]) );
    assign _39 = _987;
    assign _989 = { _39,
                    _988,
                    _4 };
    assign _40 = _989;
    bram_instance
        the_bram_instance_1
        ( .clk(clk),
          .waddr(_52),
          .din(_40),
          .we(_991),
          .raddr(_44),
          .re(vdd),
          .dout(_992[2047:0]) );
    assign _41 = _992;
    assign _42 = _41;
    mod_counter
        the_mod_counter
        ( .clk(clk),
          .reset(reset),
          .enable(enable),
          .q(_993[2:0]) );
    assign _44 = _993;
    always @(posedge clk or posedge reset) begin
        if (reset)
            _52 <= _967;
        else
            if (enable)
                _52 <= _44;
    end
    computation_start
        the_computation_start
        ( .sel_delayed(_52),
          .clk(clk),
          .reset(reset),
          .enable(enable),
          .q(_994) );
    assign _45 = _994;
    accumulate_5_cycles
        the_accumulate_5_cycles
        ( .clk(clk),
          .reset(reset),
          .enable(_45),
          .data(_42),
          .sum_out(_995[63:0]) );
    assign _48 = _995;
    assign final_sum = _48;

endmodule