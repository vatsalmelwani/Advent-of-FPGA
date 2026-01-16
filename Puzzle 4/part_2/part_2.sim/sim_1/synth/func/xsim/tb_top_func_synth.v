// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Dec 30 01:51:32 2025
// Host        : LAPTOP-N5PG3M81 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/Vatsal Melwani/EE/FPGA/Advent_of_Code_JS/Puzzle
//               4/part_2/part_2.sim/sim_1/synth/func/xsim/tb_top_func_synth.v}
// Design      : puzzle4_part2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module count_ones
   (D,
    \last_index_count_ones_reg[1] ,
    upper_row_data,
    middle_row_data);
  output [2:0]D;
  input [1:0]\last_index_count_ones_reg[1] ;
  input [2:0]upper_row_data;
  input [1:0]middle_row_data;

  wire [2:0]D;
  wire \last_index_count_ones[0]_i_2_n_0 ;
  wire \last_index_count_ones[1]_i_2_n_0 ;
  wire \last_index_count_ones[1]_i_3_n_0 ;
  wire \last_index_count_ones[2]_i_2_n_0 ;
  wire \last_index_count_ones[2]_i_3_n_0 ;
  wire [1:0]\last_index_count_ones_reg[1] ;
  wire [1:0]middle_row_data;
  wire [2:0]upper_row_data;

  LUT2 #(
    .INIT(4'h6)) 
    \last_index_count_ones[0]_i_1 
       (.I0(middle_row_data[1]),
        .I1(\last_index_count_ones[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \last_index_count_ones[0]_i_2 
       (.I0(middle_row_data[0]),
        .I1(\last_index_count_ones_reg[1] [0]),
        .I2(upper_row_data[2]),
        .I3(\last_index_count_ones_reg[1] [1]),
        .I4(upper_row_data[0]),
        .I5(upper_row_data[1]),
        .O(\last_index_count_ones[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \last_index_count_ones[1]_i_2 
       (.I0(upper_row_data[2]),
        .I1(upper_row_data[1]),
        .I2(upper_row_data[0]),
        .I3(middle_row_data[0]),
        .I4(middle_row_data[1]),
        .I5(\last_index_count_ones_reg[1] [0]),
        .O(\last_index_count_ones[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE88181178117177E)) 
    \last_index_count_ones[1]_i_3 
       (.I0(upper_row_data[2]),
        .I1(upper_row_data[1]),
        .I2(upper_row_data[0]),
        .I3(middle_row_data[0]),
        .I4(middle_row_data[1]),
        .I5(\last_index_count_ones_reg[1] [0]),
        .O(\last_index_count_ones[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \last_index_count_ones[2]_i_2 
       (.I0(upper_row_data[2]),
        .I1(upper_row_data[1]),
        .I2(middle_row_data[0]),
        .I3(middle_row_data[1]),
        .I4(\last_index_count_ones_reg[1] [0]),
        .I5(upper_row_data[0]),
        .O(\last_index_count_ones[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEE8FEE8E880)) 
    \last_index_count_ones[2]_i_3 
       (.I0(upper_row_data[2]),
        .I1(upper_row_data[1]),
        .I2(upper_row_data[0]),
        .I3(\last_index_count_ones_reg[1] [0]),
        .I4(middle_row_data[1]),
        .I5(middle_row_data[0]),
        .O(\last_index_count_ones[2]_i_3_n_0 ));
  MUXF7 \last_index_count_ones_reg[1]_i_1 
       (.I0(\last_index_count_ones[1]_i_2_n_0 ),
        .I1(\last_index_count_ones[1]_i_3_n_0 ),
        .O(D[1]),
        .S(\last_index_count_ones_reg[1] [1]));
  MUXF7 \last_index_count_ones_reg[2]_i_1 
       (.I0(\last_index_count_ones[2]_i_2_n_0 ),
        .I1(\last_index_count_ones[2]_i_3_n_0 ),
        .O(D[2]),
        .S(\last_index_count_ones_reg[1] [1]));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_0
   (out_mux_sel_u_reg,
    upper_row_data,
    D,
    w_data);
  output out_mux_sel_u_reg;
  input [2:0]upper_row_data;
  input [2:0]D;
  input [1:0]w_data;

  wire [2:0]D;
  wire out_mux_sel_u_reg;
  wire \out_sum[7]_i_148_n_0 ;
  wire \out_sum[7]_i_149_n_0 ;
  wire \out_sum[7]_i_152_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_148 
       (.I0(D[0]),
        .I1(upper_row_data[2]),
        .I2(D[2]),
        .I3(w_data[0]),
        .I4(D[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_148_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_149 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(D[1]),
        .O(\out_sum[7]_i_149_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_152 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\out_sum[7]_i_152_n_0 ));
  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_77 
       (.I0(\out_sum[7]_i_148_n_0 ),
        .I1(\out_sum[7]_i_149_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\out_sum[7]_i_152_n_0 ),
        .O(out_mux_sel_u_reg));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_1
   (\in_data[20] ,
    \in_data[22] ,
    out_mux_sel_u_reg,
    \in_data[21] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[20] ;
  output \in_data[22] ;
  output out_mux_sel_u_reg;
  output \in_data[21] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[20] ;
  wire \in_data[21] ;
  wire \in_data[22] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_142 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[20] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_143 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[21] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_144 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_145 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[22] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_146 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_10
   (last_bit_reg,
    last_bit_reg_0,
    out_mux_sel_u_reg,
    out_mux_sel_u_reg_0,
    upper_row_data,
    w_data,
    in_data_IBUF,
    last_bit,
    \out_sum[7]_i_48 ,
    Q,
    upper_bit);
  output last_bit_reg;
  output last_bit_reg_0;
  output out_mux_sel_u_reg;
  output out_mux_sel_u_reg_0;
  input [1:0]upper_row_data;
  input [1:0]w_data;
  input [1:0]in_data_IBUF;
  input last_bit;
  input \out_sum[7]_i_48 ;
  input [1:0]Q;
  input upper_bit;

  wire [1:0]Q;
  wire [1:0]in_data_IBUF;
  wire last_bit;
  wire last_bit_reg;
  wire last_bit_reg_0;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire \out_sum[7]_i_191_n_0 ;
  wire \out_sum[7]_i_48 ;
  wire upper_bit;
  wire [1:0]upper_row_data;
  wire [1:0]w_data;

  LUT6 #(
    .INIT(64'h9999999A6666666A)) 
    \out_sum[7]_i_191 
       (.I0(in_data_IBUF[0]),
        .I1(last_bit),
        .I2(\out_sum[7]_i_48 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(upper_bit),
        .O(\out_sum[7]_i_191_n_0 ));
  LUT6 #(
    .INIT(64'h8228288228828228)) 
    \out_sum[7]_i_88 
       (.I0(\out_sum[7]_i_191_n_0 ),
        .I1(upper_row_data[1]),
        .I2(upper_row_data[0]),
        .I3(w_data[0]),
        .I4(w_data[1]),
        .I5(in_data_IBUF[1]),
        .O(last_bit_reg));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_89 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(in_data_IBUF[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  LUT6 #(
    .INIT(64'hFFFCAAA8AAA80000)) 
    \out_sum[7]_i_90 
       (.I0(last_bit),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\out_sum[7]_i_48 ),
        .I4(upper_bit),
        .I5(in_data_IBUF[0]),
        .O(last_bit_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_91 
       (.I0(w_data[1]),
        .I1(in_data_IBUF[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_11
   (\in_data[11] ,
    \in_data[13] ,
    out_mux_sel_u_reg,
    \in_data[12] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[11] ;
  output \in_data[13] ;
  output out_mux_sel_u_reg;
  output \in_data[12] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[11] ;
  wire \in_data[12] ;
  wire \in_data[13] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_240 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[11] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_241 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[12] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_242 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_243 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[13] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_244 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_12
   (\in_data[10] ,
    \in_data[12] ,
    out_mux_sel_u_reg,
    \in_data[11] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[10] ;
  output \in_data[12] ;
  output out_mux_sel_u_reg;
  output \in_data[11] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[10] ;
  wire \in_data[11] ;
  wire \in_data[12] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_210 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[10] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_211 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[11] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_212 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_213 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[12] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_214 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_13
   (\in_data[9] ,
    \in_data[11] ,
    out_mux_sel_u_reg,
    \in_data[10] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[9] ;
  output \in_data[11] ;
  output out_mux_sel_u_reg;
  output \in_data[10] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[10] ;
  wire \in_data[11] ;
  wire \in_data[9] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_255 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[9] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_256 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[10] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_257 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_258 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[11] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_259 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_14
   (out_mux_sel_u_reg,
    upper_row_data,
    D,
    w_data);
  output out_mux_sel_u_reg;
  input [2:0]upper_row_data;
  input [2:0]D;
  input [1:0]w_data;

  wire [2:0]D;
  wire out_mux_sel_u_reg;
  wire \out_sum[7]_i_230_n_0 ;
  wire \out_sum[7]_i_231_n_0 ;
  wire \out_sum[7]_i_234_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_123 
       (.I0(\out_sum[7]_i_230_n_0 ),
        .I1(\out_sum[7]_i_231_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\out_sum[7]_i_234_n_0 ),
        .O(out_mux_sel_u_reg));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_230 
       (.I0(D[0]),
        .I1(upper_row_data[2]),
        .I2(D[2]),
        .I3(w_data[0]),
        .I4(D[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_230_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_231 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(D[1]),
        .O(\out_sum[7]_i_231_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_234 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\out_sum[7]_i_234_n_0 ));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_15
   (\in_data[7] ,
    \in_data[9] ,
    out_mux_sel_u_reg,
    \in_data[8] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[7] ;
  output \in_data[9] ;
  output out_mux_sel_u_reg;
  output \in_data[8] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[7] ;
  wire \in_data[8] ;
  wire \in_data[9] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_250 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[7] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_251 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[8] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_252 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_253 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[9] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_254 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_16
   (\in_data[6] ,
    \in_data[8] ,
    out_mux_sel_u_reg,
    \in_data[7] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[6] ;
  output \in_data[8] ;
  output out_mux_sel_u_reg;
  output \in_data[7] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[6] ;
  wire \in_data[7] ;
  wire \in_data[8] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_205 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[6] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_206 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[7] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_207 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_208 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[8] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_209 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_17
   (\in_data[5] ,
    \in_data[7] ,
    out_mux_sel_u_reg,
    \in_data[6] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[5] ;
  output \in_data[7] ;
  output out_mux_sel_u_reg;
  output \in_data[6] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[5] ;
  wire \in_data[6] ;
  wire \in_data[7] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_270 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[5] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_271 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[6] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_272 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_273 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[7] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_274 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_18
   (\in_data[4] ,
    \in_data[6] ,
    out_mux_sel_u_reg,
    \in_data[5] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[4] ;
  output \in_data[6] ;
  output out_mux_sel_u_reg;
  output \in_data[5] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[4] ;
  wire \in_data[5] ;
  wire \in_data[6] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_265 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[4] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_266 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[5] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_267 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_268 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[6] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_269 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_19
   (out_mux_sel_u_reg,
    \in_data[3] ,
    \in_data[3]_0 ,
    out_mux_sel_u_reg_0,
    \in_data[5] ,
    out_mux_sel_u_reg_1,
    \in_data[4] ,
    upper_row_data,
    D,
    w_data);
  output out_mux_sel_u_reg;
  output \in_data[3] ;
  output \in_data[3]_0 ;
  output out_mux_sel_u_reg_0;
  output \in_data[5] ;
  output out_mux_sel_u_reg_1;
  output \in_data[4] ;
  input [2:0]upper_row_data;
  input [2:0]D;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[3] ;
  wire \in_data[3]_0 ;
  wire \in_data[4] ;
  wire \in_data[5] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire out_mux_sel_u_reg_1;
  wire \out_sum[7]_i_262_n_0 ;
  wire \out_sum[7]_i_263_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hA880)) 
    \out_sum[7]_i_130 
       (.I0(out_mux_sel_u_reg_0),
        .I1(D[0]),
        .I2(upper_row_data[2]),
        .I3(D[2]),
        .O(\in_data[3]_0 ));
  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_131 
       (.I0(\out_sum[7]_i_262_n_0 ),
        .I1(\out_sum[7]_i_263_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\in_data[3] ),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_260 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_262 
       (.I0(D[0]),
        .I1(upper_row_data[2]),
        .I2(D[2]),
        .I3(w_data[0]),
        .I4(D[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_262_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_263 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(D[1]),
        .O(\out_sum[7]_i_263_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_264 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[3] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_278 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[4] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_279 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg_1));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_280 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[5] ));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_2
   (\in_data[19] ,
    \in_data[21] ,
    out_mux_sel_u_reg,
    \in_data[20] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[19] ;
  output \in_data[21] ;
  output out_mux_sel_u_reg;
  output \in_data[20] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[19] ;
  wire \in_data[20] ;
  wire \in_data[21] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_153 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[19] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_154 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[20] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_155 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_156 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[21] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_157 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_20
   (out_mux_sel_u_reg,
    \in_data[2] ,
    \in_data[2]_0 ,
    out_mux_sel_u_reg_0,
    \in_data[4] ,
    out_mux_sel_u_reg_1,
    \in_data[3] ,
    upper_row_data,
    D,
    w_data);
  output out_mux_sel_u_reg;
  output \in_data[2] ;
  output \in_data[2]_0 ;
  output out_mux_sel_u_reg_0;
  output \in_data[4] ;
  output out_mux_sel_u_reg_1;
  output \in_data[3] ;
  input [2:0]upper_row_data;
  input [2:0]D;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[2] ;
  wire \in_data[2]_0 ;
  wire \in_data[3] ;
  wire \in_data[4] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire out_mux_sel_u_reg_1;
  wire \out_sum[7]_i_247_n_0 ;
  wire \out_sum[7]_i_248_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hA880)) 
    \out_sum[7]_i_126 
       (.I0(out_mux_sel_u_reg_0),
        .I1(D[0]),
        .I2(upper_row_data[2]),
        .I3(D[2]),
        .O(\in_data[2]_0 ));
  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_127 
       (.I0(\out_sum[7]_i_247_n_0 ),
        .I1(\out_sum[7]_i_248_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\in_data[2] ),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_245 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_247 
       (.I0(D[0]),
        .I1(upper_row_data[2]),
        .I2(D[2]),
        .I3(w_data[0]),
        .I4(D[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_247_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_248 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(D[1]),
        .O(\out_sum[7]_i_248_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_249 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[2] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_281 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[3] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_282 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg_1));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_283 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[4] ));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_21
   (\in_data[29] ,
    \in_data[31] ,
    out_mux_sel_u_reg,
    \in_data[30] ,
    out_mux_sel_u_reg_0,
    in_data_IBUF,
    upper_row_data,
    w_data);
  output \in_data[29] ;
  output \in_data[31] ;
  output out_mux_sel_u_reg;
  output \in_data[30] ;
  output out_mux_sel_u_reg_0;
  input [2:0]in_data_IBUF;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire \in_data[29] ;
  wire \in_data[30] ;
  wire \in_data[31] ;
  wire [2:0]in_data_IBUF;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_158 
       (.I0(in_data_IBUF[0]),
        .I1(in_data_IBUF[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[29] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_159 
       (.I0(in_data_IBUF[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[30] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_160 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(in_data_IBUF[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_161 
       (.I0(in_data_IBUF[2]),
        .I1(upper_row_data[2]),
        .I2(in_data_IBUF[0]),
        .O(\in_data[31] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_162 
       (.I0(w_data[1]),
        .I1(in_data_IBUF[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_22
   (out_mux_sel_u_reg,
    upper_row_data,
    in_data_IBUF,
    w_data);
  output out_mux_sel_u_reg;
  input [2:0]upper_row_data;
  input [2:0]in_data_IBUF;
  input [1:0]w_data;

  wire [2:0]in_data_IBUF;
  wire out_mux_sel_u_reg;
  wire \out_sum[7]_i_134_n_0 ;
  wire \out_sum[7]_i_135_n_0 ;
  wire \out_sum[7]_i_137_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_134 
       (.I0(in_data_IBUF[0]),
        .I1(upper_row_data[2]),
        .I2(in_data_IBUF[2]),
        .I3(w_data[0]),
        .I4(in_data_IBUF[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_134_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_135 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(in_data_IBUF[1]),
        .O(\out_sum[7]_i_135_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_137 
       (.I0(in_data_IBUF[0]),
        .I1(in_data_IBUF[2]),
        .I2(upper_row_data[2]),
        .O(\out_sum[7]_i_137_n_0 ));
  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_64 
       (.I0(\out_sum[7]_i_134_n_0 ),
        .I1(\out_sum[7]_i_135_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\out_sum[7]_i_137_n_0 ),
        .O(out_mux_sel_u_reg));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_23
   (out_mux_sel_u_reg,
    upper_row_data,
    D,
    w_data);
  output out_mux_sel_u_reg;
  input [2:0]upper_row_data;
  input [2:0]D;
  input [1:0]w_data;

  wire [2:0]D;
  wire out_mux_sel_u_reg;
  wire \out_sum[7]_i_139_n_0 ;
  wire \out_sum[7]_i_140_n_0 ;
  wire \out_sum[7]_i_141_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_139 
       (.I0(D[0]),
        .I1(upper_row_data[2]),
        .I2(D[2]),
        .I3(w_data[0]),
        .I4(D[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_139_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_140 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(D[1]),
        .O(\out_sum[7]_i_140_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_141 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\out_sum[7]_i_141_n_0 ));
  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_66 
       (.I0(\out_sum[7]_i_139_n_0 ),
        .I1(\out_sum[7]_i_140_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\out_sum[7]_i_141_n_0 ),
        .O(out_mux_sel_u_reg));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_24
   (\in_data[28] ,
    \in_data[30] ,
    out_mux_sel_u_reg,
    \in_data[29] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[28] ;
  output \in_data[30] ;
  output out_mux_sel_u_reg;
  output \in_data[29] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[28] ;
  wire \in_data[29] ;
  wire \in_data[30] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_92 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[28] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_93 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[29] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_94 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_95 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[30] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_96 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_25
   (out_mux_sel_u_reg,
    upper_row_data,
    D,
    w_data);
  output out_mux_sel_u_reg;
  input [2:0]upper_row_data;
  input [2:0]D;
  input [1:0]w_data;

  wire [2:0]D;
  wire out_mux_sel_u_reg;
  wire \out_sum[7]_i_164_n_0 ;
  wire \out_sum[7]_i_165_n_0 ;
  wire \out_sum[7]_i_168_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_164 
       (.I0(D[0]),
        .I1(upper_row_data[2]),
        .I2(D[2]),
        .I3(w_data[0]),
        .I4(D[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_164_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_165 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(D[1]),
        .O(\out_sum[7]_i_165_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_168 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\out_sum[7]_i_168_n_0 ));
  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_81 
       (.I0(\out_sum[7]_i_164_n_0 ),
        .I1(\out_sum[7]_i_165_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\out_sum[7]_i_168_n_0 ),
        .O(out_mux_sel_u_reg));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_26
   (out_mux_sel_u_reg,
    \in_data[26] ,
    \in_data[26]_0 ,
    out_mux_sel_u_reg_0,
    \in_data[28] ,
    out_mux_sel_u_reg_1,
    \in_data[27] ,
    upper_row_data,
    D,
    w_data);
  output out_mux_sel_u_reg;
  output \in_data[26] ;
  output \in_data[26]_0 ;
  output out_mux_sel_u_reg_0;
  output \in_data[28] ;
  output out_mux_sel_u_reg_1;
  output \in_data[27] ;
  input [2:0]upper_row_data;
  input [2:0]D;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[26] ;
  wire \in_data[26]_0 ;
  wire \in_data[27] ;
  wire \in_data[28] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire out_mux_sel_u_reg_1;
  wire \out_sum[7]_i_198_n_0 ;
  wire \out_sum[7]_i_199_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_100 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[28] ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_101 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hA880)) 
    \out_sum[7]_i_112 
       (.I0(out_mux_sel_u_reg_0),
        .I1(D[0]),
        .I2(upper_row_data[2]),
        .I3(D[2]),
        .O(\in_data[26]_0 ));
  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_113 
       (.I0(\out_sum[7]_i_198_n_0 ),
        .I1(\out_sum[7]_i_199_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\in_data[26] ),
        .O(out_mux_sel_u_reg));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_198 
       (.I0(D[0]),
        .I1(upper_row_data[2]),
        .I2(D[2]),
        .I3(w_data[0]),
        .I4(D[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_198_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_199 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(D[1]),
        .O(\out_sum[7]_i_199_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_97 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[26] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_98 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[27] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_99 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg_1));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_27
   (\in_data[25] ,
    \in_data[27] ,
    out_mux_sel_u_reg,
    \in_data[26] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[25] ;
  output \in_data[27] ;
  output out_mux_sel_u_reg;
  output \in_data[26] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[25] ;
  wire \in_data[26] ;
  wire \in_data[27] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_174 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[25] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_175 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[26] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_176 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_177 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[27] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_178 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_28
   (\in_data[24] ,
    \in_data[26] ,
    out_mux_sel_u_reg,
    \in_data[25] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[24] ;
  output \in_data[26] ;
  output out_mux_sel_u_reg;
  output \in_data[25] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[24] ;
  wire \in_data[25] ;
  wire \in_data[26] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_169 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[24] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_170 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[25] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_171 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_172 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[26] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_173 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_29
   (out_mux_sel_u_reg,
    upper_row_data,
    in_data_IBUF,
    w_data);
  output out_mux_sel_u_reg;
  input [2:0]upper_row_data;
  input [2:0]in_data_IBUF;
  input [1:0]w_data;

  wire [2:0]in_data_IBUF;
  wire out_mux_sel_u_reg;
  wire \out_sum[7]_i_180_n_0 ;
  wire \out_sum[7]_i_181_n_0 ;
  wire \out_sum[7]_i_183_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_180 
       (.I0(in_data_IBUF[0]),
        .I1(upper_row_data[2]),
        .I2(in_data_IBUF[2]),
        .I3(w_data[0]),
        .I4(in_data_IBUF[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_180_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_181 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(in_data_IBUF[1]),
        .O(\out_sum[7]_i_181_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_183 
       (.I0(in_data_IBUF[0]),
        .I1(in_data_IBUF[2]),
        .I2(upper_row_data[2]),
        .O(\out_sum[7]_i_183_n_0 ));
  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_85 
       (.I0(\out_sum[7]_i_180_n_0 ),
        .I1(\out_sum[7]_i_181_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\out_sum[7]_i_183_n_0 ),
        .O(out_mux_sel_u_reg));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_3
   (\in_data[18] ,
    \in_data[20] ,
    out_mux_sel_u_reg,
    \in_data[19] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[18] ;
  output \in_data[20] ;
  output out_mux_sel_u_reg;
  output \in_data[19] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[18] ;
  wire \in_data[19] ;
  wire \in_data[20] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_184 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[18] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_185 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[19] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_186 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_187 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[20] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_188 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_30
   (\in_data[22] ,
    \in_data[24] ,
    out_mux_sel_u_reg,
    \in_data[23] ,
    out_mux_sel_u_reg_0,
    in_data_IBUF,
    upper_row_data,
    w_data);
  output \in_data[22] ;
  output \in_data[24] ;
  output out_mux_sel_u_reg;
  output \in_data[23] ;
  output out_mux_sel_u_reg_0;
  input [2:0]in_data_IBUF;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire \in_data[22] ;
  wire \in_data[23] ;
  wire \in_data[24] ;
  wire [2:0]in_data_IBUF;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_102 
       (.I0(in_data_IBUF[0]),
        .I1(in_data_IBUF[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[22] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_103 
       (.I0(in_data_IBUF[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[23] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_104 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(in_data_IBUF[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_105 
       (.I0(in_data_IBUF[2]),
        .I1(upper_row_data[2]),
        .I2(in_data_IBUF[0]),
        .O(\in_data[24] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_106 
       (.I0(w_data[1]),
        .I1(in_data_IBUF[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

module count_ones_32
   (sum_result,
    \out_sum[7]_i_42_0 ,
    \out_sum[7]_i_37_0 ,
    \out_sum[7]_i_22_0 ,
    \out_sum[7]_i_36_0 ,
    \out_sum[7]_i_33_0 ,
    \out_sum[7]_i_46_0 ,
    \out_sum[7]_i_37_1 ,
    out_mux_sel_u_reg,
    \out_sum[7]_i_52 ,
    \out_sum[7]_i_41 ,
    \out_sum[7]_i_45_0 ,
    out_mux_sel_u_reg_0,
    out_mux_sel_u_reg_1,
    out_mux_sel_u_reg_2,
    out_mux_sel_u_reg_3,
    out_mux_sel_u_reg_4,
    out_mux_sel_u_reg_5,
    \out_sum[7]_i_59_0 ,
    out_mux_sel_u_reg_6,
    \out_sum[7]_i_62_0 ,
    \out_sum[7]_i_190 ,
    \out_sum[7]_i_9 ,
    \out_sum[7]_i_7 ,
    \out_sum[7]_i_7_0 ,
    \out_sum[7]_i_7_1 ,
    p_30_out,
    \out_sum[7]_i_4 ,
    \out_sum[7]_i_4_0 ,
    middle_row_data,
    \out_sum[7]_i_34 ,
    \out_sum[7]_i_34_0 ,
    \out_sum[7]_i_37_2 ,
    \out_sum[7]_i_37_3 ,
    \out_sum[7]_i_36_1 ,
    \out_sum[7]_i_36_2 ,
    \out_sum[7]_i_36_3 ,
    \out_sum[7]_i_36_4 ,
    \out_sum[7]_i_43 ,
    \out_sum[7]_i_43_0 ,
    \out_sum[7]_i_43_1 ,
    \out_sum[7]_i_43_2 ,
    \out_sum[7]_i_43_3 ,
    \out_sum[7]_i_43_4 ,
    \out_sum[7]_i_22_1 ,
    \out_sum[7]_i_32_0 ,
    \out_sum[7]_i_32_1 ,
    \out_sum[7]_i_32_2 ,
    \out_sum[7]_i_32_3 ,
    \out_sum[7]_i_43_5 ,
    \out_sum[7]_i_43_6 ,
    \out_sum[7]_i_43_7 ,
    \out_sum[7]_i_43_8 );
  output [2:0]sum_result;
  output \out_sum[7]_i_42_0 ;
  output \out_sum[7]_i_37_0 ;
  output \out_sum[7]_i_22_0 ;
  output \out_sum[7]_i_36_0 ;
  output \out_sum[7]_i_33_0 ;
  output \out_sum[7]_i_46_0 ;
  output \out_sum[7]_i_37_1 ;
  output out_mux_sel_u_reg;
  output \out_sum[7]_i_52 ;
  output \out_sum[7]_i_41 ;
  output \out_sum[7]_i_45_0 ;
  output out_mux_sel_u_reg_0;
  output out_mux_sel_u_reg_1;
  output out_mux_sel_u_reg_2;
  output out_mux_sel_u_reg_3;
  output out_mux_sel_u_reg_4;
  output out_mux_sel_u_reg_5;
  output \out_sum[7]_i_59_0 ;
  output out_mux_sel_u_reg_6;
  output \out_sum[7]_i_62_0 ;
  output \out_sum[7]_i_190 ;
  input \out_sum[7]_i_9 ;
  input \out_sum[7]_i_7 ;
  input \out_sum[7]_i_7_0 ;
  input \out_sum[7]_i_7_1 ;
  input [22:0]p_30_out;
  input \out_sum[7]_i_4 ;
  input \out_sum[7]_i_4_0 ;
  input [10:0]middle_row_data;
  input \out_sum[7]_i_34 ;
  input \out_sum[7]_i_34_0 ;
  input \out_sum[7]_i_37_2 ;
  input \out_sum[7]_i_37_3 ;
  input \out_sum[7]_i_36_1 ;
  input \out_sum[7]_i_36_2 ;
  input \out_sum[7]_i_36_3 ;
  input \out_sum[7]_i_36_4 ;
  input \out_sum[7]_i_43 ;
  input \out_sum[7]_i_43_0 ;
  input \out_sum[7]_i_43_1 ;
  input \out_sum[7]_i_43_2 ;
  input \out_sum[7]_i_43_3 ;
  input \out_sum[7]_i_43_4 ;
  input \out_sum[7]_i_22_1 ;
  input \out_sum[7]_i_32_0 ;
  input \out_sum[7]_i_32_1 ;
  input \out_sum[7]_i_32_2 ;
  input \out_sum[7]_i_32_3 ;
  input \out_sum[7]_i_43_5 ;
  input \out_sum[7]_i_43_6 ;
  input \out_sum[7]_i_43_7 ;
  input \out_sum[7]_i_43_8 ;

  wire [10:0]middle_row_data;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire out_mux_sel_u_reg_1;
  wire out_mux_sel_u_reg_2;
  wire out_mux_sel_u_reg_3;
  wire out_mux_sel_u_reg_4;
  wire out_mux_sel_u_reg_5;
  wire out_mux_sel_u_reg_6;
  wire \out_sum[7]_i_190 ;
  wire \out_sum[7]_i_22_0 ;
  wire \out_sum[7]_i_22_1 ;
  wire \out_sum[7]_i_31_n_0 ;
  wire \out_sum[7]_i_32_0 ;
  wire \out_sum[7]_i_32_1 ;
  wire \out_sum[7]_i_32_2 ;
  wire \out_sum[7]_i_32_3 ;
  wire \out_sum[7]_i_32_n_0 ;
  wire \out_sum[7]_i_33_0 ;
  wire \out_sum[7]_i_34 ;
  wire \out_sum[7]_i_34_0 ;
  wire \out_sum[7]_i_35_n_0 ;
  wire \out_sum[7]_i_36_0 ;
  wire \out_sum[7]_i_36_1 ;
  wire \out_sum[7]_i_36_2 ;
  wire \out_sum[7]_i_36_3 ;
  wire \out_sum[7]_i_36_4 ;
  wire \out_sum[7]_i_36_n_0 ;
  wire \out_sum[7]_i_37_0 ;
  wire \out_sum[7]_i_37_1 ;
  wire \out_sum[7]_i_37_2 ;
  wire \out_sum[7]_i_37_3 ;
  wire \out_sum[7]_i_37_n_0 ;
  wire \out_sum[7]_i_38_n_0 ;
  wire \out_sum[7]_i_39_n_0 ;
  wire \out_sum[7]_i_4 ;
  wire \out_sum[7]_i_40_n_0 ;
  wire \out_sum[7]_i_41 ;
  wire \out_sum[7]_i_42_0 ;
  wire \out_sum[7]_i_42_n_0 ;
  wire \out_sum[7]_i_43 ;
  wire \out_sum[7]_i_43_0 ;
  wire \out_sum[7]_i_43_1 ;
  wire \out_sum[7]_i_43_2 ;
  wire \out_sum[7]_i_43_3 ;
  wire \out_sum[7]_i_43_4 ;
  wire \out_sum[7]_i_43_5 ;
  wire \out_sum[7]_i_43_6 ;
  wire \out_sum[7]_i_43_7 ;
  wire \out_sum[7]_i_43_8 ;
  wire \out_sum[7]_i_44_n_0 ;
  wire \out_sum[7]_i_45_0 ;
  wire \out_sum[7]_i_45_n_0 ;
  wire \out_sum[7]_i_46_0 ;
  wire \out_sum[7]_i_46_n_0 ;
  wire \out_sum[7]_i_4_0 ;
  wire \out_sum[7]_i_52 ;
  wire \out_sum[7]_i_59_0 ;
  wire \out_sum[7]_i_62_0 ;
  wire \out_sum[7]_i_62_n_0 ;
  wire \out_sum[7]_i_63_n_0 ;
  wire \out_sum[7]_i_68_n_0 ;
  wire \out_sum[7]_i_69_n_0 ;
  wire \out_sum[7]_i_7 ;
  wire \out_sum[7]_i_70_n_0 ;
  wire \out_sum[7]_i_71_n_0 ;
  wire \out_sum[7]_i_72_n_0 ;
  wire \out_sum[7]_i_73_n_0 ;
  wire \out_sum[7]_i_7_0 ;
  wire \out_sum[7]_i_7_1 ;
  wire \out_sum[7]_i_9 ;
  wire [22:0]p_30_out;
  wire [2:0]sum_result;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_14 
       (.I0(\out_sum[7]_i_31_n_0 ),
        .I1(\out_sum[7]_i_32_n_0 ),
        .I2(out_mux_sel_u_reg),
        .O(\out_sum[7]_i_33_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2882BEEB)) 
    \out_sum[7]_i_16 
       (.I0(\out_sum[7]_i_35_n_0 ),
        .I1(\out_sum[7]_i_31_n_0 ),
        .I2(\out_sum[7]_i_32_n_0 ),
        .I3(out_mux_sel_u_reg),
        .I4(\out_sum[7]_i_36_n_0 ),
        .O(\out_sum[7]_i_36_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h088EEFFF)) 
    \out_sum[7]_i_17 
       (.I0(\out_sum[7]_i_42_0 ),
        .I1(\out_sum[7]_i_37_n_0 ),
        .I2(\out_sum[7]_i_38_n_0 ),
        .I3(\out_sum[7]_i_39_n_0 ),
        .I4(\out_sum[7]_i_46_0 ),
        .O(\out_sum[7]_i_22_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_19 
       (.I0(\out_sum[7]_i_40_n_0 ),
        .I1(\out_sum[7]_i_4_0 ),
        .I2(\out_sum[7]_i_42_n_0 ),
        .O(\out_sum[7]_i_42_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_20 
       (.I0(\out_sum[7]_i_38_n_0 ),
        .I1(\out_sum[7]_i_39_n_0 ),
        .I2(\out_sum[7]_i_37_n_0 ),
        .O(\out_sum[7]_i_37_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \out_sum[7]_i_21 
       (.I0(\out_sum[7]_i_39_n_0 ),
        .I1(\out_sum[7]_i_38_n_0 ),
        .I2(\out_sum[7]_i_37_n_0 ),
        .O(\out_sum[7]_i_37_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_22 
       (.I0(\out_sum[7]_i_36_n_0 ),
        .I1(\out_sum[7]_i_4 ),
        .I2(\out_sum[7]_i_44_n_0 ),
        .I3(\out_sum[7]_i_45_n_0 ),
        .I4(\out_sum[7]_i_46_n_0 ),
        .O(\out_sum[7]_i_46_0 ));
  LUT6 #(
    .INIT(64'h2B22BB2BBB2BBFBB)) 
    \out_sum[7]_i_25 
       (.I0(\out_sum[7]_i_7_0 ),
        .I1(\out_sum[7]_i_7_1 ),
        .I2(\out_sum[7]_i_22_0 ),
        .I3(\out_sum[7]_i_33_0 ),
        .I4(\out_sum[7]_i_7 ),
        .I5(\out_sum[7]_i_36_0 ),
        .O(sum_result[2]));
  LUT5 #(
    .INIT(32'h781EE178)) 
    \out_sum[7]_i_26 
       (.I0(\out_sum[7]_i_22_0 ),
        .I1(\out_sum[7]_i_36_0 ),
        .I2(\out_sum[7]_i_9 ),
        .I3(\out_sum[7]_i_33_0 ),
        .I4(\out_sum[7]_i_7 ),
        .O(sum_result[1]));
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \out_sum[7]_i_27 
       (.I0(p_30_out[22]),
        .I1(p_30_out[20]),
        .I2(p_30_out[19]),
        .I3(p_30_out[16]),
        .I4(p_30_out[10]),
        .O(\out_sum[7]_i_52 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \out_sum[7]_i_28 
       (.I0(\out_sum[7]_i_42_n_0 ),
        .I1(\out_sum[7]_i_40_n_0 ),
        .I2(\out_sum[7]_i_4_0 ),
        .O(\out_sum[7]_i_41 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \out_sum[7]_i_29 
       (.I0(\out_sum[7]_i_44_n_0 ),
        .I1(\out_sum[7]_i_46_n_0 ),
        .I2(\out_sum[7]_i_45_n_0 ),
        .O(\out_sum[7]_i_45_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_31 
       (.I0(out_mux_sel_u_reg_3),
        .I1(out_mux_sel_u_reg_4),
        .I2(out_mux_sel_u_reg_5),
        .O(\out_sum[7]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_32 
       (.I0(out_mux_sel_u_reg_6),
        .I1(\out_sum[7]_i_62_n_0 ),
        .I2(\out_sum[7]_i_63_n_0 ),
        .O(\out_sum[7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \out_sum[7]_i_33 
       (.I0(\out_sum[7]_i_43_8 ),
        .I1(\out_sum[7]_i_43_7 ),
        .I2(middle_row_data[1]),
        .I3(\out_sum[7]_i_43_6 ),
        .I4(\out_sum[7]_i_43_5 ),
        .I5(middle_row_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_35 
       (.I0(\out_sum[7]_i_44_n_0 ),
        .I1(\out_sum[7]_i_45_n_0 ),
        .I2(\out_sum[7]_i_46_n_0 ),
        .O(\out_sum[7]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h599A)) 
    \out_sum[7]_i_36 
       (.I0(\out_sum[7]_i_52 ),
        .I1(\out_sum[7]_i_4_0 ),
        .I2(\out_sum[7]_i_40_n_0 ),
        .I3(\out_sum[7]_i_42_n_0 ),
        .O(\out_sum[7]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \out_sum[7]_i_37 
       (.I0(\out_sum[7]_i_68_n_0 ),
        .I1(p_30_out[22]),
        .I2(p_30_out[10]),
        .O(\out_sum[7]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_38 
       (.I0(\out_sum[7]_i_69_n_0 ),
        .I1(\out_sum[7]_i_70_n_0 ),
        .I2(\out_sum[7]_i_71_n_0 ),
        .O(\out_sum[7]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_39 
       (.I0(\out_sum[7]_i_72_n_0 ),
        .I1(\out_sum[7]_i_73_n_0 ),
        .I2(\out_sum[7]_i_22_1 ),
        .O(\out_sum[7]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h5559AAA6)) 
    \out_sum[7]_i_40 
       (.I0(p_30_out[15]),
        .I1(middle_row_data[7]),
        .I2(\out_sum[7]_i_36_3 ),
        .I3(\out_sum[7]_i_36_4 ),
        .I4(p_30_out[14]),
        .O(\out_sum[7]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5559AAA6)) 
    \out_sum[7]_i_42 
       (.I0(p_30_out[18]),
        .I1(middle_row_data[8]),
        .I2(\out_sum[7]_i_36_1 ),
        .I3(\out_sum[7]_i_36_2 ),
        .I4(p_30_out[13]),
        .O(\out_sum[7]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_44 
       (.I0(out_mux_sel_u_reg_0),
        .I1(out_mux_sel_u_reg_1),
        .I2(out_mux_sel_u_reg_2),
        .O(\out_sum[7]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_45 
       (.I0(\out_sum[7]_i_69_n_0 ),
        .I1(\out_sum[7]_i_71_n_0 ),
        .I2(\out_sum[7]_i_70_n_0 ),
        .O(\out_sum[7]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \out_sum[7]_i_46 
       (.I0(\out_sum[7]_i_73_n_0 ),
        .I1(\out_sum[7]_i_72_n_0 ),
        .I2(\out_sum[7]_i_22_1 ),
        .O(\out_sum[7]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h77777717)) 
    \out_sum[7]_i_53 
       (.I0(p_30_out[20]),
        .I1(p_30_out[16]),
        .I2(middle_row_data[9]),
        .I3(\out_sum[7]_i_37_2 ),
        .I4(\out_sum[7]_i_37_3 ),
        .O(out_mux_sel_u_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h77777717)) 
    \out_sum[7]_i_54 
       (.I0(p_30_out[13]),
        .I1(p_30_out[18]),
        .I2(middle_row_data[8]),
        .I3(\out_sum[7]_i_36_1 ),
        .I4(\out_sum[7]_i_36_2 ),
        .O(out_mux_sel_u_reg_1));
  LUT5 #(
    .INIT(32'h77777717)) 
    \out_sum[7]_i_55 
       (.I0(p_30_out[17]),
        .I1(p_30_out[21]),
        .I2(middle_row_data[10]),
        .I3(\out_sum[7]_i_34 ),
        .I4(\out_sum[7]_i_34_0 ),
        .O(out_mux_sel_u_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_56 
       (.I0(out_mux_sel_u_reg_3),
        .I1(out_mux_sel_u_reg_5),
        .I2(out_mux_sel_u_reg_4),
        .O(\out_sum[7]_i_59_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_57 
       (.I0(out_mux_sel_u_reg_6),
        .I1(\out_sum[7]_i_63_n_0 ),
        .I2(\out_sum[7]_i_62_n_0 ),
        .O(\out_sum[7]_i_62_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFF020200)) 
    \out_sum[7]_i_58 
       (.I0(middle_row_data[5]),
        .I1(\out_sum[7]_i_43_4 ),
        .I2(\out_sum[7]_i_43_3 ),
        .I3(p_30_out[4]),
        .I4(p_30_out[7]),
        .O(out_mux_sel_u_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF020200)) 
    \out_sum[7]_i_59 
       (.I0(middle_row_data[7]),
        .I1(\out_sum[7]_i_36_3 ),
        .I2(\out_sum[7]_i_36_4 ),
        .I3(p_30_out[15]),
        .I4(p_30_out[14]),
        .O(out_mux_sel_u_reg_4));
  LUT2 #(
    .INIT(4'h6)) 
    \out_sum[7]_i_6 
       (.I0(\out_sum[7]_i_42_0 ),
        .I1(\out_sum[7]_i_37_0 ),
        .O(sum_result[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF020200)) 
    \out_sum[7]_i_60 
       (.I0(middle_row_data[6]),
        .I1(\out_sum[7]_i_43 ),
        .I2(\out_sum[7]_i_43_0 ),
        .I3(p_30_out[12]),
        .I4(p_30_out[11]),
        .O(out_mux_sel_u_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF020200)) 
    \out_sum[7]_i_61 
       (.I0(middle_row_data[4]),
        .I1(\out_sum[7]_i_43_2 ),
        .I2(\out_sum[7]_i_43_1 ),
        .I3(p_30_out[9]),
        .I4(p_30_out[8]),
        .O(out_mux_sel_u_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF020200)) 
    \out_sum[7]_i_62 
       (.I0(middle_row_data[2]),
        .I1(\out_sum[7]_i_32_0 ),
        .I2(\out_sum[7]_i_32_1 ),
        .I3(p_30_out[5]),
        .I4(p_30_out[6]),
        .O(\out_sum[7]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hFF020200)) 
    \out_sum[7]_i_63 
       (.I0(middle_row_data[3]),
        .I1(\out_sum[7]_i_32_2 ),
        .I2(\out_sum[7]_i_32_3 ),
        .I3(p_30_out[2]),
        .I4(p_30_out[3]),
        .O(\out_sum[7]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h5559AAA6)) 
    \out_sum[7]_i_68 
       (.I0(p_30_out[16]),
        .I1(middle_row_data[9]),
        .I2(\out_sum[7]_i_37_2 ),
        .I3(\out_sum[7]_i_37_3 ),
        .I4(p_30_out[20]),
        .O(\out_sum[7]_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h66666696)) 
    \out_sum[7]_i_69 
       (.I0(p_30_out[11]),
        .I1(p_30_out[12]),
        .I2(middle_row_data[6]),
        .I3(\out_sum[7]_i_43 ),
        .I4(\out_sum[7]_i_43_0 ),
        .O(\out_sum[7]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \out_sum[7]_i_70 
       (.I0(\out_sum[7]_i_43_1 ),
        .I1(\out_sum[7]_i_43_2 ),
        .I2(middle_row_data[4]),
        .I3(p_30_out[9]),
        .I4(p_30_out[8]),
        .O(\out_sum[7]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \out_sum[7]_i_71 
       (.I0(\out_sum[7]_i_43_3 ),
        .I1(\out_sum[7]_i_43_4 ),
        .I2(middle_row_data[5]),
        .I3(p_30_out[4]),
        .I4(p_30_out[7]),
        .O(\out_sum[7]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFDFDFD02FD)) 
    \out_sum[7]_i_72 
       (.I0(middle_row_data[0]),
        .I1(\out_sum[7]_i_43_5 ),
        .I2(\out_sum[7]_i_43_6 ),
        .I3(middle_row_data[1]),
        .I4(\out_sum[7]_i_43_7 ),
        .I5(\out_sum[7]_i_43_8 ),
        .O(\out_sum[7]_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h66666696)) 
    \out_sum[7]_i_73 
       (.I0(p_30_out[6]),
        .I1(p_30_out[5]),
        .I2(middle_row_data[2]),
        .I3(\out_sum[7]_i_32_0 ),
        .I4(\out_sum[7]_i_32_1 ),
        .O(\out_sum[7]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_87 
       (.I0(p_30_out[3]),
        .I1(p_30_out[2]),
        .I2(p_30_out[1]),
        .I3(p_30_out[6]),
        .I4(p_30_out[5]),
        .I5(p_30_out[0]),
        .O(\out_sum[7]_i_190 ));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_4
   (\in_data[17] ,
    \in_data[19] ,
    out_mux_sel_u_reg,
    \in_data[18] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[17] ;
  output \in_data[19] ;
  output out_mux_sel_u_reg;
  output \in_data[18] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[17] ;
  wire \in_data[18] ;
  wire \in_data[19] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_219 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[17] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_220 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[18] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_221 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_222 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[19] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_223 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_5
   (\in_data[16] ,
    \in_data[18] ,
    out_mux_sel_u_reg,
    \in_data[17] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[16] ;
  output \in_data[18] ;
  output out_mux_sel_u_reg;
  output \in_data[17] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[16] ;
  wire \in_data[17] ;
  wire \in_data[18] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_224 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[16] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_225 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[17] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_226 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_227 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[18] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_228 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_6
   (out_mux_sel_u_reg,
    upper_row_data,
    D,
    w_data);
  output out_mux_sel_u_reg;
  input [2:0]upper_row_data;
  input [2:0]D;
  input [1:0]w_data;

  wire [2:0]D;
  wire out_mux_sel_u_reg;
  wire \out_sum[7]_i_216_n_0 ;
  wire \out_sum[7]_i_217_n_0 ;
  wire \out_sum[7]_i_218_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_119 
       (.I0(\out_sum[7]_i_216_n_0 ),
        .I1(\out_sum[7]_i_217_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\out_sum[7]_i_218_n_0 ),
        .O(out_mux_sel_u_reg));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_216 
       (.I0(D[0]),
        .I1(upper_row_data[2]),
        .I2(D[2]),
        .I3(w_data[0]),
        .I4(D[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_216_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_217 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(D[1]),
        .O(\out_sum[7]_i_217_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_218 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\out_sum[7]_i_218_n_0 ));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_7
   (\in_data[14] ,
    \in_data[16] ,
    out_mux_sel_u_reg,
    \in_data[15] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[14] ;
  output \in_data[16] ;
  output out_mux_sel_u_reg;
  output \in_data[15] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[14] ;
  wire \in_data[15] ;
  wire \in_data[16] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_107 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[14] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_108 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[15] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_109 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_110 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[16] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_111 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_8
   (\in_data[13] ,
    \in_data[15] ,
    out_mux_sel_u_reg,
    \in_data[14] ,
    out_mux_sel_u_reg_0,
    D,
    upper_row_data,
    w_data);
  output \in_data[13] ;
  output \in_data[15] ;
  output out_mux_sel_u_reg;
  output \in_data[14] ;
  output out_mux_sel_u_reg_0;
  input [2:0]D;
  input [2:0]upper_row_data;
  input [1:0]w_data;

  wire [2:0]D;
  wire \in_data[13] ;
  wire \in_data[14] ;
  wire \in_data[15] ;
  wire out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_235 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\in_data[13] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_236 
       (.I0(D[1]),
        .I1(w_data[1]),
        .I2(w_data[0]),
        .I3(upper_row_data[0]),
        .I4(upper_row_data[1]),
        .O(\in_data[14] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \out_sum[7]_i_237 
       (.I0(upper_row_data[0]),
        .I1(upper_row_data[1]),
        .I2(D[1]),
        .I3(w_data[1]),
        .I4(w_data[0]),
        .O(out_mux_sel_u_reg));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_238 
       (.I0(D[2]),
        .I1(upper_row_data[2]),
        .I2(D[0]),
        .O(\in_data[15] ));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_239 
       (.I0(w_data[1]),
        .I1(D[1]),
        .I2(w_data[0]),
        .O(out_mux_sel_u_reg_0));
endmodule

(* ORIG_REF_NAME = "count_ones" *) 
module count_ones_9
   (out_mux_sel_u_reg,
    upper_row_data,
    D,
    w_data);
  output out_mux_sel_u_reg;
  input [2:0]upper_row_data;
  input [2:0]D;
  input [1:0]w_data;

  wire [2:0]D;
  wire out_mux_sel_u_reg;
  wire \out_sum[7]_i_200_n_0 ;
  wire \out_sum[7]_i_201_n_0 ;
  wire \out_sum[7]_i_204_n_0 ;
  wire [2:0]upper_row_data;
  wire [1:0]w_data;

  LUT5 #(
    .INIT(32'hEAA8A880)) 
    \out_sum[7]_i_115 
       (.I0(\out_sum[7]_i_200_n_0 ),
        .I1(\out_sum[7]_i_201_n_0 ),
        .I2(upper_row_data[1]),
        .I3(upper_row_data[0]),
        .I4(\out_sum[7]_i_204_n_0 ),
        .O(out_mux_sel_u_reg));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \out_sum[7]_i_200 
       (.I0(D[0]),
        .I1(upper_row_data[2]),
        .I2(D[2]),
        .I3(w_data[0]),
        .I4(D[1]),
        .I5(w_data[1]),
        .O(\out_sum[7]_i_200_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_201 
       (.I0(w_data[0]),
        .I1(w_data[1]),
        .I2(D[1]),
        .O(\out_sum[7]_i_201_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_204 
       (.I0(D[0]),
        .I1(D[2]),
        .I2(upper_row_data[2]),
        .O(\out_sum[7]_i_204_n_0 ));
endmodule

module mem_element
   (r_data,
    we_matrix_data,
    Q,
    clk_IBUF_BUFG,
    w_data);
  output [33:0]r_data;
  input we_matrix_data;
  input [7:0]Q;
  input clk_IBUF_BUFG;
  input [33:0]w_data;

  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire mem_reg_0_127_0_0__0_n_0;
  wire mem_reg_0_127_0_0__10_n_0;
  wire mem_reg_0_127_0_0__11_n_0;
  wire mem_reg_0_127_0_0__12_n_0;
  wire mem_reg_0_127_0_0__13_n_0;
  wire mem_reg_0_127_0_0__14_n_0;
  wire mem_reg_0_127_0_0__15_n_0;
  wire mem_reg_0_127_0_0__16_n_0;
  wire mem_reg_0_127_0_0__17_n_0;
  wire mem_reg_0_127_0_0__18_n_0;
  wire mem_reg_0_127_0_0__19_n_0;
  wire mem_reg_0_127_0_0__1_n_0;
  wire mem_reg_0_127_0_0__20_n_0;
  wire mem_reg_0_127_0_0__21_n_0;
  wire mem_reg_0_127_0_0__22_n_0;
  wire mem_reg_0_127_0_0__23_n_0;
  wire mem_reg_0_127_0_0__24_n_0;
  wire mem_reg_0_127_0_0__25_n_0;
  wire mem_reg_0_127_0_0__26_n_0;
  wire mem_reg_0_127_0_0__27_n_0;
  wire mem_reg_0_127_0_0__28_n_0;
  wire mem_reg_0_127_0_0__29_n_0;
  wire mem_reg_0_127_0_0__2_n_0;
  wire mem_reg_0_127_0_0__30_n_0;
  wire mem_reg_0_127_0_0__31_n_0;
  wire mem_reg_0_127_0_0__32_n_0;
  wire mem_reg_0_127_0_0__3_n_0;
  wire mem_reg_0_127_0_0__4_n_0;
  wire mem_reg_0_127_0_0__5_n_0;
  wire mem_reg_0_127_0_0__6_n_0;
  wire mem_reg_0_127_0_0__7_n_0;
  wire mem_reg_0_127_0_0__8_n_0;
  wire mem_reg_0_127_0_0__9_n_0;
  wire mem_reg_0_127_0_0_i_2_n_0;
  wire mem_reg_0_127_0_0_n_0;
  wire mem_reg_0_31_0_0__0_n_0;
  wire mem_reg_0_31_0_0__10_n_0;
  wire mem_reg_0_31_0_0__11_n_0;
  wire mem_reg_0_31_0_0__12_n_0;
  wire mem_reg_0_31_0_0__13_n_0;
  wire mem_reg_0_31_0_0__14_n_0;
  wire mem_reg_0_31_0_0__15_n_0;
  wire mem_reg_0_31_0_0__16_n_0;
  wire mem_reg_0_31_0_0__17_n_0;
  wire mem_reg_0_31_0_0__18_n_0;
  wire mem_reg_0_31_0_0__19_n_0;
  wire mem_reg_0_31_0_0__1_n_0;
  wire mem_reg_0_31_0_0__20_n_0;
  wire mem_reg_0_31_0_0__21_n_0;
  wire mem_reg_0_31_0_0__22_n_0;
  wire mem_reg_0_31_0_0__23_n_0;
  wire mem_reg_0_31_0_0__24_n_0;
  wire mem_reg_0_31_0_0__25_n_0;
  wire mem_reg_0_31_0_0__26_n_0;
  wire mem_reg_0_31_0_0__27_n_0;
  wire mem_reg_0_31_0_0__28_n_0;
  wire mem_reg_0_31_0_0__29_n_0;
  wire mem_reg_0_31_0_0__2_n_0;
  wire mem_reg_0_31_0_0__30_n_0;
  wire mem_reg_0_31_0_0__31_n_0;
  wire mem_reg_0_31_0_0__32_n_0;
  wire mem_reg_0_31_0_0__3_n_0;
  wire mem_reg_0_31_0_0__4_n_0;
  wire mem_reg_0_31_0_0__5_n_0;
  wire mem_reg_0_31_0_0__6_n_0;
  wire mem_reg_0_31_0_0__7_n_0;
  wire mem_reg_0_31_0_0__8_n_0;
  wire mem_reg_0_31_0_0__9_n_0;
  wire mem_reg_0_31_0_0_i_1_n_0;
  wire mem_reg_0_31_0_0_n_0;
  wire [33:0]r_data;
  wire [33:0]r_data0;
  wire [33:0]w_data;
  wire we_matrix_data;

  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[0]),
        .O(mem_reg_0_127_0_0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[1]),
        .O(mem_reg_0_127_0_0__0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[2]),
        .O(mem_reg_0_127_0_0__1_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__10
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[11]),
        .O(mem_reg_0_127_0_0__10_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__11
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[12]),
        .O(mem_reg_0_127_0_0__11_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[13]),
        .O(mem_reg_0_127_0_0__12_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__13
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[14]),
        .O(mem_reg_0_127_0_0__13_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__14
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[15]),
        .O(mem_reg_0_127_0_0__14_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__15
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[16]),
        .O(mem_reg_0_127_0_0__15_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__16
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[17]),
        .O(mem_reg_0_127_0_0__16_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__17
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[18]),
        .O(mem_reg_0_127_0_0__17_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__18
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[19]),
        .O(mem_reg_0_127_0_0__18_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__19
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[20]),
        .O(mem_reg_0_127_0_0__19_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[3]),
        .O(mem_reg_0_127_0_0__2_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__20
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[21]),
        .O(mem_reg_0_127_0_0__20_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__21
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[22]),
        .O(mem_reg_0_127_0_0__21_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__22
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[23]),
        .O(mem_reg_0_127_0_0__22_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__23
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[24]),
        .O(mem_reg_0_127_0_0__23_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__24
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[25]),
        .O(mem_reg_0_127_0_0__24_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__25
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[26]),
        .O(mem_reg_0_127_0_0__25_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__26
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[27]),
        .O(mem_reg_0_127_0_0__26_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__27
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[28]),
        .O(mem_reg_0_127_0_0__27_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__28
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[29]),
        .O(mem_reg_0_127_0_0__28_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__29
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[30]),
        .O(mem_reg_0_127_0_0__29_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[4]),
        .O(mem_reg_0_127_0_0__3_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__30
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[31]),
        .O(mem_reg_0_127_0_0__30_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__31
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[32]),
        .O(mem_reg_0_127_0_0__31_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__32
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[33]),
        .O(mem_reg_0_127_0_0__32_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[5]),
        .O(mem_reg_0_127_0_0__4_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[6]),
        .O(mem_reg_0_127_0_0__5_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[7]),
        .O(mem_reg_0_127_0_0__6_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[8]),
        .O(mem_reg_0_127_0_0__7_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__8
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[9]),
        .O(mem_reg_0_127_0_0__8_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1S #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0__9
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .A6(Q[6]),
        .D(w_data[10]),
        .O(mem_reg_0_127_0_0__9_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_127_0_0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_127_0_0_i_2
       (.I0(we_matrix_data),
        .I1(Q[7]),
        .O(mem_reg_0_127_0_0_i_2_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[0]),
        .O(mem_reg_0_31_0_0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[1]),
        .O(mem_reg_0_31_0_0__0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[2]),
        .O(mem_reg_0_31_0_0__1_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__10
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[11]),
        .O(mem_reg_0_31_0_0__10_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__11
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[12]),
        .O(mem_reg_0_31_0_0__11_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[13]),
        .O(mem_reg_0_31_0_0__12_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__13
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[14]),
        .O(mem_reg_0_31_0_0__13_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__14
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[15]),
        .O(mem_reg_0_31_0_0__14_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__15
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[16]),
        .O(mem_reg_0_31_0_0__15_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__16
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[17]),
        .O(mem_reg_0_31_0_0__16_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__17
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[18]),
        .O(mem_reg_0_31_0_0__17_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__18
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[19]),
        .O(mem_reg_0_31_0_0__18_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__19
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[20]),
        .O(mem_reg_0_31_0_0__19_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[3]),
        .O(mem_reg_0_31_0_0__2_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__20
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[21]),
        .O(mem_reg_0_31_0_0__20_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__21
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[22]),
        .O(mem_reg_0_31_0_0__21_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__22
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[23]),
        .O(mem_reg_0_31_0_0__22_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__23
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[24]),
        .O(mem_reg_0_31_0_0__23_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__24
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[25]),
        .O(mem_reg_0_31_0_0__24_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__25
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[26]),
        .O(mem_reg_0_31_0_0__25_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__26
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[27]),
        .O(mem_reg_0_31_0_0__26_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__27
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[28]),
        .O(mem_reg_0_31_0_0__27_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__28
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[29]),
        .O(mem_reg_0_31_0_0__28_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__29
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[30]),
        .O(mem_reg_0_31_0_0__29_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[4]),
        .O(mem_reg_0_31_0_0__3_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__30
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[31]),
        .O(mem_reg_0_31_0_0__30_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__31
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[32]),
        .O(mem_reg_0_31_0_0__31_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__32
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[33]),
        .O(mem_reg_0_31_0_0__32_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[5]),
        .O(mem_reg_0_31_0_0__4_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[6]),
        .O(mem_reg_0_31_0_0__5_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[7]),
        .O(mem_reg_0_31_0_0__6_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[8]),
        .O(mem_reg_0_31_0_0__7_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__8
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[9]),
        .O(mem_reg_0_31_0_0__8_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "5440" *) 
  (* RTL_RAM_NAME = "puzzle4_part2/mem_inst/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "159" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_0_0__9
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(w_data[10]),
        .O(mem_reg_0_31_0_0__9_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(mem_reg_0_31_0_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    mem_reg_0_31_0_0_i_1
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(we_matrix_data),
        .O(mem_reg_0_31_0_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[0]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0_n_0),
        .O(r_data0[0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[10]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__9_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__9_n_0),
        .O(r_data0[10]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[11]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__10_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__10_n_0),
        .O(r_data0[11]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[12]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__11_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__11_n_0),
        .O(r_data0[12]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[13]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__12_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__12_n_0),
        .O(r_data0[13]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[14]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__13_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__13_n_0),
        .O(r_data0[14]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[15]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__14_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__14_n_0),
        .O(r_data0[15]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[16]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__15_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__15_n_0),
        .O(r_data0[16]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[17]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__16_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__16_n_0),
        .O(r_data0[17]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[18]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__17_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__17_n_0),
        .O(r_data0[18]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[19]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__18_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__18_n_0),
        .O(r_data0[19]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[1]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__0_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__0_n_0),
        .O(r_data0[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[20]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__19_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__19_n_0),
        .O(r_data0[20]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[21]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__20_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__20_n_0),
        .O(r_data0[21]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[22]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__21_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__21_n_0),
        .O(r_data0[22]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[23]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__22_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__22_n_0),
        .O(r_data0[23]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[24]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__23_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__23_n_0),
        .O(r_data0[24]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[25]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__24_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__24_n_0),
        .O(r_data0[25]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[26]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__25_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__25_n_0),
        .O(r_data0[26]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[27]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__26_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__26_n_0),
        .O(r_data0[27]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[28]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__27_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__27_n_0),
        .O(r_data0[28]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[29]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__28_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__28_n_0),
        .O(r_data0[29]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[2]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__1_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__1_n_0),
        .O(r_data0[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[30]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__29_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__29_n_0),
        .O(r_data0[30]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[31]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__30_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__30_n_0),
        .O(r_data0[31]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[32]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__31_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__31_n_0),
        .O(r_data0[32]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[33]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__32_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__32_n_0),
        .O(r_data0[33]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[3]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__2_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__2_n_0),
        .O(r_data0[3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[4]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__3_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__3_n_0),
        .O(r_data0[4]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[5]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__4_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__4_n_0),
        .O(r_data0[5]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[6]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__5_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__5_n_0),
        .O(r_data0[6]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[7]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__6_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__6_n_0),
        .O(r_data0[7]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[8]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__7_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__7_n_0),
        .O(r_data0[8]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \r_data[9]_i_1 
       (.I0(Q[5]),
        .I1(mem_reg_0_31_0_0__8_n_0),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(mem_reg_0_127_0_0__8_n_0),
        .O(r_data0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[0]),
        .Q(r_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[10]),
        .Q(r_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[11]),
        .Q(r_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[12]),
        .Q(r_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[13]),
        .Q(r_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[14]),
        .Q(r_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[15]),
        .Q(r_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[16]),
        .Q(r_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[17]),
        .Q(r_data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[18]),
        .Q(r_data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[19]),
        .Q(r_data[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[1]),
        .Q(r_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[20]),
        .Q(r_data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[21]),
        .Q(r_data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[22]),
        .Q(r_data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[23]),
        .Q(r_data[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[24]),
        .Q(r_data[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[25]),
        .Q(r_data[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[26]),
        .Q(r_data[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[27]),
        .Q(r_data[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[28]),
        .Q(r_data[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[29]),
        .Q(r_data[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[2]),
        .Q(r_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[30]),
        .Q(r_data[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[31]),
        .Q(r_data[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[32]),
        .Q(r_data[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[33]),
        .Q(r_data[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[3]),
        .Q(r_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[4]),
        .Q(r_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[5]),
        .Q(r_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[6]),
        .Q(r_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[7]),
        .Q(r_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[8]),
        .Q(r_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(r_data0[9]),
        .Q(r_data[9]),
        .R(1'b0));
endmodule

(* INDEX_M = "1'b1" *) (* INDEX_U = "1'b0" *) (* MODULAR_BITS = "5" *) 
(* MODULAR_SIZE = "32" *) (* NO_OF_WORDS = "5" *) (* OUTPUT_WIDTH = "16" *) 
(* REAL_ROW_SIZE = "160" *) (* ROW_SIZE = "160" *) (* WORD_INDEX_BITS = "3" *) 
(* NotValidForBitStream *)
module puzzle4_part2
   (clk,
    reset,
    enable,
    in_data,
    out_sum,
    BRAM_data_out);
  input clk;
  input reset;
  input enable;
  input [31:0]in_data;
  output [15:0]out_sum;
  output [33:0]BRAM_data_out;

  wire [33:0]BRAM_data_out;
  wire [33:0]BRAM_data_out_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cos32_inst_n_10;
  wire cos32_inst_n_11;
  wire cos32_inst_n_12;
  wire cos32_inst_n_13;
  wire cos32_inst_n_14;
  wire cos32_inst_n_15;
  wire cos32_inst_n_16;
  wire cos32_inst_n_17;
  wire cos32_inst_n_18;
  wire cos32_inst_n_19;
  wire cos32_inst_n_20;
  wire cos32_inst_n_21;
  wire cos32_inst_n_22;
  wire cos32_inst_n_23;
  wire cos32_inst_n_3;
  wire cos32_inst_n_4;
  wire cos32_inst_n_5;
  wire cos32_inst_n_6;
  wire cos32_inst_n_7;
  wire cos32_inst_n_8;
  wire cos32_inst_n_9;
  wire enable;
  wire enable_IBUF;
  wire [31:0]in_data;
  wire [31:0]in_data_IBUF;
  wire last_bit;
  wire [2:0]last_index_count_ones;
  wire [2:0]last_index_count_ones_next;
  wire \mem_w_addr[7]_i_3_n_0 ;
  wire [0:33]middle_row_data;
  wire out_mux_sel_u;
  wire [15:0]out_sum;
  wire out_sum1;
  wire [15:0]out_sum_OBUF;
  wire [7:0]p_0_in;
  wire [31:3]p_30_out;
  wire reset;
  wire reset_IBUF;
  wire \result_vector_gen[10].c_inst_n_0 ;
  wire \result_vector_gen[11].c_inst_n_0 ;
  wire \result_vector_gen[11].c_inst_n_1 ;
  wire \result_vector_gen[11].c_inst_n_2 ;
  wire \result_vector_gen[11].c_inst_n_3 ;
  wire \result_vector_gen[11].c_inst_n_4 ;
  wire \result_vector_gen[12].c_inst_n_0 ;
  wire \result_vector_gen[12].c_inst_n_1 ;
  wire \result_vector_gen[12].c_inst_n_2 ;
  wire \result_vector_gen[12].c_inst_n_3 ;
  wire \result_vector_gen[12].c_inst_n_4 ;
  wire \result_vector_gen[13].c_inst_n_0 ;
  wire \result_vector_gen[13].c_inst_n_1 ;
  wire \result_vector_gen[13].c_inst_n_2 ;
  wire \result_vector_gen[13].c_inst_n_3 ;
  wire \result_vector_gen[13].c_inst_n_4 ;
  wire \result_vector_gen[14].c_inst_n_0 ;
  wire \result_vector_gen[14].c_inst_n_1 ;
  wire \result_vector_gen[14].c_inst_n_2 ;
  wire \result_vector_gen[14].c_inst_n_3 ;
  wire \result_vector_gen[14].c_inst_n_4 ;
  wire \result_vector_gen[15].c_inst_n_0 ;
  wire \result_vector_gen[15].c_inst_n_1 ;
  wire \result_vector_gen[15].c_inst_n_2 ;
  wire \result_vector_gen[15].c_inst_n_3 ;
  wire \result_vector_gen[15].c_inst_n_4 ;
  wire \result_vector_gen[16].c_inst_n_0 ;
  wire \result_vector_gen[17].c_inst_n_0 ;
  wire \result_vector_gen[17].c_inst_n_1 ;
  wire \result_vector_gen[17].c_inst_n_2 ;
  wire \result_vector_gen[17].c_inst_n_3 ;
  wire \result_vector_gen[17].c_inst_n_4 ;
  wire \result_vector_gen[18].c_inst_n_0 ;
  wire \result_vector_gen[18].c_inst_n_1 ;
  wire \result_vector_gen[18].c_inst_n_2 ;
  wire \result_vector_gen[18].c_inst_n_3 ;
  wire \result_vector_gen[18].c_inst_n_4 ;
  wire \result_vector_gen[19].c_inst_n_0 ;
  wire \result_vector_gen[1].c_inst_n_0 ;
  wire \result_vector_gen[1].c_inst_n_1 ;
  wire \result_vector_gen[1].c_inst_n_2 ;
  wire \result_vector_gen[1].c_inst_n_3 ;
  wire \result_vector_gen[20].c_inst_n_0 ;
  wire \result_vector_gen[20].c_inst_n_1 ;
  wire \result_vector_gen[20].c_inst_n_2 ;
  wire \result_vector_gen[20].c_inst_n_3 ;
  wire \result_vector_gen[20].c_inst_n_4 ;
  wire \result_vector_gen[21].c_inst_n_0 ;
  wire \result_vector_gen[21].c_inst_n_1 ;
  wire \result_vector_gen[21].c_inst_n_2 ;
  wire \result_vector_gen[21].c_inst_n_3 ;
  wire \result_vector_gen[21].c_inst_n_4 ;
  wire \result_vector_gen[22].c_inst_n_0 ;
  wire \result_vector_gen[22].c_inst_n_1 ;
  wire \result_vector_gen[22].c_inst_n_2 ;
  wire \result_vector_gen[22].c_inst_n_3 ;
  wire \result_vector_gen[22].c_inst_n_4 ;
  wire \result_vector_gen[23].c_inst_n_0 ;
  wire \result_vector_gen[24].c_inst_n_0 ;
  wire \result_vector_gen[24].c_inst_n_1 ;
  wire \result_vector_gen[24].c_inst_n_2 ;
  wire \result_vector_gen[24].c_inst_n_3 ;
  wire \result_vector_gen[24].c_inst_n_4 ;
  wire \result_vector_gen[25].c_inst_n_0 ;
  wire \result_vector_gen[25].c_inst_n_1 ;
  wire \result_vector_gen[25].c_inst_n_2 ;
  wire \result_vector_gen[25].c_inst_n_3 ;
  wire \result_vector_gen[25].c_inst_n_4 ;
  wire \result_vector_gen[26].c_inst_n_0 ;
  wire \result_vector_gen[26].c_inst_n_1 ;
  wire \result_vector_gen[26].c_inst_n_2 ;
  wire \result_vector_gen[26].c_inst_n_3 ;
  wire \result_vector_gen[26].c_inst_n_4 ;
  wire \result_vector_gen[27].c_inst_n_0 ;
  wire \result_vector_gen[27].c_inst_n_1 ;
  wire \result_vector_gen[27].c_inst_n_2 ;
  wire \result_vector_gen[27].c_inst_n_3 ;
  wire \result_vector_gen[27].c_inst_n_4 ;
  wire \result_vector_gen[28].c_inst_n_0 ;
  wire \result_vector_gen[28].c_inst_n_1 ;
  wire \result_vector_gen[28].c_inst_n_2 ;
  wire \result_vector_gen[28].c_inst_n_3 ;
  wire \result_vector_gen[28].c_inst_n_4 ;
  wire \result_vector_gen[28].c_inst_n_5 ;
  wire \result_vector_gen[28].c_inst_n_6 ;
  wire \result_vector_gen[29].c_inst_n_0 ;
  wire \result_vector_gen[29].c_inst_n_1 ;
  wire \result_vector_gen[29].c_inst_n_2 ;
  wire \result_vector_gen[29].c_inst_n_3 ;
  wire \result_vector_gen[29].c_inst_n_4 ;
  wire \result_vector_gen[29].c_inst_n_5 ;
  wire \result_vector_gen[29].c_inst_n_6 ;
  wire \result_vector_gen[2].c_inst_n_0 ;
  wire \result_vector_gen[2].c_inst_n_1 ;
  wire \result_vector_gen[2].c_inst_n_2 ;
  wire \result_vector_gen[2].c_inst_n_3 ;
  wire \result_vector_gen[2].c_inst_n_4 ;
  wire \result_vector_gen[30].c_inst_n_0 ;
  wire \result_vector_gen[31].c_inst_n_0 ;
  wire \result_vector_gen[3].c_inst_n_0 ;
  wire \result_vector_gen[3].c_inst_n_1 ;
  wire \result_vector_gen[3].c_inst_n_2 ;
  wire \result_vector_gen[3].c_inst_n_3 ;
  wire \result_vector_gen[3].c_inst_n_4 ;
  wire \result_vector_gen[4].c_inst_n_0 ;
  wire \result_vector_gen[5].c_inst_n_0 ;
  wire \result_vector_gen[5].c_inst_n_1 ;
  wire \result_vector_gen[5].c_inst_n_2 ;
  wire \result_vector_gen[5].c_inst_n_3 ;
  wire \result_vector_gen[5].c_inst_n_4 ;
  wire \result_vector_gen[5].c_inst_n_5 ;
  wire \result_vector_gen[5].c_inst_n_6 ;
  wire \result_vector_gen[6].c_inst_n_0 ;
  wire \result_vector_gen[6].c_inst_n_1 ;
  wire \result_vector_gen[6].c_inst_n_2 ;
  wire \result_vector_gen[6].c_inst_n_3 ;
  wire \result_vector_gen[6].c_inst_n_4 ;
  wire \result_vector_gen[7].c_inst_n_0 ;
  wire \result_vector_gen[7].c_inst_n_1 ;
  wire \result_vector_gen[7].c_inst_n_2 ;
  wire \result_vector_gen[7].c_inst_n_3 ;
  wire \result_vector_gen[7].c_inst_n_4 ;
  wire \result_vector_gen[8].c_inst_n_0 ;
  wire \result_vector_gen[9].c_inst_n_0 ;
  wire \result_vector_gen[9].c_inst_n_1 ;
  wire \result_vector_gen[9].c_inst_n_2 ;
  wire \result_vector_gen[9].c_inst_n_3 ;
  wire \result_vector_gen[9].c_inst_n_4 ;
  wire rr_m_inst_n_10;
  wire rr_m_inst_n_11;
  wire rr_m_inst_n_12;
  wire rr_m_inst_n_13;
  wire rr_m_inst_n_14;
  wire rr_m_inst_n_15;
  wire rr_m_inst_n_16;
  wire rr_m_inst_n_17;
  wire rr_m_inst_n_18;
  wire rr_m_inst_n_19;
  wire rr_m_inst_n_20;
  wire rr_m_inst_n_21;
  wire rr_m_inst_n_22;
  wire rr_m_inst_n_23;
  wire rr_m_inst_n_24;
  wire rr_m_inst_n_25;
  wire rr_m_inst_n_26;
  wire rr_m_inst_n_27;
  wire rr_m_inst_n_28;
  wire rr_m_inst_n_29;
  wire rr_m_inst_n_3;
  wire rr_m_inst_n_30;
  wire rr_m_inst_n_31;
  wire rr_m_inst_n_32;
  wire rr_m_inst_n_33;
  wire rr_m_inst_n_34;
  wire rr_m_inst_n_35;
  wire rr_m_inst_n_36;
  wire rr_m_inst_n_37;
  wire rr_m_inst_n_38;
  wire rr_m_inst_n_39;
  wire rr_m_inst_n_4;
  wire rr_m_inst_n_40;
  wire rr_m_inst_n_41;
  wire rr_m_inst_n_42;
  wire rr_m_inst_n_43;
  wire rr_m_inst_n_44;
  wire rr_m_inst_n_45;
  wire rr_m_inst_n_46;
  wire rr_m_inst_n_47;
  wire rr_m_inst_n_48;
  wire rr_m_inst_n_49;
  wire rr_m_inst_n_5;
  wire rr_m_inst_n_50;
  wire rr_m_inst_n_51;
  wire rr_m_inst_n_52;
  wire rr_m_inst_n_53;
  wire rr_m_inst_n_54;
  wire rr_m_inst_n_55;
  wire rr_m_inst_n_56;
  wire rr_m_inst_n_57;
  wire rr_m_inst_n_58;
  wire rr_m_inst_n_59;
  wire rr_m_inst_n_6;
  wire rr_m_inst_n_60;
  wire rr_m_inst_n_61;
  wire rr_m_inst_n_62;
  wire rr_m_inst_n_63;
  wire rr_m_inst_n_64;
  wire rr_m_inst_n_65;
  wire rr_m_inst_n_66;
  wire rr_m_inst_n_67;
  wire rr_m_inst_n_68;
  wire rr_m_inst_n_7;
  wire rr_m_inst_n_8;
  wire rr_m_inst_n_9;
  wire rr_u_inst_n_10;
  wire rr_u_inst_n_11;
  wire rr_u_inst_n_12;
  wire rr_u_inst_n_13;
  wire rr_u_inst_n_14;
  wire rr_u_inst_n_15;
  wire rr_u_inst_n_16;
  wire rr_u_inst_n_17;
  wire rr_u_inst_n_18;
  wire rr_u_inst_n_19;
  wire rr_u_inst_n_20;
  wire rr_u_inst_n_21;
  wire rr_u_inst_n_22;
  wire rr_u_inst_n_23;
  wire rr_u_inst_n_24;
  wire rr_u_inst_n_25;
  wire rr_u_inst_n_26;
  wire rr_u_inst_n_27;
  wire rr_u_inst_n_28;
  wire rr_u_inst_n_29;
  wire rr_u_inst_n_3;
  wire rr_u_inst_n_30;
  wire rr_u_inst_n_31;
  wire rr_u_inst_n_32;
  wire rr_u_inst_n_33;
  wire rr_u_inst_n_34;
  wire rr_u_inst_n_35;
  wire rr_u_inst_n_36;
  wire rr_u_inst_n_37;
  wire rr_u_inst_n_38;
  wire rr_u_inst_n_39;
  wire rr_u_inst_n_4;
  wire rr_u_inst_n_40;
  wire rr_u_inst_n_41;
  wire rr_u_inst_n_42;
  wire rr_u_inst_n_43;
  wire rr_u_inst_n_44;
  wire rr_u_inst_n_45;
  wire rr_u_inst_n_46;
  wire rr_u_inst_n_47;
  wire rr_u_inst_n_48;
  wire rr_u_inst_n_49;
  wire rr_u_inst_n_5;
  wire rr_u_inst_n_50;
  wire rr_u_inst_n_51;
  wire rr_u_inst_n_52;
  wire rr_u_inst_n_53;
  wire rr_u_inst_n_54;
  wire rr_u_inst_n_55;
  wire rr_u_inst_n_56;
  wire rr_u_inst_n_57;
  wire rr_u_inst_n_58;
  wire rr_u_inst_n_59;
  wire rr_u_inst_n_6;
  wire rr_u_inst_n_60;
  wire rr_u_inst_n_61;
  wire rr_u_inst_n_62;
  wire rr_u_inst_n_63;
  wire rr_u_inst_n_64;
  wire rr_u_inst_n_65;
  wire rr_u_inst_n_66;
  wire rr_u_inst_n_67;
  wire rr_u_inst_n_7;
  wire rr_u_inst_n_8;
  wire rr_u_inst_n_9;
  wire rri_inst_n_1;
  wire rri_inst_n_3;
  wire rri_inst_n_4;
  wire rri_inst_n_5;
  wire rri_inst_n_6;
  wire rri_inst_n_7;
  wire sel;
  wire [4:0]sum_result;
  wire upper_bit;
  wire [1:33]upper_row_data;
  wire [7:0]w_addr;
  wire we_matrix_data;
  wire wic_inst_n_0;
  wire wic_inst_n_1;
  wire wic_inst_n_100;
  wire wic_inst_n_101;
  wire wic_inst_n_102;
  wire wic_inst_n_103;
  wire wic_inst_n_104;
  wire wic_inst_n_105;
  wire wic_inst_n_106;
  wire wic_inst_n_107;
  wire wic_inst_n_108;
  wire wic_inst_n_109;
  wire wic_inst_n_110;
  wire wic_inst_n_111;
  wire wic_inst_n_112;
  wire wic_inst_n_113;
  wire wic_inst_n_114;
  wire wic_inst_n_115;
  wire wic_inst_n_116;
  wire wic_inst_n_117;
  wire wic_inst_n_118;
  wire wic_inst_n_119;
  wire wic_inst_n_120;
  wire wic_inst_n_121;
  wire wic_inst_n_122;
  wire wic_inst_n_123;
  wire wic_inst_n_124;
  wire wic_inst_n_125;
  wire wic_inst_n_126;
  wire wic_inst_n_127;
  wire wic_inst_n_128;
  wire wic_inst_n_129;
  wire wic_inst_n_130;
  wire wic_inst_n_131;
  wire wic_inst_n_132;
  wire wic_inst_n_55;
  wire wic_inst_n_59;
  wire wic_inst_n_90;
  wire wic_inst_n_91;
  wire wic_inst_n_92;
  wire wic_inst_n_93;
  wire wic_inst_n_94;
  wire wic_inst_n_95;
  wire wic_inst_n_96;
  wire wic_inst_n_97;
  wire wic_inst_n_98;
  wire wic_inst_n_99;
  wire [2:0]word_index_counter;

  OBUF \BRAM_data_out_OBUF[0]_inst 
       (.I(BRAM_data_out_OBUF[0]),
        .O(BRAM_data_out[0]));
  OBUF \BRAM_data_out_OBUF[10]_inst 
       (.I(BRAM_data_out_OBUF[10]),
        .O(BRAM_data_out[10]));
  OBUF \BRAM_data_out_OBUF[11]_inst 
       (.I(BRAM_data_out_OBUF[11]),
        .O(BRAM_data_out[11]));
  OBUF \BRAM_data_out_OBUF[12]_inst 
       (.I(BRAM_data_out_OBUF[12]),
        .O(BRAM_data_out[12]));
  OBUF \BRAM_data_out_OBUF[13]_inst 
       (.I(BRAM_data_out_OBUF[13]),
        .O(BRAM_data_out[13]));
  OBUF \BRAM_data_out_OBUF[14]_inst 
       (.I(BRAM_data_out_OBUF[14]),
        .O(BRAM_data_out[14]));
  OBUF \BRAM_data_out_OBUF[15]_inst 
       (.I(BRAM_data_out_OBUF[15]),
        .O(BRAM_data_out[15]));
  OBUF \BRAM_data_out_OBUF[16]_inst 
       (.I(BRAM_data_out_OBUF[16]),
        .O(BRAM_data_out[16]));
  OBUF \BRAM_data_out_OBUF[17]_inst 
       (.I(BRAM_data_out_OBUF[17]),
        .O(BRAM_data_out[17]));
  OBUF \BRAM_data_out_OBUF[18]_inst 
       (.I(BRAM_data_out_OBUF[18]),
        .O(BRAM_data_out[18]));
  OBUF \BRAM_data_out_OBUF[19]_inst 
       (.I(BRAM_data_out_OBUF[19]),
        .O(BRAM_data_out[19]));
  OBUF \BRAM_data_out_OBUF[1]_inst 
       (.I(BRAM_data_out_OBUF[1]),
        .O(BRAM_data_out[1]));
  OBUF \BRAM_data_out_OBUF[20]_inst 
       (.I(BRAM_data_out_OBUF[20]),
        .O(BRAM_data_out[20]));
  OBUF \BRAM_data_out_OBUF[21]_inst 
       (.I(BRAM_data_out_OBUF[21]),
        .O(BRAM_data_out[21]));
  OBUF \BRAM_data_out_OBUF[22]_inst 
       (.I(BRAM_data_out_OBUF[22]),
        .O(BRAM_data_out[22]));
  OBUF \BRAM_data_out_OBUF[23]_inst 
       (.I(BRAM_data_out_OBUF[23]),
        .O(BRAM_data_out[23]));
  OBUF \BRAM_data_out_OBUF[24]_inst 
       (.I(BRAM_data_out_OBUF[24]),
        .O(BRAM_data_out[24]));
  OBUF \BRAM_data_out_OBUF[25]_inst 
       (.I(BRAM_data_out_OBUF[25]),
        .O(BRAM_data_out[25]));
  OBUF \BRAM_data_out_OBUF[26]_inst 
       (.I(BRAM_data_out_OBUF[26]),
        .O(BRAM_data_out[26]));
  OBUF \BRAM_data_out_OBUF[27]_inst 
       (.I(BRAM_data_out_OBUF[27]),
        .O(BRAM_data_out[27]));
  OBUF \BRAM_data_out_OBUF[28]_inst 
       (.I(BRAM_data_out_OBUF[28]),
        .O(BRAM_data_out[28]));
  OBUF \BRAM_data_out_OBUF[29]_inst 
       (.I(BRAM_data_out_OBUF[29]),
        .O(BRAM_data_out[29]));
  OBUF \BRAM_data_out_OBUF[2]_inst 
       (.I(BRAM_data_out_OBUF[2]),
        .O(BRAM_data_out[2]));
  OBUF \BRAM_data_out_OBUF[30]_inst 
       (.I(BRAM_data_out_OBUF[30]),
        .O(BRAM_data_out[30]));
  OBUF \BRAM_data_out_OBUF[31]_inst 
       (.I(BRAM_data_out_OBUF[31]),
        .O(BRAM_data_out[31]));
  OBUF \BRAM_data_out_OBUF[32]_inst 
       (.I(BRAM_data_out_OBUF[32]),
        .O(BRAM_data_out[32]));
  OBUF \BRAM_data_out_OBUF[33]_inst 
       (.I(BRAM_data_out_OBUF[33]),
        .O(BRAM_data_out[33]));
  OBUF \BRAM_data_out_OBUF[3]_inst 
       (.I(BRAM_data_out_OBUF[3]),
        .O(BRAM_data_out[3]));
  OBUF \BRAM_data_out_OBUF[4]_inst 
       (.I(BRAM_data_out_OBUF[4]),
        .O(BRAM_data_out[4]));
  OBUF \BRAM_data_out_OBUF[5]_inst 
       (.I(BRAM_data_out_OBUF[5]),
        .O(BRAM_data_out[5]));
  OBUF \BRAM_data_out_OBUF[6]_inst 
       (.I(BRAM_data_out_OBUF[6]),
        .O(BRAM_data_out[6]));
  OBUF \BRAM_data_out_OBUF[7]_inst 
       (.I(BRAM_data_out_OBUF[7]),
        .O(BRAM_data_out[7]));
  OBUF \BRAM_data_out_OBUF[8]_inst 
       (.I(BRAM_data_out_OBUF[8]),
        .O(BRAM_data_out[8]));
  OBUF \BRAM_data_out_OBUF[9]_inst 
       (.I(BRAM_data_out_OBUF[9]),
        .O(BRAM_data_out[9]));
  count_ones c_inst
       (.D(last_index_count_ones_next),
        .\last_index_count_ones_reg[1] (in_data_IBUF[1:0]),
        .middle_row_data({middle_row_data[31],middle_row_data[33]}),
        .upper_row_data({upper_row_data[31],upper_row_data[32],upper_row_data[33]}));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  count_ones_32 cos32_inst
       (.middle_row_data({middle_row_data[4],middle_row_data[5],middle_row_data[8],middle_row_data[10],middle_row_data[16],middle_row_data[19],middle_row_data[23],middle_row_data[28],middle_row_data[29],middle_row_data[30],middle_row_data[31]}),
        .out_mux_sel_u_reg(cos32_inst_n_10),
        .out_mux_sel_u_reg_0(cos32_inst_n_14),
        .out_mux_sel_u_reg_1(cos32_inst_n_15),
        .out_mux_sel_u_reg_2(cos32_inst_n_16),
        .out_mux_sel_u_reg_3(cos32_inst_n_17),
        .out_mux_sel_u_reg_4(cos32_inst_n_18),
        .out_mux_sel_u_reg_5(cos32_inst_n_19),
        .out_mux_sel_u_reg_6(cos32_inst_n_21),
        .\out_sum[7]_i_190 (cos32_inst_n_23),
        .\out_sum[7]_i_22_0 (cos32_inst_n_5),
        .\out_sum[7]_i_22_1 (wic_inst_n_120),
        .\out_sum[7]_i_32_0 (\result_vector_gen[29].c_inst_n_2 ),
        .\out_sum[7]_i_32_1 (\result_vector_gen[29].c_inst_n_0 ),
        .\out_sum[7]_i_32_2 (\result_vector_gen[28].c_inst_n_2 ),
        .\out_sum[7]_i_32_3 (\result_vector_gen[28].c_inst_n_0 ),
        .\out_sum[7]_i_33_0 (cos32_inst_n_7),
        .\out_sum[7]_i_34 (wic_inst_n_118),
        .\out_sum[7]_i_34_0 (\result_vector_gen[4].c_inst_n_0 ),
        .\out_sum[7]_i_36_0 (cos32_inst_n_6),
        .\out_sum[7]_i_36_1 (wic_inst_n_123),
        .\out_sum[7]_i_36_2 (\result_vector_gen[8].c_inst_n_0 ),
        .\out_sum[7]_i_36_3 (wic_inst_n_124),
        .\out_sum[7]_i_36_4 (\result_vector_gen[10].c_inst_n_0 ),
        .\out_sum[7]_i_37_0 (cos32_inst_n_4),
        .\out_sum[7]_i_37_1 (cos32_inst_n_9),
        .\out_sum[7]_i_37_2 (\result_vector_gen[5].c_inst_n_2 ),
        .\out_sum[7]_i_37_3 (\result_vector_gen[5].c_inst_n_0 ),
        .\out_sum[7]_i_4 (wic_inst_n_119),
        .\out_sum[7]_i_41 (cos32_inst_n_12),
        .\out_sum[7]_i_42_0 (cos32_inst_n_3),
        .\out_sum[7]_i_43 (wic_inst_n_125),
        .\out_sum[7]_i_43_0 (\result_vector_gen[16].c_inst_n_0 ),
        .\out_sum[7]_i_43_1 (\result_vector_gen[23].c_inst_n_0 ),
        .\out_sum[7]_i_43_2 (wic_inst_n_127),
        .\out_sum[7]_i_43_3 (\result_vector_gen[19].c_inst_n_0 ),
        .\out_sum[7]_i_43_4 (wic_inst_n_126),
        .\out_sum[7]_i_43_5 (wic_inst_n_129),
        .\out_sum[7]_i_43_6 (\result_vector_gen[31].c_inst_n_0 ),
        .\out_sum[7]_i_43_7 (wic_inst_n_128),
        .\out_sum[7]_i_43_8 (\result_vector_gen[30].c_inst_n_0 ),
        .\out_sum[7]_i_45_0 (cos32_inst_n_13),
        .\out_sum[7]_i_46_0 (cos32_inst_n_8),
        .\out_sum[7]_i_4_0 (wic_inst_n_117),
        .\out_sum[7]_i_52 (cos32_inst_n_11),
        .\out_sum[7]_i_59_0 (cos32_inst_n_20),
        .\out_sum[7]_i_62_0 (cos32_inst_n_22),
        .\out_sum[7]_i_7 (wic_inst_n_0),
        .\out_sum[7]_i_7_0 (wic_inst_n_131),
        .\out_sum[7]_i_7_1 (wic_inst_n_130),
        .\out_sum[7]_i_9 (wic_inst_n_1),
        .p_30_out({p_30_out[31:29],p_30_out[27:25],p_30_out[23],p_30_out[21:17],p_30_out[15:14],p_30_out[12:10],p_30_out[8:3]}),
        .sum_result({sum_result[4:3],sum_result[0]}));
  IBUF enable_IBUF_inst
       (.I(enable),
        .O(enable_IBUF));
  IBUF \in_data_IBUF[0]_inst 
       (.I(in_data[0]),
        .O(in_data_IBUF[0]));
  IBUF \in_data_IBUF[10]_inst 
       (.I(in_data[10]),
        .O(in_data_IBUF[10]));
  IBUF \in_data_IBUF[11]_inst 
       (.I(in_data[11]),
        .O(in_data_IBUF[11]));
  IBUF \in_data_IBUF[12]_inst 
       (.I(in_data[12]),
        .O(in_data_IBUF[12]));
  IBUF \in_data_IBUF[13]_inst 
       (.I(in_data[13]),
        .O(in_data_IBUF[13]));
  IBUF \in_data_IBUF[14]_inst 
       (.I(in_data[14]),
        .O(in_data_IBUF[14]));
  IBUF \in_data_IBUF[15]_inst 
       (.I(in_data[15]),
        .O(in_data_IBUF[15]));
  IBUF \in_data_IBUF[16]_inst 
       (.I(in_data[16]),
        .O(in_data_IBUF[16]));
  IBUF \in_data_IBUF[17]_inst 
       (.I(in_data[17]),
        .O(in_data_IBUF[17]));
  IBUF \in_data_IBUF[18]_inst 
       (.I(in_data[18]),
        .O(in_data_IBUF[18]));
  IBUF \in_data_IBUF[19]_inst 
       (.I(in_data[19]),
        .O(in_data_IBUF[19]));
  IBUF \in_data_IBUF[1]_inst 
       (.I(in_data[1]),
        .O(in_data_IBUF[1]));
  IBUF \in_data_IBUF[20]_inst 
       (.I(in_data[20]),
        .O(in_data_IBUF[20]));
  IBUF \in_data_IBUF[21]_inst 
       (.I(in_data[21]),
        .O(in_data_IBUF[21]));
  IBUF \in_data_IBUF[22]_inst 
       (.I(in_data[22]),
        .O(in_data_IBUF[22]));
  IBUF \in_data_IBUF[23]_inst 
       (.I(in_data[23]),
        .O(in_data_IBUF[23]));
  IBUF \in_data_IBUF[24]_inst 
       (.I(in_data[24]),
        .O(in_data_IBUF[24]));
  IBUF \in_data_IBUF[25]_inst 
       (.I(in_data[25]),
        .O(in_data_IBUF[25]));
  IBUF \in_data_IBUF[26]_inst 
       (.I(in_data[26]),
        .O(in_data_IBUF[26]));
  IBUF \in_data_IBUF[27]_inst 
       (.I(in_data[27]),
        .O(in_data_IBUF[27]));
  IBUF \in_data_IBUF[28]_inst 
       (.I(in_data[28]),
        .O(in_data_IBUF[28]));
  IBUF \in_data_IBUF[29]_inst 
       (.I(in_data[29]),
        .O(in_data_IBUF[29]));
  IBUF \in_data_IBUF[2]_inst 
       (.I(in_data[2]),
        .O(in_data_IBUF[2]));
  IBUF \in_data_IBUF[30]_inst 
       (.I(in_data[30]),
        .O(in_data_IBUF[30]));
  IBUF \in_data_IBUF[31]_inst 
       (.I(in_data[31]),
        .O(in_data_IBUF[31]));
  IBUF \in_data_IBUF[3]_inst 
       (.I(in_data[3]),
        .O(in_data_IBUF[3]));
  IBUF \in_data_IBUF[4]_inst 
       (.I(in_data[4]),
        .O(in_data_IBUF[4]));
  IBUF \in_data_IBUF[5]_inst 
       (.I(in_data[5]),
        .O(in_data_IBUF[5]));
  IBUF \in_data_IBUF[6]_inst 
       (.I(in_data[6]),
        .O(in_data_IBUF[6]));
  IBUF \in_data_IBUF[7]_inst 
       (.I(in_data[7]),
        .O(in_data_IBUF[7]));
  IBUF \in_data_IBUF[8]_inst 
       (.I(in_data[8]),
        .O(in_data_IBUF[8]));
  IBUF \in_data_IBUF[9]_inst 
       (.I(in_data[9]),
        .O(in_data_IBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    last_bit_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(in_data_IBUF[0]),
        .Q(last_bit),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_index_count_ones_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(last_index_count_ones_next[0]),
        .Q(last_index_count_ones[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \last_index_count_ones_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(last_index_count_ones_next[1]),
        .Q(last_index_count_ones[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \last_index_count_ones_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(last_index_count_ones_next[2]),
        .Q(last_index_count_ones[2]),
        .R(reset_IBUF));
  mem_element mem_inst
       (.Q(w_addr),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .r_data(BRAM_data_out_OBUF),
        .w_data({middle_row_data[0],middle_row_data[1],middle_row_data[2],middle_row_data[3],middle_row_data[4],middle_row_data[5],middle_row_data[6],middle_row_data[7],middle_row_data[8],middle_row_data[9],middle_row_data[10],middle_row_data[11],middle_row_data[12],middle_row_data[13],middle_row_data[14],middle_row_data[15],middle_row_data[16],middle_row_data[17],middle_row_data[18],middle_row_data[19],middle_row_data[20],middle_row_data[21],middle_row_data[22],middle_row_data[23],middle_row_data[24],middle_row_data[25],middle_row_data[26],middle_row_data[27],middle_row_data[28],middle_row_data[29],middle_row_data[30],middle_row_data[31],middle_row_data[32],middle_row_data[33]}),
        .we_matrix_data(we_matrix_data));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_w_addr[0]_i_1 
       (.I0(w_addr[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mem_w_addr[1]_i_1 
       (.I0(w_addr[0]),
        .I1(w_addr[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mem_w_addr[2]_i_1 
       (.I0(w_addr[2]),
        .I1(w_addr[0]),
        .I2(w_addr[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mem_w_addr[3]_i_1 
       (.I0(w_addr[3]),
        .I1(w_addr[1]),
        .I2(w_addr[0]),
        .I3(w_addr[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mem_w_addr[4]_i_1 
       (.I0(w_addr[4]),
        .I1(w_addr[2]),
        .I2(w_addr[0]),
        .I3(w_addr[1]),
        .I4(w_addr[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mem_w_addr[5]_i_1 
       (.I0(w_addr[3]),
        .I1(w_addr[1]),
        .I2(w_addr[0]),
        .I3(w_addr[2]),
        .I4(w_addr[4]),
        .I5(w_addr[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mem_w_addr[6]_i_1 
       (.I0(w_addr[6]),
        .I1(\mem_w_addr[7]_i_3_n_0 ),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_w_addr[7]_i_1 
       (.I0(enable_IBUF),
        .I1(we_matrix_data),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mem_w_addr[7]_i_2 
       (.I0(w_addr[7]),
        .I1(\mem_w_addr[7]_i_3_n_0 ),
        .I2(w_addr[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \mem_w_addr[7]_i_3 
       (.I0(w_addr[5]),
        .I1(w_addr[4]),
        .I2(w_addr[2]),
        .I3(w_addr[0]),
        .I4(w_addr[1]),
        .I5(w_addr[3]),
        .O(\mem_w_addr[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_w_addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(w_addr[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_w_addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(w_addr[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_w_addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(w_addr[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_w_addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(w_addr[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_w_addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[4]),
        .Q(w_addr[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_w_addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[5]),
        .Q(w_addr[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_w_addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[6]),
        .Q(w_addr[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \mem_w_addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in[7]),
        .Q(w_addr[7]),
        .R(reset_IBUF));
  OBUF \out_sum_OBUF[0]_inst 
       (.I(out_sum_OBUF[0]),
        .O(out_sum[0]));
  OBUF \out_sum_OBUF[10]_inst 
       (.I(out_sum_OBUF[10]),
        .O(out_sum[10]));
  OBUF \out_sum_OBUF[11]_inst 
       (.I(out_sum_OBUF[11]),
        .O(out_sum[11]));
  OBUF \out_sum_OBUF[12]_inst 
       (.I(out_sum_OBUF[12]),
        .O(out_sum[12]));
  OBUF \out_sum_OBUF[13]_inst 
       (.I(out_sum_OBUF[13]),
        .O(out_sum[13]));
  OBUF \out_sum_OBUF[14]_inst 
       (.I(out_sum_OBUF[14]),
        .O(out_sum[14]));
  OBUF \out_sum_OBUF[15]_inst 
       (.I(out_sum_OBUF[15]),
        .O(out_sum[15]));
  OBUF \out_sum_OBUF[1]_inst 
       (.I(out_sum_OBUF[1]),
        .O(out_sum[1]));
  OBUF \out_sum_OBUF[2]_inst 
       (.I(out_sum_OBUF[2]),
        .O(out_sum[2]));
  OBUF \out_sum_OBUF[3]_inst 
       (.I(out_sum_OBUF[3]),
        .O(out_sum[3]));
  OBUF \out_sum_OBUF[4]_inst 
       (.I(out_sum_OBUF[4]),
        .O(out_sum[4]));
  OBUF \out_sum_OBUF[5]_inst 
       (.I(out_sum_OBUF[5]),
        .O(out_sum[5]));
  OBUF \out_sum_OBUF[6]_inst 
       (.I(out_sum_OBUF[6]),
        .O(out_sum[6]));
  OBUF \out_sum_OBUF[7]_inst 
       (.I(out_sum_OBUF[7]),
        .O(out_sum[7]));
  OBUF \out_sum_OBUF[8]_inst 
       (.I(out_sum_OBUF[8]),
        .O(out_sum[8]));
  OBUF \out_sum_OBUF[9]_inst 
       (.I(out_sum_OBUF[9]),
        .O(out_sum[9]));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_116),
        .Q(out_sum_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_106),
        .Q(out_sum_OBUF[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_105),
        .Q(out_sum_OBUF[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_104),
        .Q(out_sum_OBUF[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_103),
        .Q(out_sum_OBUF[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_102),
        .Q(out_sum_OBUF[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_101),
        .Q(out_sum_OBUF[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_115),
        .Q(out_sum_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_114),
        .Q(out_sum_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_113),
        .Q(out_sum_OBUF[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_112),
        .Q(out_sum_OBUF[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_111),
        .Q(out_sum_OBUF[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_110),
        .Q(out_sum_OBUF[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_109),
        .Q(out_sum_OBUF[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_108),
        .Q(out_sum_OBUF[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_sum_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(enable_IBUF),
        .D(wic_inst_n_107),
        .Q(out_sum_OBUF[9]),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  count_ones_0 \result_vector_gen[10].c_inst 
       (.D(in_data_IBUF[23:21]),
        .out_mux_sel_u_reg(\result_vector_gen[10].c_inst_n_0 ),
        .upper_row_data({upper_row_data[9],upper_row_data[10],upper_row_data[11]}),
        .w_data({middle_row_data[9],middle_row_data[11]}));
  count_ones_1 \result_vector_gen[11].c_inst 
       (.D(in_data_IBUF[22:20]),
        .\in_data[20] (\result_vector_gen[11].c_inst_n_0 ),
        .\in_data[21] (\result_vector_gen[11].c_inst_n_3 ),
        .\in_data[22] (\result_vector_gen[11].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[11].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[11].c_inst_n_4 ),
        .upper_row_data({upper_row_data[10],upper_row_data[11],upper_row_data[12]}),
        .w_data({middle_row_data[10],middle_row_data[12]}));
  count_ones_2 \result_vector_gen[12].c_inst 
       (.D(in_data_IBUF[21:19]),
        .\in_data[19] (\result_vector_gen[12].c_inst_n_0 ),
        .\in_data[20] (\result_vector_gen[12].c_inst_n_3 ),
        .\in_data[21] (\result_vector_gen[12].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[12].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[12].c_inst_n_4 ),
        .upper_row_data({upper_row_data[11],upper_row_data[12],upper_row_data[13]}),
        .w_data({middle_row_data[11],middle_row_data[13]}));
  count_ones_3 \result_vector_gen[13].c_inst 
       (.D(in_data_IBUF[20:18]),
        .\in_data[18] (\result_vector_gen[13].c_inst_n_0 ),
        .\in_data[19] (\result_vector_gen[13].c_inst_n_3 ),
        .\in_data[20] (\result_vector_gen[13].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[13].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[13].c_inst_n_4 ),
        .upper_row_data({upper_row_data[12],upper_row_data[13],upper_row_data[14]}),
        .w_data({middle_row_data[12],middle_row_data[14]}));
  count_ones_4 \result_vector_gen[14].c_inst 
       (.D(in_data_IBUF[19:17]),
        .\in_data[17] (\result_vector_gen[14].c_inst_n_0 ),
        .\in_data[18] (\result_vector_gen[14].c_inst_n_3 ),
        .\in_data[19] (\result_vector_gen[14].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[14].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[14].c_inst_n_4 ),
        .upper_row_data({upper_row_data[13],upper_row_data[14],upper_row_data[15]}),
        .w_data({middle_row_data[13],middle_row_data[15]}));
  count_ones_5 \result_vector_gen[15].c_inst 
       (.D(in_data_IBUF[18:16]),
        .\in_data[16] (\result_vector_gen[15].c_inst_n_0 ),
        .\in_data[17] (\result_vector_gen[15].c_inst_n_3 ),
        .\in_data[18] (\result_vector_gen[15].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[15].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[15].c_inst_n_4 ),
        .upper_row_data({upper_row_data[14],upper_row_data[15],upper_row_data[16]}),
        .w_data({middle_row_data[14],middle_row_data[16]}));
  count_ones_6 \result_vector_gen[16].c_inst 
       (.D(in_data_IBUF[17:15]),
        .out_mux_sel_u_reg(\result_vector_gen[16].c_inst_n_0 ),
        .upper_row_data({upper_row_data[15],upper_row_data[16],upper_row_data[17]}),
        .w_data({middle_row_data[15],middle_row_data[17]}));
  count_ones_7 \result_vector_gen[17].c_inst 
       (.D(in_data_IBUF[16:14]),
        .\in_data[14] (\result_vector_gen[17].c_inst_n_0 ),
        .\in_data[15] (\result_vector_gen[17].c_inst_n_3 ),
        .\in_data[16] (\result_vector_gen[17].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[17].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[17].c_inst_n_4 ),
        .upper_row_data({upper_row_data[16],upper_row_data[17],upper_row_data[18]}),
        .w_data({middle_row_data[16],middle_row_data[18]}));
  count_ones_8 \result_vector_gen[18].c_inst 
       (.D(in_data_IBUF[15:13]),
        .\in_data[13] (\result_vector_gen[18].c_inst_n_0 ),
        .\in_data[14] (\result_vector_gen[18].c_inst_n_3 ),
        .\in_data[15] (\result_vector_gen[18].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[18].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[18].c_inst_n_4 ),
        .upper_row_data({upper_row_data[17],upper_row_data[18],upper_row_data[19]}),
        .w_data({middle_row_data[17],middle_row_data[19]}));
  count_ones_9 \result_vector_gen[19].c_inst 
       (.D(in_data_IBUF[14:12]),
        .out_mux_sel_u_reg(\result_vector_gen[19].c_inst_n_0 ),
        .upper_row_data({upper_row_data[18],upper_row_data[19],upper_row_data[20]}),
        .w_data({middle_row_data[18],middle_row_data[20]}));
  count_ones_10 \result_vector_gen[1].c_inst 
       (.Q({word_index_counter[2],word_index_counter[0]}),
        .in_data_IBUF(in_data_IBUF[31:30]),
        .last_bit(last_bit),
        .last_bit_reg(\result_vector_gen[1].c_inst_n_0 ),
        .last_bit_reg_0(\result_vector_gen[1].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[1].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[1].c_inst_n_3 ),
        .\out_sum[7]_i_48 (wic_inst_n_59),
        .upper_bit(upper_bit),
        .upper_row_data({upper_row_data[1],upper_row_data[2]}),
        .w_data({middle_row_data[0],middle_row_data[2]}));
  count_ones_11 \result_vector_gen[20].c_inst 
       (.D(in_data_IBUF[13:11]),
        .\in_data[11] (\result_vector_gen[20].c_inst_n_0 ),
        .\in_data[12] (\result_vector_gen[20].c_inst_n_3 ),
        .\in_data[13] (\result_vector_gen[20].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[20].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[20].c_inst_n_4 ),
        .upper_row_data({upper_row_data[19],upper_row_data[20],upper_row_data[21]}),
        .w_data({middle_row_data[19],middle_row_data[21]}));
  count_ones_12 \result_vector_gen[21].c_inst 
       (.D(in_data_IBUF[12:10]),
        .\in_data[10] (\result_vector_gen[21].c_inst_n_0 ),
        .\in_data[11] (\result_vector_gen[21].c_inst_n_3 ),
        .\in_data[12] (\result_vector_gen[21].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[21].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[21].c_inst_n_4 ),
        .upper_row_data({upper_row_data[20],upper_row_data[21],upper_row_data[22]}),
        .w_data({middle_row_data[20],middle_row_data[22]}));
  count_ones_13 \result_vector_gen[22].c_inst 
       (.D(in_data_IBUF[11:9]),
        .\in_data[10] (\result_vector_gen[22].c_inst_n_3 ),
        .\in_data[11] (\result_vector_gen[22].c_inst_n_1 ),
        .\in_data[9] (\result_vector_gen[22].c_inst_n_0 ),
        .out_mux_sel_u_reg(\result_vector_gen[22].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[22].c_inst_n_4 ),
        .upper_row_data({upper_row_data[21],upper_row_data[22],upper_row_data[23]}),
        .w_data({middle_row_data[21],middle_row_data[23]}));
  count_ones_14 \result_vector_gen[23].c_inst 
       (.D(in_data_IBUF[10:8]),
        .out_mux_sel_u_reg(\result_vector_gen[23].c_inst_n_0 ),
        .upper_row_data({upper_row_data[22],upper_row_data[23],upper_row_data[24]}),
        .w_data({middle_row_data[22],middle_row_data[24]}));
  count_ones_15 \result_vector_gen[24].c_inst 
       (.D(in_data_IBUF[9:7]),
        .\in_data[7] (\result_vector_gen[24].c_inst_n_0 ),
        .\in_data[8] (\result_vector_gen[24].c_inst_n_3 ),
        .\in_data[9] (\result_vector_gen[24].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[24].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[24].c_inst_n_4 ),
        .upper_row_data({upper_row_data[23],upper_row_data[24],upper_row_data[25]}),
        .w_data({middle_row_data[23],middle_row_data[25]}));
  count_ones_16 \result_vector_gen[25].c_inst 
       (.D(in_data_IBUF[8:6]),
        .\in_data[6] (\result_vector_gen[25].c_inst_n_0 ),
        .\in_data[7] (\result_vector_gen[25].c_inst_n_3 ),
        .\in_data[8] (\result_vector_gen[25].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[25].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[25].c_inst_n_4 ),
        .upper_row_data({upper_row_data[24],upper_row_data[25],upper_row_data[26]}),
        .w_data({middle_row_data[24],middle_row_data[26]}));
  count_ones_17 \result_vector_gen[26].c_inst 
       (.D(in_data_IBUF[7:5]),
        .\in_data[5] (\result_vector_gen[26].c_inst_n_0 ),
        .\in_data[6] (\result_vector_gen[26].c_inst_n_3 ),
        .\in_data[7] (\result_vector_gen[26].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[26].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[26].c_inst_n_4 ),
        .upper_row_data({upper_row_data[25],upper_row_data[26],upper_row_data[27]}),
        .w_data({middle_row_data[25],middle_row_data[27]}));
  count_ones_18 \result_vector_gen[27].c_inst 
       (.D(in_data_IBUF[6:4]),
        .\in_data[4] (\result_vector_gen[27].c_inst_n_0 ),
        .\in_data[5] (\result_vector_gen[27].c_inst_n_3 ),
        .\in_data[6] (\result_vector_gen[27].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[27].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[27].c_inst_n_4 ),
        .upper_row_data({upper_row_data[26],upper_row_data[27],upper_row_data[28]}),
        .w_data({middle_row_data[26],middle_row_data[28]}));
  count_ones_19 \result_vector_gen[28].c_inst 
       (.D(in_data_IBUF[5:3]),
        .\in_data[3] (\result_vector_gen[28].c_inst_n_1 ),
        .\in_data[3]_0 (\result_vector_gen[28].c_inst_n_2 ),
        .\in_data[4] (\result_vector_gen[28].c_inst_n_6 ),
        .\in_data[5] (\result_vector_gen[28].c_inst_n_4 ),
        .out_mux_sel_u_reg(\result_vector_gen[28].c_inst_n_0 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[28].c_inst_n_3 ),
        .out_mux_sel_u_reg_1(\result_vector_gen[28].c_inst_n_5 ),
        .upper_row_data({upper_row_data[27],upper_row_data[28],upper_row_data[29]}),
        .w_data({middle_row_data[27],middle_row_data[29]}));
  count_ones_20 \result_vector_gen[29].c_inst 
       (.D(in_data_IBUF[4:2]),
        .\in_data[2] (\result_vector_gen[29].c_inst_n_1 ),
        .\in_data[2]_0 (\result_vector_gen[29].c_inst_n_2 ),
        .\in_data[3] (\result_vector_gen[29].c_inst_n_6 ),
        .\in_data[4] (\result_vector_gen[29].c_inst_n_4 ),
        .out_mux_sel_u_reg(\result_vector_gen[29].c_inst_n_0 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[29].c_inst_n_3 ),
        .out_mux_sel_u_reg_1(\result_vector_gen[29].c_inst_n_5 ),
        .upper_row_data({upper_row_data[28],upper_row_data[29],upper_row_data[30]}),
        .w_data({middle_row_data[28],middle_row_data[30]}));
  count_ones_21 \result_vector_gen[2].c_inst 
       (.\in_data[29] (\result_vector_gen[2].c_inst_n_0 ),
        .\in_data[30] (\result_vector_gen[2].c_inst_n_3 ),
        .\in_data[31] (\result_vector_gen[2].c_inst_n_1 ),
        .in_data_IBUF(in_data_IBUF[31:29]),
        .out_mux_sel_u_reg(\result_vector_gen[2].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[2].c_inst_n_4 ),
        .upper_row_data({upper_row_data[1],upper_row_data[2],upper_row_data[3]}),
        .w_data({middle_row_data[1],middle_row_data[3]}));
  count_ones_22 \result_vector_gen[30].c_inst 
       (.in_data_IBUF(in_data_IBUF[3:1]),
        .out_mux_sel_u_reg(\result_vector_gen[30].c_inst_n_0 ),
        .upper_row_data({upper_row_data[29],upper_row_data[30],upper_row_data[31]}),
        .w_data({middle_row_data[29],middle_row_data[31]}));
  count_ones_23 \result_vector_gen[31].c_inst 
       (.D(in_data_IBUF[2:0]),
        .out_mux_sel_u_reg(\result_vector_gen[31].c_inst_n_0 ),
        .upper_row_data({upper_row_data[30],upper_row_data[31],upper_row_data[32]}),
        .w_data({middle_row_data[30],middle_row_data[32]}));
  count_ones_24 \result_vector_gen[3].c_inst 
       (.D(in_data_IBUF[30:28]),
        .\in_data[28] (\result_vector_gen[3].c_inst_n_0 ),
        .\in_data[29] (\result_vector_gen[3].c_inst_n_3 ),
        .\in_data[30] (\result_vector_gen[3].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[3].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[3].c_inst_n_4 ),
        .upper_row_data({upper_row_data[2],upper_row_data[3],upper_row_data[4]}),
        .w_data({middle_row_data[2],middle_row_data[4]}));
  count_ones_25 \result_vector_gen[4].c_inst 
       (.D(in_data_IBUF[29:27]),
        .out_mux_sel_u_reg(\result_vector_gen[4].c_inst_n_0 ),
        .upper_row_data({upper_row_data[3],upper_row_data[4],upper_row_data[5]}),
        .w_data({middle_row_data[3],middle_row_data[5]}));
  count_ones_26 \result_vector_gen[5].c_inst 
       (.D(in_data_IBUF[28:26]),
        .\in_data[26] (\result_vector_gen[5].c_inst_n_1 ),
        .\in_data[26]_0 (\result_vector_gen[5].c_inst_n_2 ),
        .\in_data[27] (\result_vector_gen[5].c_inst_n_6 ),
        .\in_data[28] (\result_vector_gen[5].c_inst_n_4 ),
        .out_mux_sel_u_reg(\result_vector_gen[5].c_inst_n_0 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[5].c_inst_n_3 ),
        .out_mux_sel_u_reg_1(\result_vector_gen[5].c_inst_n_5 ),
        .upper_row_data({upper_row_data[4],upper_row_data[5],upper_row_data[6]}),
        .w_data({middle_row_data[4],middle_row_data[6]}));
  count_ones_27 \result_vector_gen[6].c_inst 
       (.D(in_data_IBUF[27:25]),
        .\in_data[25] (\result_vector_gen[6].c_inst_n_0 ),
        .\in_data[26] (\result_vector_gen[6].c_inst_n_3 ),
        .\in_data[27] (\result_vector_gen[6].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[6].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[6].c_inst_n_4 ),
        .upper_row_data({upper_row_data[5],upper_row_data[6],upper_row_data[7]}),
        .w_data({middle_row_data[5],middle_row_data[7]}));
  count_ones_28 \result_vector_gen[7].c_inst 
       (.D(in_data_IBUF[26:24]),
        .\in_data[24] (\result_vector_gen[7].c_inst_n_0 ),
        .\in_data[25] (\result_vector_gen[7].c_inst_n_3 ),
        .\in_data[26] (\result_vector_gen[7].c_inst_n_1 ),
        .out_mux_sel_u_reg(\result_vector_gen[7].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[7].c_inst_n_4 ),
        .upper_row_data({upper_row_data[6],upper_row_data[7],upper_row_data[8]}),
        .w_data({middle_row_data[6],middle_row_data[8]}));
  count_ones_29 \result_vector_gen[8].c_inst 
       (.in_data_IBUF(in_data_IBUF[25:23]),
        .out_mux_sel_u_reg(\result_vector_gen[8].c_inst_n_0 ),
        .upper_row_data({upper_row_data[7],upper_row_data[8],upper_row_data[9]}),
        .w_data({middle_row_data[7],middle_row_data[9]}));
  count_ones_30 \result_vector_gen[9].c_inst 
       (.\in_data[22] (\result_vector_gen[9].c_inst_n_0 ),
        .\in_data[23] (\result_vector_gen[9].c_inst_n_3 ),
        .\in_data[24] (\result_vector_gen[9].c_inst_n_1 ),
        .in_data_IBUF(in_data_IBUF[24:22]),
        .out_mux_sel_u_reg(\result_vector_gen[9].c_inst_n_2 ),
        .out_mux_sel_u_reg_0(\result_vector_gen[9].c_inst_n_4 ),
        .upper_row_data({upper_row_data[8],upper_row_data[9],upper_row_data[10]}),
        .w_data({middle_row_data[8],middle_row_data[10]}));
  row_reg rr_m_inst
       (.E({rri_inst_n_3,rri_inst_n_4,rri_inst_n_5,rri_inst_n_6,rri_inst_n_7}),
        .Q(word_index_counter),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enable_IBUF(enable_IBUF),
        .in_data_IBUF(in_data_IBUF),
        .\last_index_count_ones[0]_i_2 (rr_u_inst_n_3),
        .out_mux_sel_u(out_mux_sel_u),
        .\out_sum[7]_i_89 (rr_u_inst_n_6),
        .\out_sum[7]_i_89_0 (rr_u_inst_n_7),
        .\out_word_index_reg[2] (rr_m_inst_n_3),
        .\out_word_index_reg[2]_0 (rr_m_inst_n_6),
        .reset_IBUF(reset_IBUF),
        .\row_reg[0]_0 (wic_inst_n_90),
        .\row_reg[161]_0 (rr_m_inst_n_5),
        .\row_reg[161]_1 (wic_inst_n_132),
        .\row_reg[31]_0 ({rr_m_inst_n_39,rr_m_inst_n_40,rr_m_inst_n_41,rr_m_inst_n_42,rr_m_inst_n_43,rr_m_inst_n_44,rr_m_inst_n_45,rr_m_inst_n_46,rr_m_inst_n_47,rr_m_inst_n_48,rr_m_inst_n_49,rr_m_inst_n_50,rr_m_inst_n_51,rr_m_inst_n_52,rr_m_inst_n_53,rr_m_inst_n_54,rr_m_inst_n_55,rr_m_inst_n_56,rr_m_inst_n_57,rr_m_inst_n_58,rr_m_inst_n_59,rr_m_inst_n_60,rr_m_inst_n_61,rr_m_inst_n_62,rr_m_inst_n_63,rr_m_inst_n_64,rr_m_inst_n_65,rr_m_inst_n_66,rr_m_inst_n_67,rr_m_inst_n_68}),
        .\row_reg[32]_0 (rr_m_inst_n_7),
        .\row_reg[33]_0 (rr_m_inst_n_4),
        .\row_reg[34]_0 (rr_m_inst_n_38),
        .\row_reg[35]_0 (rr_m_inst_n_37),
        .\row_reg[36]_0 (rr_m_inst_n_36),
        .\row_reg[37]_0 (rr_m_inst_n_35),
        .\row_reg[38]_0 (rr_m_inst_n_34),
        .\row_reg[39]_0 (rr_m_inst_n_33),
        .\row_reg[40]_0 (rr_m_inst_n_32),
        .\row_reg[41]_0 (rr_m_inst_n_31),
        .\row_reg[42]_0 (rr_m_inst_n_30),
        .\row_reg[43]_0 (rr_m_inst_n_29),
        .\row_reg[44]_0 (rr_m_inst_n_28),
        .\row_reg[45]_0 (rr_m_inst_n_27),
        .\row_reg[46]_0 (rr_m_inst_n_26),
        .\row_reg[47]_0 (rr_m_inst_n_25),
        .\row_reg[48]_0 (rr_m_inst_n_24),
        .\row_reg[49]_0 (rr_m_inst_n_23),
        .\row_reg[50]_0 (rr_m_inst_n_22),
        .\row_reg[51]_0 (rr_m_inst_n_21),
        .\row_reg[52]_0 (rr_m_inst_n_20),
        .\row_reg[53]_0 (rr_m_inst_n_19),
        .\row_reg[54]_0 (rr_m_inst_n_18),
        .\row_reg[55]_0 (rr_m_inst_n_17),
        .\row_reg[56]_0 (rr_m_inst_n_16),
        .\row_reg[57]_0 (rr_m_inst_n_15),
        .\row_reg[58]_0 (rr_m_inst_n_14),
        .\row_reg[59]_0 (rr_m_inst_n_13),
        .\row_reg[60]_0 (rr_m_inst_n_12),
        .\row_reg[61]_0 (rr_m_inst_n_11),
        .\row_reg[62]_0 (rr_m_inst_n_10),
        .\row_reg[63]_0 (rr_m_inst_n_9),
        .\row_reg[64]_0 (rr_m_inst_n_8),
        .upper_bit_reg(wic_inst_n_59),
        .upper_bit_reg_0(rr_u_inst_n_4),
        .upper_row_data({upper_row_data[1],upper_row_data[32],upper_row_data[33]}));
  row_reg_31 rr_u_inst
       (.E({wic_inst_n_91,wic_inst_n_92,wic_inst_n_93,wic_inst_n_94,wic_inst_n_95}),
        .Q(word_index_counter),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enable_IBUF(enable_IBUF),
        .in_data_IBUF(in_data_IBUF),
        .\last_index_count_ones[0]_i_2 (rr_m_inst_n_3),
        .mem_reg_0_127_0_0__0(rr_m_inst_n_5),
        .mem_reg_0_127_0_0__0_0(rr_m_inst_n_4),
        .mem_reg_0_127_0_0__31(rr_m_inst_n_7),
        .mem_reg_0_127_0_0__31_0(rr_m_inst_n_8),
        .out_mux_sel_u(out_mux_sel_u),
        .\out_word_index_reg[2] (rr_u_inst_n_5),
        .reset_IBUF(reset_IBUF),
        .\row_reg[0]_0 (rr_u_inst_n_3),
        .\row_reg[0]_1 (wic_inst_n_90),
        .\row_reg[161]_0 (rr_u_inst_n_4),
        .\row_reg[161]_1 (wic_inst_n_132),
        .\row_reg[31]_0 ({rr_u_inst_n_38,rr_u_inst_n_39,rr_u_inst_n_40,rr_u_inst_n_41,rr_u_inst_n_42,rr_u_inst_n_43,rr_u_inst_n_44,rr_u_inst_n_45,rr_u_inst_n_46,rr_u_inst_n_47,rr_u_inst_n_48,rr_u_inst_n_49,rr_u_inst_n_50,rr_u_inst_n_51,rr_u_inst_n_52,rr_u_inst_n_53,rr_u_inst_n_54,rr_u_inst_n_55,rr_u_inst_n_56,rr_u_inst_n_57,rr_u_inst_n_58,rr_u_inst_n_59,rr_u_inst_n_60,rr_u_inst_n_61,rr_u_inst_n_62,rr_u_inst_n_63,rr_u_inst_n_64,rr_u_inst_n_65,rr_u_inst_n_66,rr_u_inst_n_67}),
        .\row_reg[32]_0 (rr_u_inst_n_6),
        .\row_reg[34]_0 (rr_u_inst_n_37),
        .\row_reg[35]_0 (rr_u_inst_n_36),
        .\row_reg[36]_0 (rr_u_inst_n_35),
        .\row_reg[37]_0 (rr_u_inst_n_34),
        .\row_reg[38]_0 (rr_u_inst_n_33),
        .\row_reg[39]_0 (rr_u_inst_n_32),
        .\row_reg[40]_0 (rr_u_inst_n_31),
        .\row_reg[41]_0 (rr_u_inst_n_30),
        .\row_reg[42]_0 (rr_u_inst_n_29),
        .\row_reg[43]_0 (rr_u_inst_n_28),
        .\row_reg[44]_0 (rr_u_inst_n_27),
        .\row_reg[45]_0 (rr_u_inst_n_26),
        .\row_reg[46]_0 (rr_u_inst_n_25),
        .\row_reg[47]_0 (rr_u_inst_n_24),
        .\row_reg[48]_0 (rr_u_inst_n_23),
        .\row_reg[49]_0 (rr_u_inst_n_22),
        .\row_reg[50]_0 (rr_u_inst_n_21),
        .\row_reg[51]_0 (rr_u_inst_n_20),
        .\row_reg[52]_0 (rr_u_inst_n_19),
        .\row_reg[53]_0 (rr_u_inst_n_18),
        .\row_reg[54]_0 (rr_u_inst_n_17),
        .\row_reg[55]_0 (rr_u_inst_n_16),
        .\row_reg[56]_0 (rr_u_inst_n_15),
        .\row_reg[57]_0 (rr_u_inst_n_14),
        .\row_reg[58]_0 (rr_u_inst_n_13),
        .\row_reg[59]_0 (rr_u_inst_n_12),
        .\row_reg[60]_0 (rr_u_inst_n_11),
        .\row_reg[61]_0 (rr_u_inst_n_10),
        .\row_reg[62]_0 (rr_u_inst_n_9),
        .\row_reg[63]_0 (rr_u_inst_n_8),
        .\row_reg[64]_0 (rr_u_inst_n_7),
        .upper_bit_reg(wic_inst_n_59),
        .w_data({middle_row_data[1],middle_row_data[32],middle_row_data[33]}));
  ring_row_index rri_inst
       (.DI(rri_inst_n_1),
        .E({rri_inst_n_3,rri_inst_n_4,rri_inst_n_5,rri_inst_n_6,rri_inst_n_7}),
        .Q(out_sum_OBUF[0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enable_IBUF(enable_IBUF),
        .in_data_IBUF(in_data_IBUF[31]),
        .mem_reg_0_127_0_0__32(rr_m_inst_n_6),
        .mem_reg_0_127_0_0__32_0(rr_u_inst_n_5),
        .out_mux_sel_u(out_mux_sel_u),
        .out_mux_sel_u_reg_0(wic_inst_n_122),
        .out_sum1(out_sum1),
        .\out_sum[7]_i_12 (last_index_count_ones),
        .\out_sum_reg[7] (wic_inst_n_55),
        .reset_IBUF(reset_IBUF),
        .\row_reg[129] (wic_inst_n_100),
        .\row_reg[1] (wic_inst_n_96),
        .\row_reg[33] (wic_inst_n_97),
        .\row_reg[65] (wic_inst_n_98),
        .\row_reg[97] (wic_inst_n_99),
        .w_data(middle_row_data[0]));
  FDRE #(
    .INIT(1'b0)) 
    upper_bit_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(upper_row_data[32]),
        .Q(upper_bit),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    we_matrix_data_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(wic_inst_n_121),
        .Q(we_matrix_data),
        .R(reset_IBUF));
  word_index_counter wic_inst
       (.D(last_index_count_ones_next[2]),
        .DI({rri_inst_n_1,sum_result[0]}),
        .E({wic_inst_n_91,wic_inst_n_92,wic_inst_n_93,wic_inst_n_94,wic_inst_n_95}),
        .Q(out_sum_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enable_IBUF(enable_IBUF),
        .in_data_IBUF({in_data_IBUF[29:27],in_data_IBUF[25:21],in_data_IBUF[17:12],in_data_IBUF[10:8],in_data_IBUF[3:0]}),
        .\last_index_count_ones_reg[0] (rr_u_inst_n_37),
        .\last_index_count_ones_reg[0]_0 (rr_m_inst_n_38),
        .mem_reg_0_127_0_0__30_i_1_0({rr_u_inst_n_38,rr_u_inst_n_39,rr_u_inst_n_40,rr_u_inst_n_41,rr_u_inst_n_42,rr_u_inst_n_43,rr_u_inst_n_44,rr_u_inst_n_45,rr_u_inst_n_46,rr_u_inst_n_47,rr_u_inst_n_48,rr_u_inst_n_49,rr_u_inst_n_50,rr_u_inst_n_51,rr_u_inst_n_52,rr_u_inst_n_53,rr_u_inst_n_54,rr_u_inst_n_55,rr_u_inst_n_56,rr_u_inst_n_57,rr_u_inst_n_58,rr_u_inst_n_59,rr_u_inst_n_60,rr_u_inst_n_61,rr_u_inst_n_62,rr_u_inst_n_63,rr_u_inst_n_64,rr_u_inst_n_65,rr_u_inst_n_66,rr_u_inst_n_67}),
        .mem_reg_0_127_0_0__30_i_1_1({rr_m_inst_n_39,rr_m_inst_n_40,rr_m_inst_n_41,rr_m_inst_n_42,rr_m_inst_n_43,rr_m_inst_n_44,rr_m_inst_n_45,rr_m_inst_n_46,rr_m_inst_n_47,rr_m_inst_n_48,rr_m_inst_n_49,rr_m_inst_n_50,rr_m_inst_n_51,rr_m_inst_n_52,rr_m_inst_n_53,rr_m_inst_n_54,rr_m_inst_n_55,rr_m_inst_n_56,rr_m_inst_n_57,rr_m_inst_n_58,rr_m_inst_n_59,rr_m_inst_n_60,rr_m_inst_n_61,rr_m_inst_n_62,rr_m_inst_n_63,rr_m_inst_n_64,rr_m_inst_n_65,rr_m_inst_n_66,rr_m_inst_n_67,rr_m_inst_n_68}),
        .out_mux_sel_u(out_mux_sel_u),
        .out_mux_sel_u_reg({middle_row_data[2],middle_row_data[3],middle_row_data[4],middle_row_data[5],middle_row_data[6],middle_row_data[7],middle_row_data[8],middle_row_data[9],middle_row_data[10],middle_row_data[11],middle_row_data[12],middle_row_data[13],middle_row_data[14],middle_row_data[15],middle_row_data[16],middle_row_data[17],middle_row_data[18],middle_row_data[19],middle_row_data[20],middle_row_data[21],middle_row_data[22],middle_row_data[23],middle_row_data[24],middle_row_data[25],middle_row_data[26],middle_row_data[27],middle_row_data[28],middle_row_data[29],middle_row_data[30],middle_row_data[31]}),
        .out_mux_sel_u_reg_0(wic_inst_n_117),
        .out_mux_sel_u_reg_1(wic_inst_n_118),
        .out_mux_sel_u_reg_2(wic_inst_n_120),
        .out_mux_sel_u_reg_3(wic_inst_n_123),
        .out_mux_sel_u_reg_4(wic_inst_n_124),
        .out_mux_sel_u_reg_5(wic_inst_n_125),
        .out_mux_sel_u_reg_6(wic_inst_n_126),
        .out_mux_sel_u_reg_7(wic_inst_n_127),
        .out_mux_sel_u_reg_8(wic_inst_n_128),
        .out_mux_sel_u_reg_9(wic_inst_n_129),
        .out_sum1(out_sum1),
        .\out_sum[7]_i_108 (rr_u_inst_n_24),
        .\out_sum[7]_i_108_0 (rr_m_inst_n_25),
        .\out_sum[7]_i_115 (rr_u_inst_n_26),
        .\out_sum[7]_i_115_0 (rr_m_inst_n_27),
        .\out_sum[7]_i_119 (rr_u_inst_n_23),
        .\out_sum[7]_i_119_0 (rr_m_inst_n_24),
        .\out_sum[7]_i_123 (rr_u_inst_n_30),
        .\out_sum[7]_i_123_0 (rr_m_inst_n_31),
        .\out_sum[7]_i_143 (rr_u_inst_n_18),
        .\out_sum[7]_i_143_0 (rr_m_inst_n_19),
        .\out_sum[7]_i_148 (rr_u_inst_n_15),
        .\out_sum[7]_i_148_0 (rr_m_inst_n_16),
        .\out_sum[7]_i_154 (rr_u_inst_n_19),
        .\out_sum[7]_i_154_0 (rr_m_inst_n_20),
        .\out_sum[7]_i_159 (rr_u_inst_n_9),
        .\out_sum[7]_i_159_0 (rr_m_inst_n_10),
        .\out_sum[7]_i_170 (rr_u_inst_n_14),
        .\out_sum[7]_i_170_0 (rr_m_inst_n_15),
        .\out_sum[7]_i_175 (rr_u_inst_n_13),
        .\out_sum[7]_i_175_0 (rr_m_inst_n_14),
        .\out_sum[7]_i_185 (rr_u_inst_n_20),
        .\out_sum[7]_i_185_0 (rr_m_inst_n_21),
        .\out_sum[7]_i_19 (\result_vector_gen[4].c_inst_n_0 ),
        .\out_sum[7]_i_206 (rr_u_inst_n_32),
        .\out_sum[7]_i_206_0 (rr_m_inst_n_33),
        .\out_sum[7]_i_211 (rr_u_inst_n_28),
        .\out_sum[7]_i_211_0 (rr_m_inst_n_29),
        .\out_sum[7]_i_22 (cos32_inst_n_10),
        .\out_sum[7]_i_220 (rr_u_inst_n_21),
        .\out_sum[7]_i_220_0 (rr_m_inst_n_22),
        .\out_sum[7]_i_225 (rr_u_inst_n_22),
        .\out_sum[7]_i_225_0 (rr_m_inst_n_23),
        .\out_sum[7]_i_22_0 (cos32_inst_n_21),
        .\out_sum[7]_i_22_1 (cos32_inst_n_23),
        .\out_sum[7]_i_22_2 (cos32_inst_n_17),
        .\out_sum[7]_i_22_3 (cos32_inst_n_18),
        .\out_sum[7]_i_22_4 (cos32_inst_n_19),
        .\out_sum[7]_i_236 (rr_u_inst_n_25),
        .\out_sum[7]_i_236_0 (rr_m_inst_n_26),
        .\out_sum[7]_i_241 (rr_u_inst_n_27),
        .\out_sum[7]_i_241_0 (rr_m_inst_n_28),
        .\out_sum[7]_i_25 (cos32_inst_n_14),
        .\out_sum[7]_i_251 (rr_u_inst_n_31),
        .\out_sum[7]_i_251_0 (rr_m_inst_n_32),
        .\out_sum[7]_i_256 (rr_u_inst_n_29),
        .\out_sum[7]_i_256_0 (rr_m_inst_n_30),
        .\out_sum[7]_i_25_0 (cos32_inst_n_15),
        .\out_sum[7]_i_25_1 (cos32_inst_n_16),
        .\out_sum[7]_i_25_2 (cos32_inst_n_20),
        .\out_sum[7]_i_25_3 (cos32_inst_n_22),
        .\out_sum[7]_i_266 (rr_u_inst_n_34),
        .\out_sum[7]_i_266_0 (rr_m_inst_n_35),
        .\out_sum[7]_i_27 (\result_vector_gen[1].c_inst_n_0 ),
        .\out_sum[7]_i_271 (rr_u_inst_n_33),
        .\out_sum[7]_i_271_0 (rr_m_inst_n_34),
        .\out_sum[7]_i_278 (rr_u_inst_n_35),
        .\out_sum[7]_i_278_0 (rr_m_inst_n_36),
        .\out_sum[7]_i_27_0 (\result_vector_gen[1].c_inst_n_2 ),
        .\out_sum[7]_i_27_1 (\result_vector_gen[1].c_inst_n_1 ),
        .\out_sum[7]_i_27_10 (\result_vector_gen[17].c_inst_n_2 ),
        .\out_sum[7]_i_27_11 (\result_vector_gen[17].c_inst_n_1 ),
        .\out_sum[7]_i_27_12 (\result_vector_gen[17].c_inst_n_4 ),
        .\out_sum[7]_i_27_2 (\result_vector_gen[1].c_inst_n_3 ),
        .\out_sum[7]_i_27_3 (\result_vector_gen[5].c_inst_n_1 ),
        .\out_sum[7]_i_27_4 (\result_vector_gen[5].c_inst_n_6 ),
        .\out_sum[7]_i_27_5 (\result_vector_gen[5].c_inst_n_5 ),
        .\out_sum[7]_i_27_6 (\result_vector_gen[5].c_inst_n_4 ),
        .\out_sum[7]_i_27_7 (\result_vector_gen[5].c_inst_n_3 ),
        .\out_sum[7]_i_27_8 (\result_vector_gen[17].c_inst_n_0 ),
        .\out_sum[7]_i_27_9 (\result_vector_gen[17].c_inst_n_3 ),
        .\out_sum[7]_i_281 (rr_u_inst_n_36),
        .\out_sum[7]_i_281_0 (rr_m_inst_n_37),
        .\out_sum[7]_i_29 (wic_inst_n_1),
        .\out_sum[7]_i_30_0 (wic_inst_n_0),
        .\out_sum[7]_i_30_1 (wic_inst_n_130),
        .\out_sum[7]_i_3_0 (cos32_inst_n_11),
        .\out_sum[7]_i_3_1 (cos32_inst_n_12),
        .\out_sum[7]_i_3_2 (cos32_inst_n_13),
        .\out_sum[7]_i_40 (\result_vector_gen[11].c_inst_n_0 ),
        .\out_sum[7]_i_40_0 (\result_vector_gen[11].c_inst_n_3 ),
        .\out_sum[7]_i_40_1 (\result_vector_gen[11].c_inst_n_2 ),
        .\out_sum[7]_i_40_2 (\result_vector_gen[11].c_inst_n_1 ),
        .\out_sum[7]_i_40_3 (\result_vector_gen[11].c_inst_n_4 ),
        .\out_sum[7]_i_40_4 (\result_vector_gen[12].c_inst_n_0 ),
        .\out_sum[7]_i_40_5 (\result_vector_gen[12].c_inst_n_3 ),
        .\out_sum[7]_i_40_6 (\result_vector_gen[12].c_inst_n_2 ),
        .\out_sum[7]_i_40_7 (\result_vector_gen[12].c_inst_n_1 ),
        .\out_sum[7]_i_40_8 (\result_vector_gen[12].c_inst_n_4 ),
        .\out_sum[7]_i_42 (\result_vector_gen[6].c_inst_n_0 ),
        .\out_sum[7]_i_42_0 (\result_vector_gen[6].c_inst_n_3 ),
        .\out_sum[7]_i_42_1 (\result_vector_gen[6].c_inst_n_2 ),
        .\out_sum[7]_i_42_2 (\result_vector_gen[6].c_inst_n_1 ),
        .\out_sum[7]_i_42_3 (\result_vector_gen[6].c_inst_n_4 ),
        .\out_sum[7]_i_42_4 (\result_vector_gen[13].c_inst_n_0 ),
        .\out_sum[7]_i_42_5 (\result_vector_gen[13].c_inst_n_3 ),
        .\out_sum[7]_i_42_6 (\result_vector_gen[13].c_inst_n_2 ),
        .\out_sum[7]_i_42_7 (\result_vector_gen[13].c_inst_n_1 ),
        .\out_sum[7]_i_42_8 (\result_vector_gen[13].c_inst_n_4 ),
        .\out_sum[7]_i_46 (\result_vector_gen[28].c_inst_n_0 ),
        .\out_sum[7]_i_46_0 (\result_vector_gen[28].c_inst_n_2 ),
        .\out_sum[7]_i_55 (\result_vector_gen[2].c_inst_n_0 ),
        .\out_sum[7]_i_55_0 (\result_vector_gen[2].c_inst_n_3 ),
        .\out_sum[7]_i_55_1 (\result_vector_gen[2].c_inst_n_2 ),
        .\out_sum[7]_i_55_2 (\result_vector_gen[2].c_inst_n_1 ),
        .\out_sum[7]_i_55_3 (\result_vector_gen[2].c_inst_n_4 ),
        .\out_sum[7]_i_55_4 (\result_vector_gen[7].c_inst_n_0 ),
        .\out_sum[7]_i_55_5 (\result_vector_gen[7].c_inst_n_3 ),
        .\out_sum[7]_i_55_6 (\result_vector_gen[7].c_inst_n_2 ),
        .\out_sum[7]_i_55_7 (\result_vector_gen[7].c_inst_n_1 ),
        .\out_sum[7]_i_55_8 (\result_vector_gen[7].c_inst_n_4 ),
        .\out_sum[7]_i_56 (wic_inst_n_131),
        .\out_sum[7]_i_58 (\result_vector_gen[21].c_inst_n_0 ),
        .\out_sum[7]_i_58_0 (\result_vector_gen[21].c_inst_n_3 ),
        .\out_sum[7]_i_58_1 (\result_vector_gen[21].c_inst_n_2 ),
        .\out_sum[7]_i_58_2 (\result_vector_gen[21].c_inst_n_1 ),
        .\out_sum[7]_i_58_3 (\result_vector_gen[21].c_inst_n_4 ),
        .\out_sum[7]_i_58_4 (\result_vector_gen[25].c_inst_n_0 ),
        .\out_sum[7]_i_58_5 (\result_vector_gen[25].c_inst_n_3 ),
        .\out_sum[7]_i_58_6 (\result_vector_gen[25].c_inst_n_2 ),
        .\out_sum[7]_i_58_7 (\result_vector_gen[25].c_inst_n_1 ),
        .\out_sum[7]_i_58_8 (\result_vector_gen[25].c_inst_n_4 ),
        .\out_sum[7]_i_60 (wic_inst_n_119),
        .\out_sum[7]_i_60_0 (\result_vector_gen[14].c_inst_n_0 ),
        .\out_sum[7]_i_60_1 (\result_vector_gen[14].c_inst_n_3 ),
        .\out_sum[7]_i_60_2 (\result_vector_gen[14].c_inst_n_2 ),
        .\out_sum[7]_i_60_3 (\result_vector_gen[14].c_inst_n_1 ),
        .\out_sum[7]_i_60_4 (\result_vector_gen[14].c_inst_n_4 ),
        .\out_sum[7]_i_60_5 (\result_vector_gen[15].c_inst_n_0 ),
        .\out_sum[7]_i_60_6 (\result_vector_gen[15].c_inst_n_3 ),
        .\out_sum[7]_i_60_7 (\result_vector_gen[15].c_inst_n_2 ),
        .\out_sum[7]_i_60_8 (\result_vector_gen[15].c_inst_n_1 ),
        .\out_sum[7]_i_60_9 (\result_vector_gen[15].c_inst_n_4 ),
        .\out_sum[7]_i_61 (\result_vector_gen[18].c_inst_n_0 ),
        .\out_sum[7]_i_61_0 (\result_vector_gen[18].c_inst_n_3 ),
        .\out_sum[7]_i_61_1 (\result_vector_gen[18].c_inst_n_2 ),
        .\out_sum[7]_i_61_2 (\result_vector_gen[18].c_inst_n_1 ),
        .\out_sum[7]_i_61_3 (\result_vector_gen[18].c_inst_n_4 ),
        .\out_sum[7]_i_61_4 (\result_vector_gen[20].c_inst_n_0 ),
        .\out_sum[7]_i_61_5 (\result_vector_gen[20].c_inst_n_3 ),
        .\out_sum[7]_i_61_6 (\result_vector_gen[20].c_inst_n_2 ),
        .\out_sum[7]_i_61_7 (\result_vector_gen[20].c_inst_n_1 ),
        .\out_sum[7]_i_61_8 (\result_vector_gen[20].c_inst_n_4 ),
        .\out_sum[7]_i_62 (\result_vector_gen[22].c_inst_n_0 ),
        .\out_sum[7]_i_62_0 (\result_vector_gen[22].c_inst_n_3 ),
        .\out_sum[7]_i_62_1 (\result_vector_gen[22].c_inst_n_2 ),
        .\out_sum[7]_i_62_2 (\result_vector_gen[22].c_inst_n_1 ),
        .\out_sum[7]_i_62_3 (\result_vector_gen[22].c_inst_n_4 ),
        .\out_sum[7]_i_62_4 (\result_vector_gen[24].c_inst_n_0 ),
        .\out_sum[7]_i_62_5 (\result_vector_gen[24].c_inst_n_3 ),
        .\out_sum[7]_i_62_6 (\result_vector_gen[24].c_inst_n_2 ),
        .\out_sum[7]_i_62_7 (\result_vector_gen[24].c_inst_n_1 ),
        .\out_sum[7]_i_62_8 (\result_vector_gen[24].c_inst_n_4 ),
        .\out_sum[7]_i_63 (\result_vector_gen[26].c_inst_n_0 ),
        .\out_sum[7]_i_63_0 (\result_vector_gen[26].c_inst_n_3 ),
        .\out_sum[7]_i_63_1 (\result_vector_gen[26].c_inst_n_2 ),
        .\out_sum[7]_i_63_2 (\result_vector_gen[26].c_inst_n_1 ),
        .\out_sum[7]_i_63_3 (\result_vector_gen[26].c_inst_n_4 ),
        .\out_sum[7]_i_63_4 (\result_vector_gen[27].c_inst_n_0 ),
        .\out_sum[7]_i_63_5 (\result_vector_gen[27].c_inst_n_3 ),
        .\out_sum[7]_i_63_6 (\result_vector_gen[27].c_inst_n_2 ),
        .\out_sum[7]_i_63_7 (\result_vector_gen[27].c_inst_n_1 ),
        .\out_sum[7]_i_63_8 (\result_vector_gen[27].c_inst_n_4 ),
        .\out_sum[7]_i_68 (\result_vector_gen[3].c_inst_n_0 ),
        .\out_sum[7]_i_68_0 (\result_vector_gen[3].c_inst_n_3 ),
        .\out_sum[7]_i_68_1 (\result_vector_gen[3].c_inst_n_2 ),
        .\out_sum[7]_i_68_2 (\result_vector_gen[3].c_inst_n_1 ),
        .\out_sum[7]_i_68_3 (\result_vector_gen[3].c_inst_n_4 ),
        .\out_sum[7]_i_68_4 (\result_vector_gen[9].c_inst_n_0 ),
        .\out_sum[7]_i_68_5 (\result_vector_gen[9].c_inst_n_3 ),
        .\out_sum[7]_i_68_6 (\result_vector_gen[9].c_inst_n_2 ),
        .\out_sum[7]_i_68_7 (\result_vector_gen[9].c_inst_n_1 ),
        .\out_sum[7]_i_68_8 (\result_vector_gen[9].c_inst_n_4 ),
        .\out_sum[7]_i_77 (rr_u_inst_n_16),
        .\out_sum[7]_i_77_0 (rr_m_inst_n_17),
        .\out_sum[7]_i_77_1 (rr_u_inst_n_17),
        .\out_sum[7]_i_77_2 (rr_m_inst_n_18),
        .\out_sum[7]_i_81 (rr_u_inst_n_11),
        .\out_sum[7]_i_81_0 (rr_m_inst_n_12),
        .\out_sum[7]_i_87 (\result_vector_gen[28].c_inst_n_1 ),
        .\out_sum[7]_i_87_0 (\result_vector_gen[28].c_inst_n_6 ),
        .\out_sum[7]_i_87_1 (\result_vector_gen[28].c_inst_n_5 ),
        .\out_sum[7]_i_87_2 (\result_vector_gen[28].c_inst_n_4 ),
        .\out_sum[7]_i_87_3 (\result_vector_gen[28].c_inst_n_3 ),
        .\out_sum[7]_i_87_4 (\result_vector_gen[29].c_inst_n_1 ),
        .\out_sum[7]_i_87_5 (\result_vector_gen[29].c_inst_n_6 ),
        .\out_sum[7]_i_87_6 (\result_vector_gen[29].c_inst_n_5 ),
        .\out_sum[7]_i_87_7 (\result_vector_gen[29].c_inst_n_4 ),
        .\out_sum[7]_i_87_8 (\result_vector_gen[29].c_inst_n_3 ),
        .\out_sum[7]_i_89 (rr_u_inst_n_8),
        .\out_sum[7]_i_89_0 (rr_m_inst_n_9),
        .\out_sum[7]_i_93 (rr_u_inst_n_10),
        .\out_sum[7]_i_93_0 (rr_m_inst_n_11),
        .\out_sum[7]_i_98 (rr_u_inst_n_12),
        .\out_sum[7]_i_98_0 (rr_m_inst_n_13),
        .\out_sum_reg[15] ({wic_inst_n_101,wic_inst_n_102,wic_inst_n_103,wic_inst_n_104,wic_inst_n_105,wic_inst_n_106,wic_inst_n_107,wic_inst_n_108,wic_inst_n_109,wic_inst_n_110,wic_inst_n_111,wic_inst_n_112,wic_inst_n_113,wic_inst_n_114,wic_inst_n_115,wic_inst_n_116}),
        .\out_sum_reg[7] (cos32_inst_n_7),
        .\out_sum_reg[7]_0 (cos32_inst_n_6),
        .\out_sum_reg[7]_1 (cos32_inst_n_5),
        .\out_sum_reg[7]_2 (cos32_inst_n_3),
        .\out_sum_reg[7]_3 (cos32_inst_n_4),
        .\out_sum_reg[7]_4 (cos32_inst_n_8),
        .\out_sum_reg[7]_5 (cos32_inst_n_9),
        .\out_word_index_reg[0]_0 (wic_inst_n_55),
        .\out_word_index_reg[1]_0 (wic_inst_n_96),
        .\out_word_index_reg[1]_1 (wic_inst_n_97),
        .\out_word_index_reg[1]_2 (wic_inst_n_98),
        .\out_word_index_reg[1]_3 (wic_inst_n_99),
        .\out_word_index_reg[1]_4 (wic_inst_n_100),
        .\out_word_index_reg[1]_5 (wic_inst_n_122),
        .\out_word_index_reg[1]_6 (wic_inst_n_132),
        .\out_word_index_reg[1]_rep_0 (wic_inst_n_59),
        .\out_word_index_reg[2]_0 (word_index_counter),
        .\out_word_index_reg[2]_1 (wic_inst_n_121),
        .p_30_out({p_30_out[31:29],p_30_out[27:25],p_30_out[23],p_30_out[21:17],p_30_out[15:14],p_30_out[12:10],p_30_out[8:3]}),
        .reset_IBUF(reset_IBUF),
        .\row[0]_i_6_0 (wic_inst_n_90),
        .sum_result(sum_result[4:3]),
        .upper_row_data({upper_row_data[2],upper_row_data[3],upper_row_data[4],upper_row_data[5],upper_row_data[6],upper_row_data[7],upper_row_data[8],upper_row_data[9],upper_row_data[10],upper_row_data[11],upper_row_data[12],upper_row_data[13],upper_row_data[14],upper_row_data[15],upper_row_data[16],upper_row_data[17],upper_row_data[18],upper_row_data[19],upper_row_data[20],upper_row_data[21],upper_row_data[22],upper_row_data[23],upper_row_data[24],upper_row_data[25],upper_row_data[26],upper_row_data[27],upper_row_data[28],upper_row_data[29],upper_row_data[30],upper_row_data[31]}),
        .w_data({middle_row_data[1],middle_row_data[32]}),
        .we_matrix_data(we_matrix_data));
endmodule

module ring_row_index
   (out_mux_sel_u,
    DI,
    out_sum1,
    E,
    w_data,
    reset_IBUF,
    out_mux_sel_u_reg_0,
    clk_IBUF_BUFG,
    Q,
    \out_sum_reg[7] ,
    enable_IBUF,
    \row_reg[1] ,
    \row_reg[33] ,
    \row_reg[65] ,
    \row_reg[97] ,
    \row_reg[129] ,
    \out_sum[7]_i_12 ,
    in_data_IBUF,
    mem_reg_0_127_0_0__32,
    mem_reg_0_127_0_0__32_0);
  output out_mux_sel_u;
  output [0:0]DI;
  output out_sum1;
  output [4:0]E;
  output [0:0]w_data;
  input reset_IBUF;
  input out_mux_sel_u_reg_0;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input \out_sum_reg[7] ;
  input enable_IBUF;
  input \row_reg[1] ;
  input \row_reg[33] ;
  input \row_reg[65] ;
  input \row_reg[97] ;
  input \row_reg[129] ;
  input [2:0]\out_sum[7]_i_12 ;
  input [0:0]in_data_IBUF;
  input mem_reg_0_127_0_0__32;
  input mem_reg_0_127_0_0__32_0;

  wire [0:0]DI;
  wire [4:0]E;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire enable_IBUF;
  wire [0:0]in_data_IBUF;
  wire mem_reg_0_127_0_0__32;
  wire mem_reg_0_127_0_0__32_0;
  wire out_mux_sel_u;
  wire out_mux_sel_u_reg_0;
  wire out_sum1;
  wire [2:0]\out_sum[7]_i_12 ;
  wire \out_sum_reg[7] ;
  wire reset_IBUF;
  wire \row_reg[129] ;
  wire \row_reg[1] ;
  wire \row_reg[33] ;
  wire \row_reg[65] ;
  wire \row_reg[97] ;
  wire [0:0]w_data;

  MUXF8 mem_reg_0_127_0_0__32_i_1
       (.I0(mem_reg_0_127_0_0__32),
        .I1(mem_reg_0_127_0_0__32_0),
        .O(w_data),
        .S(out_mux_sel_u));
  FDRE #(
    .INIT(1'b0)) 
    out_mux_sel_u_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_mux_sel_u_reg_0),
        .Q(out_mux_sel_u),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'h02222222)) 
    \out_sum[7]_i_23 
       (.I0(w_data),
        .I1(\out_sum[7]_i_12 [2]),
        .I2(in_data_IBUF),
        .I3(\out_sum[7]_i_12 [1]),
        .I4(\out_sum[7]_i_12 [0]),
        .O(out_sum1));
  LUT3 #(
    .INIT(8'hE8)) 
    \out_sum[7]_i_5 
       (.I0(out_sum1),
        .I1(Q),
        .I2(\out_sum_reg[7] ),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \row[127]_i_1__0 
       (.I0(out_mux_sel_u),
        .I1(enable_IBUF),
        .I2(\row_reg[97] ),
        .O(E[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \row[159]_i_1__0 
       (.I0(out_mux_sel_u),
        .I1(enable_IBUF),
        .I2(\row_reg[129] ),
        .O(E[4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \row[31]_i_1__0 
       (.I0(out_mux_sel_u),
        .I1(enable_IBUF),
        .I2(\row_reg[1] ),
        .O(E[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \row[63]_i_1__0 
       (.I0(out_mux_sel_u),
        .I1(enable_IBUF),
        .I2(\row_reg[33] ),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \row[95]_i_1__0 
       (.I0(out_mux_sel_u),
        .I1(enable_IBUF),
        .I2(\row_reg[65] ),
        .O(E[2]));
endmodule

module row_reg
   (upper_row_data,
    \out_word_index_reg[2] ,
    \row_reg[33]_0 ,
    \row_reg[161]_0 ,
    \out_word_index_reg[2]_0 ,
    \row_reg[32]_0 ,
    \row_reg[64]_0 ,
    \row_reg[63]_0 ,
    \row_reg[62]_0 ,
    \row_reg[61]_0 ,
    \row_reg[60]_0 ,
    \row_reg[59]_0 ,
    \row_reg[58]_0 ,
    \row_reg[57]_0 ,
    \row_reg[56]_0 ,
    \row_reg[55]_0 ,
    \row_reg[54]_0 ,
    \row_reg[53]_0 ,
    \row_reg[52]_0 ,
    \row_reg[51]_0 ,
    \row_reg[50]_0 ,
    \row_reg[49]_0 ,
    \row_reg[48]_0 ,
    \row_reg[47]_0 ,
    \row_reg[46]_0 ,
    \row_reg[45]_0 ,
    \row_reg[44]_0 ,
    \row_reg[43]_0 ,
    \row_reg[42]_0 ,
    \row_reg[41]_0 ,
    \row_reg[40]_0 ,
    \row_reg[39]_0 ,
    \row_reg[38]_0 ,
    \row_reg[37]_0 ,
    \row_reg[36]_0 ,
    \row_reg[35]_0 ,
    \row_reg[34]_0 ,
    \row_reg[31]_0 ,
    out_mux_sel_u,
    \last_index_count_ones[0]_i_2 ,
    Q,
    upper_bit_reg,
    upper_bit_reg_0,
    \out_sum[7]_i_89 ,
    \out_sum[7]_i_89_0 ,
    reset_IBUF,
    E,
    in_data_IBUF,
    clk_IBUF_BUFG,
    \row_reg[161]_1 ,
    enable_IBUF,
    \row_reg[0]_0 );
  output [2:0]upper_row_data;
  output \out_word_index_reg[2] ;
  output \row_reg[33]_0 ;
  output \row_reg[161]_0 ;
  output \out_word_index_reg[2]_0 ;
  output \row_reg[32]_0 ;
  output \row_reg[64]_0 ;
  output \row_reg[63]_0 ;
  output \row_reg[62]_0 ;
  output \row_reg[61]_0 ;
  output \row_reg[60]_0 ;
  output \row_reg[59]_0 ;
  output \row_reg[58]_0 ;
  output \row_reg[57]_0 ;
  output \row_reg[56]_0 ;
  output \row_reg[55]_0 ;
  output \row_reg[54]_0 ;
  output \row_reg[53]_0 ;
  output \row_reg[52]_0 ;
  output \row_reg[51]_0 ;
  output \row_reg[50]_0 ;
  output \row_reg[49]_0 ;
  output \row_reg[48]_0 ;
  output \row_reg[47]_0 ;
  output \row_reg[46]_0 ;
  output \row_reg[45]_0 ;
  output \row_reg[44]_0 ;
  output \row_reg[43]_0 ;
  output \row_reg[42]_0 ;
  output \row_reg[41]_0 ;
  output \row_reg[40]_0 ;
  output \row_reg[39]_0 ;
  output \row_reg[38]_0 ;
  output \row_reg[37]_0 ;
  output \row_reg[36]_0 ;
  output \row_reg[35]_0 ;
  output \row_reg[34]_0 ;
  output [29:0]\row_reg[31]_0 ;
  input out_mux_sel_u;
  input \last_index_count_ones[0]_i_2 ;
  input [2:0]Q;
  input upper_bit_reg;
  input upper_bit_reg_0;
  input \out_sum[7]_i_89 ;
  input \out_sum[7]_i_89_0 ;
  input reset_IBUF;
  input [4:0]E;
  input [31:0]in_data_IBUF;
  input clk_IBUF_BUFG;
  input \row_reg[161]_1 ;
  input enable_IBUF;
  input \row_reg[0]_0 ;

  wire [4:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [33:0]data0;
  wire [33:0]data2;
  wire enable_IBUF;
  wire [31:0]in_data_IBUF;
  wire \last_index_count_ones[0]_i_2 ;
  wire mem_reg_0_127_0_0__32_i_4_n_0;
  wire mem_reg_0_127_0_0__32_i_5_n_0;
  wire mem_reg_0_127_0_0_i_6_n_0;
  wire out_mux_sel_u;
  wire \out_sum[7]_i_89 ;
  wire \out_sum[7]_i_89_0 ;
  wire \out_word_index_reg[2] ;
  wire \out_word_index_reg[2]_0 ;
  wire reset_IBUF;
  wire \row[0]_i_1_n_0 ;
  wire \row[161]_i_1_n_0 ;
  wire \row_reg[0]_0 ;
  wire \row_reg[161]_0 ;
  wire \row_reg[161]_1 ;
  wire [29:0]\row_reg[31]_0 ;
  wire \row_reg[32]_0 ;
  wire \row_reg[33]_0 ;
  wire \row_reg[34]_0 ;
  wire \row_reg[35]_0 ;
  wire \row_reg[36]_0 ;
  wire \row_reg[37]_0 ;
  wire \row_reg[38]_0 ;
  wire \row_reg[39]_0 ;
  wire \row_reg[40]_0 ;
  wire \row_reg[41]_0 ;
  wire \row_reg[42]_0 ;
  wire \row_reg[43]_0 ;
  wire \row_reg[44]_0 ;
  wire \row_reg[45]_0 ;
  wire \row_reg[46]_0 ;
  wire \row_reg[47]_0 ;
  wire \row_reg[48]_0 ;
  wire \row_reg[49]_0 ;
  wire \row_reg[50]_0 ;
  wire \row_reg[51]_0 ;
  wire \row_reg[52]_0 ;
  wire \row_reg[53]_0 ;
  wire \row_reg[54]_0 ;
  wire \row_reg[55]_0 ;
  wire \row_reg[56]_0 ;
  wire \row_reg[57]_0 ;
  wire \row_reg[58]_0 ;
  wire \row_reg[59]_0 ;
  wire \row_reg[60]_0 ;
  wire \row_reg[61]_0 ;
  wire \row_reg[62]_0 ;
  wire \row_reg[63]_0 ;
  wire \row_reg[64]_0 ;
  wire \row_reg_n_0_[0] ;
  wire \row_reg_n_0_[100] ;
  wire \row_reg_n_0_[101] ;
  wire \row_reg_n_0_[102] ;
  wire \row_reg_n_0_[103] ;
  wire \row_reg_n_0_[104] ;
  wire \row_reg_n_0_[105] ;
  wire \row_reg_n_0_[106] ;
  wire \row_reg_n_0_[107] ;
  wire \row_reg_n_0_[108] ;
  wire \row_reg_n_0_[109] ;
  wire \row_reg_n_0_[110] ;
  wire \row_reg_n_0_[111] ;
  wire \row_reg_n_0_[112] ;
  wire \row_reg_n_0_[113] ;
  wire \row_reg_n_0_[114] ;
  wire \row_reg_n_0_[115] ;
  wire \row_reg_n_0_[116] ;
  wire \row_reg_n_0_[117] ;
  wire \row_reg_n_0_[118] ;
  wire \row_reg_n_0_[119] ;
  wire \row_reg_n_0_[120] ;
  wire \row_reg_n_0_[121] ;
  wire \row_reg_n_0_[122] ;
  wire \row_reg_n_0_[123] ;
  wire \row_reg_n_0_[124] ;
  wire \row_reg_n_0_[125] ;
  wire \row_reg_n_0_[126] ;
  wire \row_reg_n_0_[127] ;
  wire \row_reg_n_0_[1] ;
  wire \row_reg_n_0_[32] ;
  wire \row_reg_n_0_[33] ;
  wire \row_reg_n_0_[34] ;
  wire \row_reg_n_0_[35] ;
  wire \row_reg_n_0_[36] ;
  wire \row_reg_n_0_[37] ;
  wire \row_reg_n_0_[38] ;
  wire \row_reg_n_0_[39] ;
  wire \row_reg_n_0_[40] ;
  wire \row_reg_n_0_[41] ;
  wire \row_reg_n_0_[42] ;
  wire \row_reg_n_0_[43] ;
  wire \row_reg_n_0_[44] ;
  wire \row_reg_n_0_[45] ;
  wire \row_reg_n_0_[46] ;
  wire \row_reg_n_0_[47] ;
  wire \row_reg_n_0_[48] ;
  wire \row_reg_n_0_[49] ;
  wire \row_reg_n_0_[50] ;
  wire \row_reg_n_0_[51] ;
  wire \row_reg_n_0_[52] ;
  wire \row_reg_n_0_[53] ;
  wire \row_reg_n_0_[54] ;
  wire \row_reg_n_0_[55] ;
  wire \row_reg_n_0_[56] ;
  wire \row_reg_n_0_[57] ;
  wire \row_reg_n_0_[58] ;
  wire \row_reg_n_0_[59] ;
  wire \row_reg_n_0_[60] ;
  wire \row_reg_n_0_[61] ;
  wire \row_reg_n_0_[62] ;
  wire \row_reg_n_0_[63] ;
  wire \row_reg_n_0_[98] ;
  wire \row_reg_n_0_[99] ;
  wire upper_bit_i_2_n_0;
  wire upper_bit_reg;
  wire upper_bit_reg_0;
  wire [2:0]upper_row_data;

  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \last_index_count_ones[2]_i_5 
       (.I0(\out_word_index_reg[2] ),
        .I1(out_mux_sel_u),
        .I2(\last_index_count_ones[0]_i_2 ),
        .O(upper_row_data[0]));
  LUT4 #(
    .INIT(16'h8830)) 
    mem_reg_0_127_0_0__0_i_4
       (.I0(data0[33]),
        .I1(upper_bit_reg),
        .I2(\row_reg_n_0_[1] ),
        .I3(Q[0]),
        .O(\row_reg[161]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__0_i_5
       (.I0(\row_reg_n_0_[33] ),
        .I1(data2[1]),
        .I2(upper_bit_reg),
        .I3(data2[33]),
        .I4(Q[0]),
        .I5(data0[1]),
        .O(\row_reg[33]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__10_i_5
       (.I0(\row_reg_n_0_[43] ),
        .I1(data2[11]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[107] ),
        .I4(Q[0]),
        .I5(data0[11]),
        .O(\row_reg[43]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__11_i_5
       (.I0(\row_reg_n_0_[44] ),
        .I1(data2[12]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[108] ),
        .I4(Q[0]),
        .I5(data0[12]),
        .O(\row_reg[44]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__12_i_5
       (.I0(\row_reg_n_0_[45] ),
        .I1(data2[13]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[109] ),
        .I4(Q[0]),
        .I5(data0[13]),
        .O(\row_reg[45]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__13_i_5
       (.I0(\row_reg_n_0_[46] ),
        .I1(data2[14]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[110] ),
        .I4(Q[0]),
        .I5(data0[14]),
        .O(\row_reg[46]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__14_i_5
       (.I0(\row_reg_n_0_[47] ),
        .I1(data2[15]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[111] ),
        .I4(Q[0]),
        .I5(data0[15]),
        .O(\row_reg[47]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__15_i_5
       (.I0(\row_reg_n_0_[48] ),
        .I1(data2[16]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[112] ),
        .I4(Q[0]),
        .I5(data0[16]),
        .O(\row_reg[48]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__16_i_5
       (.I0(\row_reg_n_0_[49] ),
        .I1(data2[17]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[113] ),
        .I4(Q[0]),
        .I5(data0[17]),
        .O(\row_reg[49]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__17_i_5
       (.I0(\row_reg_n_0_[50] ),
        .I1(data2[18]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[114] ),
        .I4(Q[0]),
        .I5(data0[18]),
        .O(\row_reg[50]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__18_i_5
       (.I0(\row_reg_n_0_[51] ),
        .I1(data2[19]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[115] ),
        .I4(Q[0]),
        .I5(data0[19]),
        .O(\row_reg[51]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__19_i_5
       (.I0(\row_reg_n_0_[52] ),
        .I1(data2[20]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[116] ),
        .I4(Q[0]),
        .I5(data0[20]),
        .O(\row_reg[52]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__1_i_5
       (.I0(\row_reg_n_0_[34] ),
        .I1(data2[2]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[98] ),
        .I4(Q[0]),
        .I5(data0[2]),
        .O(\row_reg[34]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__20_i_5
       (.I0(\row_reg_n_0_[53] ),
        .I1(data2[21]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[117] ),
        .I4(Q[0]),
        .I5(data0[21]),
        .O(\row_reg[53]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__21_i_5
       (.I0(\row_reg_n_0_[54] ),
        .I1(data2[22]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[118] ),
        .I4(Q[0]),
        .I5(data0[22]),
        .O(\row_reg[54]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__22_i_5
       (.I0(\row_reg_n_0_[55] ),
        .I1(data2[23]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[119] ),
        .I4(Q[0]),
        .I5(data0[23]),
        .O(\row_reg[55]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__23_i_5
       (.I0(\row_reg_n_0_[56] ),
        .I1(data2[24]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[120] ),
        .I4(Q[0]),
        .I5(data0[24]),
        .O(\row_reg[56]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__24_i_5
       (.I0(\row_reg_n_0_[57] ),
        .I1(data2[25]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[121] ),
        .I4(Q[0]),
        .I5(data0[25]),
        .O(\row_reg[57]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__25_i_5
       (.I0(\row_reg_n_0_[58] ),
        .I1(data2[26]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[122] ),
        .I4(Q[0]),
        .I5(data0[26]),
        .O(\row_reg[58]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__26_i_5
       (.I0(\row_reg_n_0_[59] ),
        .I1(data2[27]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[123] ),
        .I4(Q[0]),
        .I5(data0[27]),
        .O(\row_reg[59]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__27_i_5
       (.I0(\row_reg_n_0_[60] ),
        .I1(data2[28]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[124] ),
        .I4(Q[0]),
        .I5(data0[28]),
        .O(\row_reg[60]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__28_i_5
       (.I0(\row_reg_n_0_[61] ),
        .I1(data2[29]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[125] ),
        .I4(Q[0]),
        .I5(data0[29]),
        .O(\row_reg[61]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__29_i_5
       (.I0(\row_reg_n_0_[62] ),
        .I1(data2[30]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[126] ),
        .I4(Q[0]),
        .I5(data0[30]),
        .O(\row_reg[62]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__2_i_5
       (.I0(\row_reg_n_0_[35] ),
        .I1(data2[3]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[99] ),
        .I4(Q[0]),
        .I5(data0[3]),
        .O(\row_reg[35]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__30_i_5
       (.I0(\row_reg_n_0_[63] ),
        .I1(data2[31]),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[127] ),
        .I4(Q[0]),
        .I5(data0[31]),
        .O(\row_reg[63]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_0_127_0_0__31_i_4
       (.I0(\row_reg_n_0_[32] ),
        .I1(Q[0]),
        .I2(\row_reg_n_0_[0] ),
        .I3(upper_bit_reg),
        .O(\row_reg[32]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__31_i_5
       (.I0(data2[0]),
        .I1(data2[32]),
        .I2(upper_bit_reg),
        .I3(data0[0]),
        .I4(Q[0]),
        .I5(data0[32]),
        .O(\row_reg[64]_0 ));
  MUXF7 mem_reg_0_127_0_0__32_i_2
       (.I0(mem_reg_0_127_0_0__32_i_4_n_0),
        .I1(mem_reg_0_127_0_0__32_i_5_n_0),
        .O(\out_word_index_reg[2]_0 ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__32_i_4
       (.I0(data2[1]),
        .I1(data2[33]),
        .I2(upper_bit_reg),
        .I3(data0[1]),
        .I4(Q[0]),
        .I5(data0[33]),
        .O(mem_reg_0_127_0_0__32_i_4_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_0_127_0_0__32_i_5
       (.I0(\row_reg_n_0_[33] ),
        .I1(Q[0]),
        .I2(\row_reg_n_0_[1] ),
        .I3(upper_bit_reg),
        .O(mem_reg_0_127_0_0__32_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__3_i_5
       (.I0(\row_reg_n_0_[36] ),
        .I1(data2[4]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[100] ),
        .I4(Q[0]),
        .I5(data0[4]),
        .O(\row_reg[36]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__4_i_5
       (.I0(\row_reg_n_0_[37] ),
        .I1(data2[5]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[101] ),
        .I4(Q[0]),
        .I5(data0[5]),
        .O(\row_reg[37]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__5_i_5
       (.I0(\row_reg_n_0_[38] ),
        .I1(data2[6]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[102] ),
        .I4(Q[0]),
        .I5(data0[6]),
        .O(\row_reg[38]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__6_i_5
       (.I0(\row_reg_n_0_[39] ),
        .I1(data2[7]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[103] ),
        .I4(Q[0]),
        .I5(data0[7]),
        .O(\row_reg[39]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__7_i_5
       (.I0(\row_reg_n_0_[40] ),
        .I1(data2[8]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[104] ),
        .I4(Q[0]),
        .I5(data0[8]),
        .O(\row_reg[40]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__8_i_5
       (.I0(\row_reg_n_0_[41] ),
        .I1(data2[9]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[105] ),
        .I4(Q[0]),
        .I5(data0[9]),
        .O(\row_reg[41]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__9_i_5
       (.I0(\row_reg_n_0_[42] ),
        .I1(data2[10]),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[106] ),
        .I4(Q[0]),
        .I5(data0[10]),
        .O(\row_reg[42]_0 ));
  LUT6 #(
    .INIT(64'hE22EE222222E2222)) 
    mem_reg_0_127_0_0_i_4
       (.I0(mem_reg_0_127_0_0_i_6_n_0),
        .I1(Q[2]),
        .I2(upper_bit_reg),
        .I3(Q[0]),
        .I4(\row_reg_n_0_[0] ),
        .I5(data0[32]),
        .O(\out_word_index_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0_i_6
       (.I0(\row_reg_n_0_[32] ),
        .I1(data2[0]),
        .I2(upper_bit_reg),
        .I3(data2[32]),
        .I4(Q[0]),
        .I5(data0[0]),
        .O(mem_reg_0_127_0_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_sum[7]_i_192 
       (.I0(\row_reg[32]_0 ),
        .I1(\row_reg[64]_0 ),
        .I2(out_mux_sel_u),
        .I3(\out_sum[7]_i_89 ),
        .I4(Q[2]),
        .I5(\out_sum[7]_i_89_0 ),
        .O(upper_row_data[2]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \row[0]_i_1 
       (.I0(in_data_IBUF[31]),
        .I1(out_mux_sel_u),
        .I2(enable_IBUF),
        .I3(\row_reg[0]_0 ),
        .I4(\row_reg_n_0_[0] ),
        .O(\row[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \row[161]_i_1 
       (.I0(in_data_IBUF[0]),
        .I1(\row_reg[161]_1 ),
        .I2(out_mux_sel_u),
        .I3(enable_IBUF),
        .I4(data0[33]),
        .O(\row[161]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\row[0]_i_1_n_0 ),
        .Q(\row_reg_n_0_[0] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[3]),
        .Q(\row_reg_n_0_[100] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[4]),
        .Q(\row_reg_n_0_[101] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[5]),
        .Q(\row_reg_n_0_[102] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[6]),
        .Q(\row_reg_n_0_[103] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[7]),
        .Q(\row_reg_n_0_[104] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[8]),
        .Q(\row_reg_n_0_[105] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[9]),
        .Q(\row_reg_n_0_[106] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[10]),
        .Q(\row_reg_n_0_[107] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[11]),
        .Q(\row_reg_n_0_[108] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[12]),
        .Q(\row_reg_n_0_[109] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[9]),
        .Q(\row_reg[31]_0 [8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[13]),
        .Q(\row_reg_n_0_[110] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[14]),
        .Q(\row_reg_n_0_[111] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[15]),
        .Q(\row_reg_n_0_[112] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[16]),
        .Q(\row_reg_n_0_[113] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[17]),
        .Q(\row_reg_n_0_[114] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[18]),
        .Q(\row_reg_n_0_[115] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[19]),
        .Q(\row_reg_n_0_[116] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[20]),
        .Q(\row_reg_n_0_[117] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[21]),
        .Q(\row_reg_n_0_[118] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[22]),
        .Q(\row_reg_n_0_[119] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[10]),
        .Q(\row_reg[31]_0 [9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[23]),
        .Q(\row_reg_n_0_[120] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[24]),
        .Q(\row_reg_n_0_[121] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[25]),
        .Q(\row_reg_n_0_[122] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[26]),
        .Q(\row_reg_n_0_[123] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[27]),
        .Q(\row_reg_n_0_[124] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[28]),
        .Q(\row_reg_n_0_[125] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[29]),
        .Q(\row_reg_n_0_[126] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[30]),
        .Q(\row_reg_n_0_[127] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[128] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[31]),
        .Q(data0[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[129] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[0]),
        .Q(data0[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[11]),
        .Q(\row_reg[31]_0 [10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[130] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[1]),
        .Q(data0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[131] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[2]),
        .Q(data0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[132] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[3]),
        .Q(data0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[133] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[4]),
        .Q(data0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[134] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[5]),
        .Q(data0[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[135] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[6]),
        .Q(data0[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[136] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[7]),
        .Q(data0[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[137] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[8]),
        .Q(data0[9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[138] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[9]),
        .Q(data0[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[139] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[10]),
        .Q(data0[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[12]),
        .Q(\row_reg[31]_0 [11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[140] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[11]),
        .Q(data0[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[141] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[12]),
        .Q(data0[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[142] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[13]),
        .Q(data0[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[143] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[14]),
        .Q(data0[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[144] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[15]),
        .Q(data0[16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[145] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[16]),
        .Q(data0[17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[146] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[17]),
        .Q(data0[18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[147] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[18]),
        .Q(data0[19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[148] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[19]),
        .Q(data0[20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[149] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[20]),
        .Q(data0[21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[13]),
        .Q(\row_reg[31]_0 [12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[150] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[21]),
        .Q(data0[22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[151] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[22]),
        .Q(data0[23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[152] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[23]),
        .Q(data0[24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[153] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[24]),
        .Q(data0[25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[154] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[25]),
        .Q(data0[26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[155] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[26]),
        .Q(data0[27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[156] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[27]),
        .Q(data0[28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[157] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[28]),
        .Q(data0[29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[158] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[29]),
        .Q(data0[30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[159] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[30]),
        .Q(data0[31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[14]),
        .Q(\row_reg[31]_0 [13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[160] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[31]),
        .Q(data0[32]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[161] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\row[161]_i_1_n_0 ),
        .Q(data0[33]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[15]),
        .Q(\row_reg[31]_0 [14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[16]),
        .Q(\row_reg[31]_0 [15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[17]),
        .Q(\row_reg[31]_0 [16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[18]),
        .Q(\row_reg[31]_0 [17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[0]),
        .Q(\row_reg_n_0_[1] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[19]),
        .Q(\row_reg[31]_0 [18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[20]),
        .Q(\row_reg[31]_0 [19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[21]),
        .Q(\row_reg[31]_0 [20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[22]),
        .Q(\row_reg[31]_0 [21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[23]),
        .Q(\row_reg[31]_0 [22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[24]),
        .Q(\row_reg[31]_0 [23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[25]),
        .Q(\row_reg[31]_0 [24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[26]),
        .Q(\row_reg[31]_0 [25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[27]),
        .Q(\row_reg[31]_0 [26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[28]),
        .Q(\row_reg[31]_0 [27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[1]),
        .Q(\row_reg[31]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[29]),
        .Q(\row_reg[31]_0 [28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[30]),
        .Q(\row_reg[31]_0 [29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[31]),
        .Q(\row_reg_n_0_[32] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[0]),
        .Q(\row_reg_n_0_[33] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[1]),
        .Q(\row_reg_n_0_[34] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[2]),
        .Q(\row_reg_n_0_[35] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[3]),
        .Q(\row_reg_n_0_[36] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[4]),
        .Q(\row_reg_n_0_[37] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[5]),
        .Q(\row_reg_n_0_[38] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[6]),
        .Q(\row_reg_n_0_[39] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[2]),
        .Q(\row_reg[31]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[7]),
        .Q(\row_reg_n_0_[40] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[8]),
        .Q(\row_reg_n_0_[41] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[9]),
        .Q(\row_reg_n_0_[42] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[10]),
        .Q(\row_reg_n_0_[43] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[11]),
        .Q(\row_reg_n_0_[44] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[12]),
        .Q(\row_reg_n_0_[45] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[13]),
        .Q(\row_reg_n_0_[46] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[14]),
        .Q(\row_reg_n_0_[47] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[15]),
        .Q(\row_reg_n_0_[48] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[16]),
        .Q(\row_reg_n_0_[49] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[3]),
        .Q(\row_reg[31]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[17]),
        .Q(\row_reg_n_0_[50] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[18]),
        .Q(\row_reg_n_0_[51] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[19]),
        .Q(\row_reg_n_0_[52] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[20]),
        .Q(\row_reg_n_0_[53] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[21]),
        .Q(\row_reg_n_0_[54] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[22]),
        .Q(\row_reg_n_0_[55] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[23]),
        .Q(\row_reg_n_0_[56] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[24]),
        .Q(\row_reg_n_0_[57] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[25]),
        .Q(\row_reg_n_0_[58] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[26]),
        .Q(\row_reg_n_0_[59] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[4]),
        .Q(\row_reg[31]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[27]),
        .Q(\row_reg_n_0_[60] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[28]),
        .Q(\row_reg_n_0_[61] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[29]),
        .Q(\row_reg_n_0_[62] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[30]),
        .Q(\row_reg_n_0_[63] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[31]),
        .Q(data2[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[0]),
        .Q(data2[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[1]),
        .Q(data2[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[2]),
        .Q(data2[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[3]),
        .Q(data2[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[4]),
        .Q(data2[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[5]),
        .Q(\row_reg[31]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[5]),
        .Q(data2[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[6]),
        .Q(data2[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[7]),
        .Q(data2[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[8]),
        .Q(data2[9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[9]),
        .Q(data2[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[10]),
        .Q(data2[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[11]),
        .Q(data2[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[12]),
        .Q(data2[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[13]),
        .Q(data2[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[14]),
        .Q(data2[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[6]),
        .Q(\row_reg[31]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[15]),
        .Q(data2[16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[16]),
        .Q(data2[17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[17]),
        .Q(data2[18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[18]),
        .Q(data2[19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[19]),
        .Q(data2[20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[20]),
        .Q(data2[21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[21]),
        .Q(data2[22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[22]),
        .Q(data2[23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[23]),
        .Q(data2[24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[24]),
        .Q(data2[25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[7]),
        .Q(\row_reg[31]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[25]),
        .Q(data2[26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[26]),
        .Q(data2[27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[27]),
        .Q(data2[28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[28]),
        .Q(data2[29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[29]),
        .Q(data2[30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[30]),
        .Q(data2[31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[31]),
        .Q(data2[32]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[0]),
        .Q(data2[33]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[1]),
        .Q(\row_reg_n_0_[98] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[2]),
        .Q(\row_reg_n_0_[99] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[8]),
        .Q(\row_reg[31]_0 [7]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    upper_bit_i_1
       (.I0(upper_bit_i_2_n_0),
        .I1(out_mux_sel_u),
        .I2(upper_bit_reg_0),
        .O(upper_row_data[1]));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    upper_bit_i_2
       (.I0(data0[33]),
        .I1(upper_bit_reg),
        .I2(\row_reg_n_0_[1] ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\row_reg[33]_0 ),
        .O(upper_bit_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "row_reg" *) 
module row_reg_31
   (w_data,
    \row_reg[0]_0 ,
    \row_reg[161]_0 ,
    \out_word_index_reg[2] ,
    \row_reg[32]_0 ,
    \row_reg[64]_0 ,
    \row_reg[63]_0 ,
    \row_reg[62]_0 ,
    \row_reg[61]_0 ,
    \row_reg[60]_0 ,
    \row_reg[59]_0 ,
    \row_reg[58]_0 ,
    \row_reg[57]_0 ,
    \row_reg[56]_0 ,
    \row_reg[55]_0 ,
    \row_reg[54]_0 ,
    \row_reg[53]_0 ,
    \row_reg[52]_0 ,
    \row_reg[51]_0 ,
    \row_reg[50]_0 ,
    \row_reg[49]_0 ,
    \row_reg[48]_0 ,
    \row_reg[47]_0 ,
    \row_reg[46]_0 ,
    \row_reg[45]_0 ,
    \row_reg[44]_0 ,
    \row_reg[43]_0 ,
    \row_reg[42]_0 ,
    \row_reg[41]_0 ,
    \row_reg[40]_0 ,
    \row_reg[39]_0 ,
    \row_reg[38]_0 ,
    \row_reg[37]_0 ,
    \row_reg[36]_0 ,
    \row_reg[35]_0 ,
    \row_reg[34]_0 ,
    \row_reg[31]_0 ,
    out_mux_sel_u,
    \last_index_count_ones[0]_i_2 ,
    Q,
    upper_bit_reg,
    mem_reg_0_127_0_0__0,
    mem_reg_0_127_0_0__0_0,
    mem_reg_0_127_0_0__31,
    mem_reg_0_127_0_0__31_0,
    reset_IBUF,
    E,
    in_data_IBUF,
    clk_IBUF_BUFG,
    \row_reg[161]_1 ,
    enable_IBUF,
    \row_reg[0]_1 );
  output [2:0]w_data;
  output \row_reg[0]_0 ;
  output \row_reg[161]_0 ;
  output \out_word_index_reg[2] ;
  output \row_reg[32]_0 ;
  output \row_reg[64]_0 ;
  output \row_reg[63]_0 ;
  output \row_reg[62]_0 ;
  output \row_reg[61]_0 ;
  output \row_reg[60]_0 ;
  output \row_reg[59]_0 ;
  output \row_reg[58]_0 ;
  output \row_reg[57]_0 ;
  output \row_reg[56]_0 ;
  output \row_reg[55]_0 ;
  output \row_reg[54]_0 ;
  output \row_reg[53]_0 ;
  output \row_reg[52]_0 ;
  output \row_reg[51]_0 ;
  output \row_reg[50]_0 ;
  output \row_reg[49]_0 ;
  output \row_reg[48]_0 ;
  output \row_reg[47]_0 ;
  output \row_reg[46]_0 ;
  output \row_reg[45]_0 ;
  output \row_reg[44]_0 ;
  output \row_reg[43]_0 ;
  output \row_reg[42]_0 ;
  output \row_reg[41]_0 ;
  output \row_reg[40]_0 ;
  output \row_reg[39]_0 ;
  output \row_reg[38]_0 ;
  output \row_reg[37]_0 ;
  output \row_reg[36]_0 ;
  output \row_reg[35]_0 ;
  output \row_reg[34]_0 ;
  output [29:0]\row_reg[31]_0 ;
  input out_mux_sel_u;
  input \last_index_count_ones[0]_i_2 ;
  input [2:0]Q;
  input upper_bit_reg;
  input mem_reg_0_127_0_0__0;
  input mem_reg_0_127_0_0__0_0;
  input mem_reg_0_127_0_0__31;
  input mem_reg_0_127_0_0__31_0;
  input reset_IBUF;
  input [4:0]E;
  input [31:0]in_data_IBUF;
  input clk_IBUF_BUFG;
  input \row_reg[161]_1 ;
  input enable_IBUF;
  input \row_reg[0]_1 ;

  wire [4:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [33:32]data5;
  wire [1:0]data7;
  wire enable_IBUF;
  wire [31:0]in_data_IBUF;
  wire \last_index_count_ones[0]_i_2 ;
  wire mem_reg_0_127_0_0__0;
  wire mem_reg_0_127_0_0__0_0;
  wire mem_reg_0_127_0_0__0_i_2_n_0;
  wire mem_reg_0_127_0_0__0_i_3_n_0;
  wire mem_reg_0_127_0_0__31;
  wire mem_reg_0_127_0_0__31_0;
  wire mem_reg_0_127_0_0__32_i_6_n_0;
  wire mem_reg_0_127_0_0__32_i_7_n_0;
  wire mem_reg_0_127_0_0_i_5_n_0;
  wire out_mux_sel_u;
  wire \out_word_index_reg[2] ;
  wire reset_IBUF;
  wire \row[0]_i_1_n_0 ;
  wire \row[161]_i_1_n_0 ;
  wire \row_reg[0]_0 ;
  wire \row_reg[0]_1 ;
  wire \row_reg[161]_0 ;
  wire \row_reg[161]_1 ;
  wire [29:0]\row_reg[31]_0 ;
  wire \row_reg[32]_0 ;
  wire \row_reg[34]_0 ;
  wire \row_reg[35]_0 ;
  wire \row_reg[36]_0 ;
  wire \row_reg[37]_0 ;
  wire \row_reg[38]_0 ;
  wire \row_reg[39]_0 ;
  wire \row_reg[40]_0 ;
  wire \row_reg[41]_0 ;
  wire \row_reg[42]_0 ;
  wire \row_reg[43]_0 ;
  wire \row_reg[44]_0 ;
  wire \row_reg[45]_0 ;
  wire \row_reg[46]_0 ;
  wire \row_reg[47]_0 ;
  wire \row_reg[48]_0 ;
  wire \row_reg[49]_0 ;
  wire \row_reg[50]_0 ;
  wire \row_reg[51]_0 ;
  wire \row_reg[52]_0 ;
  wire \row_reg[53]_0 ;
  wire \row_reg[54]_0 ;
  wire \row_reg[55]_0 ;
  wire \row_reg[56]_0 ;
  wire \row_reg[57]_0 ;
  wire \row_reg[58]_0 ;
  wire \row_reg[59]_0 ;
  wire \row_reg[60]_0 ;
  wire \row_reg[61]_0 ;
  wire \row_reg[62]_0 ;
  wire \row_reg[63]_0 ;
  wire \row_reg[64]_0 ;
  wire \row_reg_n_0_[100] ;
  wire \row_reg_n_0_[101] ;
  wire \row_reg_n_0_[102] ;
  wire \row_reg_n_0_[103] ;
  wire \row_reg_n_0_[104] ;
  wire \row_reg_n_0_[105] ;
  wire \row_reg_n_0_[106] ;
  wire \row_reg_n_0_[107] ;
  wire \row_reg_n_0_[108] ;
  wire \row_reg_n_0_[109] ;
  wire \row_reg_n_0_[110] ;
  wire \row_reg_n_0_[111] ;
  wire \row_reg_n_0_[112] ;
  wire \row_reg_n_0_[113] ;
  wire \row_reg_n_0_[114] ;
  wire \row_reg_n_0_[115] ;
  wire \row_reg_n_0_[116] ;
  wire \row_reg_n_0_[117] ;
  wire \row_reg_n_0_[118] ;
  wire \row_reg_n_0_[119] ;
  wire \row_reg_n_0_[120] ;
  wire \row_reg_n_0_[121] ;
  wire \row_reg_n_0_[122] ;
  wire \row_reg_n_0_[123] ;
  wire \row_reg_n_0_[124] ;
  wire \row_reg_n_0_[125] ;
  wire \row_reg_n_0_[126] ;
  wire \row_reg_n_0_[127] ;
  wire \row_reg_n_0_[128] ;
  wire \row_reg_n_0_[129] ;
  wire \row_reg_n_0_[130] ;
  wire \row_reg_n_0_[131] ;
  wire \row_reg_n_0_[132] ;
  wire \row_reg_n_0_[133] ;
  wire \row_reg_n_0_[134] ;
  wire \row_reg_n_0_[135] ;
  wire \row_reg_n_0_[136] ;
  wire \row_reg_n_0_[137] ;
  wire \row_reg_n_0_[138] ;
  wire \row_reg_n_0_[139] ;
  wire \row_reg_n_0_[140] ;
  wire \row_reg_n_0_[141] ;
  wire \row_reg_n_0_[142] ;
  wire \row_reg_n_0_[143] ;
  wire \row_reg_n_0_[144] ;
  wire \row_reg_n_0_[145] ;
  wire \row_reg_n_0_[146] ;
  wire \row_reg_n_0_[147] ;
  wire \row_reg_n_0_[148] ;
  wire \row_reg_n_0_[149] ;
  wire \row_reg_n_0_[150] ;
  wire \row_reg_n_0_[151] ;
  wire \row_reg_n_0_[152] ;
  wire \row_reg_n_0_[153] ;
  wire \row_reg_n_0_[154] ;
  wire \row_reg_n_0_[155] ;
  wire \row_reg_n_0_[156] ;
  wire \row_reg_n_0_[157] ;
  wire \row_reg_n_0_[158] ;
  wire \row_reg_n_0_[159] ;
  wire \row_reg_n_0_[32] ;
  wire \row_reg_n_0_[33] ;
  wire \row_reg_n_0_[34] ;
  wire \row_reg_n_0_[35] ;
  wire \row_reg_n_0_[36] ;
  wire \row_reg_n_0_[37] ;
  wire \row_reg_n_0_[38] ;
  wire \row_reg_n_0_[39] ;
  wire \row_reg_n_0_[40] ;
  wire \row_reg_n_0_[41] ;
  wire \row_reg_n_0_[42] ;
  wire \row_reg_n_0_[43] ;
  wire \row_reg_n_0_[44] ;
  wire \row_reg_n_0_[45] ;
  wire \row_reg_n_0_[46] ;
  wire \row_reg_n_0_[47] ;
  wire \row_reg_n_0_[48] ;
  wire \row_reg_n_0_[49] ;
  wire \row_reg_n_0_[50] ;
  wire \row_reg_n_0_[51] ;
  wire \row_reg_n_0_[52] ;
  wire \row_reg_n_0_[53] ;
  wire \row_reg_n_0_[54] ;
  wire \row_reg_n_0_[55] ;
  wire \row_reg_n_0_[56] ;
  wire \row_reg_n_0_[57] ;
  wire \row_reg_n_0_[58] ;
  wire \row_reg_n_0_[59] ;
  wire \row_reg_n_0_[60] ;
  wire \row_reg_n_0_[61] ;
  wire \row_reg_n_0_[62] ;
  wire \row_reg_n_0_[63] ;
  wire \row_reg_n_0_[64] ;
  wire \row_reg_n_0_[65] ;
  wire \row_reg_n_0_[66] ;
  wire \row_reg_n_0_[67] ;
  wire \row_reg_n_0_[68] ;
  wire \row_reg_n_0_[69] ;
  wire \row_reg_n_0_[70] ;
  wire \row_reg_n_0_[71] ;
  wire \row_reg_n_0_[72] ;
  wire \row_reg_n_0_[73] ;
  wire \row_reg_n_0_[74] ;
  wire \row_reg_n_0_[75] ;
  wire \row_reg_n_0_[76] ;
  wire \row_reg_n_0_[77] ;
  wire \row_reg_n_0_[78] ;
  wire \row_reg_n_0_[79] ;
  wire \row_reg_n_0_[80] ;
  wire \row_reg_n_0_[81] ;
  wire \row_reg_n_0_[82] ;
  wire \row_reg_n_0_[83] ;
  wire \row_reg_n_0_[84] ;
  wire \row_reg_n_0_[85] ;
  wire \row_reg_n_0_[86] ;
  wire \row_reg_n_0_[87] ;
  wire \row_reg_n_0_[88] ;
  wire \row_reg_n_0_[89] ;
  wire \row_reg_n_0_[90] ;
  wire \row_reg_n_0_[91] ;
  wire \row_reg_n_0_[92] ;
  wire \row_reg_n_0_[93] ;
  wire \row_reg_n_0_[94] ;
  wire \row_reg_n_0_[95] ;
  wire \row_reg_n_0_[96] ;
  wire \row_reg_n_0_[97] ;
  wire \row_reg_n_0_[98] ;
  wire \row_reg_n_0_[99] ;
  wire upper_bit_reg;
  wire [2:0]w_data;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__0_i_1
       (.I0(mem_reg_0_127_0_0__0_i_2_n_0),
        .I1(mem_reg_0_127_0_0__0_i_3_n_0),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__0),
        .I4(Q[2]),
        .I5(mem_reg_0_127_0_0__0_0),
        .O(w_data[1]));
  LUT4 #(
    .INIT(16'h8830)) 
    mem_reg_0_127_0_0__0_i_2
       (.I0(data7[1]),
        .I1(upper_bit_reg),
        .I2(data5[33]),
        .I3(Q[0]),
        .O(mem_reg_0_127_0_0__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__0_i_3
       (.I0(\row_reg_n_0_[33] ),
        .I1(\row_reg_n_0_[65] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[97] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[129] ),
        .O(mem_reg_0_127_0_0__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__10_i_3
       (.I0(\row_reg_n_0_[43] ),
        .I1(\row_reg_n_0_[75] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[107] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[139] ),
        .O(\row_reg[43]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__11_i_3
       (.I0(\row_reg_n_0_[44] ),
        .I1(\row_reg_n_0_[76] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[108] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[140] ),
        .O(\row_reg[44]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__12_i_3
       (.I0(\row_reg_n_0_[45] ),
        .I1(\row_reg_n_0_[77] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[109] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[141] ),
        .O(\row_reg[45]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__13_i_3
       (.I0(\row_reg_n_0_[46] ),
        .I1(\row_reg_n_0_[78] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[110] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[142] ),
        .O(\row_reg[46]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__14_i_3
       (.I0(\row_reg_n_0_[47] ),
        .I1(\row_reg_n_0_[79] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[111] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[143] ),
        .O(\row_reg[47]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__15_i_3
       (.I0(\row_reg_n_0_[48] ),
        .I1(\row_reg_n_0_[80] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[112] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[144] ),
        .O(\row_reg[48]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__16_i_3
       (.I0(\row_reg_n_0_[49] ),
        .I1(\row_reg_n_0_[81] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[113] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[145] ),
        .O(\row_reg[49]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__17_i_3
       (.I0(\row_reg_n_0_[50] ),
        .I1(\row_reg_n_0_[82] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[114] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[146] ),
        .O(\row_reg[50]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__18_i_3
       (.I0(\row_reg_n_0_[51] ),
        .I1(\row_reg_n_0_[83] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[115] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[147] ),
        .O(\row_reg[51]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__19_i_3
       (.I0(\row_reg_n_0_[52] ),
        .I1(\row_reg_n_0_[84] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[116] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[148] ),
        .O(\row_reg[52]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__1_i_3
       (.I0(\row_reg_n_0_[34] ),
        .I1(\row_reg_n_0_[66] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[98] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[130] ),
        .O(\row_reg[34]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__20_i_3
       (.I0(\row_reg_n_0_[53] ),
        .I1(\row_reg_n_0_[85] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[117] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[149] ),
        .O(\row_reg[53]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__21_i_3
       (.I0(\row_reg_n_0_[54] ),
        .I1(\row_reg_n_0_[86] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[118] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[150] ),
        .O(\row_reg[54]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__22_i_3
       (.I0(\row_reg_n_0_[55] ),
        .I1(\row_reg_n_0_[87] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[119] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[151] ),
        .O(\row_reg[55]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__23_i_3
       (.I0(\row_reg_n_0_[56] ),
        .I1(\row_reg_n_0_[88] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[120] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[152] ),
        .O(\row_reg[56]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__24_i_3
       (.I0(\row_reg_n_0_[57] ),
        .I1(\row_reg_n_0_[89] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[121] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[153] ),
        .O(\row_reg[57]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__25_i_3
       (.I0(\row_reg_n_0_[58] ),
        .I1(\row_reg_n_0_[90] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[122] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[154] ),
        .O(\row_reg[58]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__26_i_3
       (.I0(\row_reg_n_0_[59] ),
        .I1(\row_reg_n_0_[91] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[123] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[155] ),
        .O(\row_reg[59]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__27_i_3
       (.I0(\row_reg_n_0_[60] ),
        .I1(\row_reg_n_0_[92] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[124] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[156] ),
        .O(\row_reg[60]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__28_i_3
       (.I0(\row_reg_n_0_[61] ),
        .I1(\row_reg_n_0_[93] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[125] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[157] ),
        .O(\row_reg[61]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__29_i_3
       (.I0(\row_reg_n_0_[62] ),
        .I1(\row_reg_n_0_[94] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[126] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[158] ),
        .O(\row_reg[62]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__2_i_3
       (.I0(\row_reg_n_0_[35] ),
        .I1(\row_reg_n_0_[67] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[99] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[131] ),
        .O(\row_reg[35]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__30_i_3
       (.I0(\row_reg_n_0_[63] ),
        .I1(\row_reg_n_0_[95] ),
        .I2(Q[1]),
        .I3(\row_reg_n_0_[127] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[159] ),
        .O(\row_reg[63]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__31_i_1
       (.I0(\row_reg[32]_0 ),
        .I1(\row_reg[64]_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__31),
        .I4(Q[2]),
        .I5(mem_reg_0_127_0_0__31_0),
        .O(w_data[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_0_127_0_0__31_i_2
       (.I0(\row_reg_n_0_[32] ),
        .I1(Q[0]),
        .I2(data5[32]),
        .I3(upper_bit_reg),
        .O(\row_reg[32]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__31_i_3
       (.I0(\row_reg_n_0_[64] ),
        .I1(\row_reg_n_0_[96] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[128] ),
        .I4(Q[0]),
        .I5(data7[0]),
        .O(\row_reg[64]_0 ));
  MUXF7 mem_reg_0_127_0_0__32_i_3
       (.I0(mem_reg_0_127_0_0__32_i_6_n_0),
        .I1(mem_reg_0_127_0_0__32_i_7_n_0),
        .O(\out_word_index_reg[2] ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__32_i_6
       (.I0(\row_reg_n_0_[65] ),
        .I1(\row_reg_n_0_[97] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[129] ),
        .I4(Q[0]),
        .I5(data7[1]),
        .O(mem_reg_0_127_0_0__32_i_6_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    mem_reg_0_127_0_0__32_i_7
       (.I0(\row_reg_n_0_[33] ),
        .I1(Q[0]),
        .I2(data5[33]),
        .I3(upper_bit_reg),
        .O(mem_reg_0_127_0_0__32_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__3_i_3
       (.I0(\row_reg_n_0_[36] ),
        .I1(\row_reg_n_0_[68] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[100] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[132] ),
        .O(\row_reg[36]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__4_i_3
       (.I0(\row_reg_n_0_[37] ),
        .I1(\row_reg_n_0_[69] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[101] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[133] ),
        .O(\row_reg[37]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__5_i_3
       (.I0(\row_reg_n_0_[38] ),
        .I1(\row_reg_n_0_[70] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[102] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[134] ),
        .O(\row_reg[38]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__6_i_3
       (.I0(\row_reg_n_0_[39] ),
        .I1(\row_reg_n_0_[71] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[103] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[135] ),
        .O(\row_reg[39]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__7_i_3
       (.I0(\row_reg_n_0_[40] ),
        .I1(\row_reg_n_0_[72] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[104] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[136] ),
        .O(\row_reg[40]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__8_i_3
       (.I0(\row_reg_n_0_[41] ),
        .I1(\row_reg_n_0_[73] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[105] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[137] ),
        .O(\row_reg[41]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0__9_i_3
       (.I0(\row_reg_n_0_[42] ),
        .I1(\row_reg_n_0_[74] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[106] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[138] ),
        .O(\row_reg[42]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_0_127_0_0_i_1
       (.I0(\row_reg[0]_0 ),
        .I1(out_mux_sel_u),
        .I2(\last_index_count_ones[0]_i_2 ),
        .O(w_data[0]));
  LUT6 #(
    .INIT(64'hFA0A0ACA0A0A0ACA)) 
    mem_reg_0_127_0_0_i_3
       (.I0(mem_reg_0_127_0_0_i_5_n_0),
        .I1(data5[32]),
        .I2(Q[2]),
        .I3(upper_bit_reg),
        .I4(Q[0]),
        .I5(data7[0]),
        .O(\row_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_0_0_i_5
       (.I0(\row_reg_n_0_[32] ),
        .I1(\row_reg_n_0_[64] ),
        .I2(upper_bit_reg),
        .I3(\row_reg_n_0_[96] ),
        .I4(Q[0]),
        .I5(\row_reg_n_0_[128] ),
        .O(mem_reg_0_127_0_0_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \row[0]_i_1 
       (.I0(in_data_IBUF[31]),
        .I1(\row_reg[0]_1 ),
        .I2(enable_IBUF),
        .I3(out_mux_sel_u),
        .I4(data5[32]),
        .O(\row[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \row[161]_i_1 
       (.I0(in_data_IBUF[0]),
        .I1(\row_reg[161]_1 ),
        .I2(enable_IBUF),
        .I3(out_mux_sel_u),
        .I4(data7[1]),
        .O(\row[161]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\row[0]_i_1_n_0 ),
        .Q(data5[32]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[3]),
        .Q(\row_reg_n_0_[100] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[4]),
        .Q(\row_reg_n_0_[101] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[5]),
        .Q(\row_reg_n_0_[102] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[6]),
        .Q(\row_reg_n_0_[103] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[7]),
        .Q(\row_reg_n_0_[104] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[8]),
        .Q(\row_reg_n_0_[105] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[9]),
        .Q(\row_reg_n_0_[106] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[10]),
        .Q(\row_reg_n_0_[107] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[11]),
        .Q(\row_reg_n_0_[108] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[12]),
        .Q(\row_reg_n_0_[109] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[9]),
        .Q(\row_reg[31]_0 [8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[13]),
        .Q(\row_reg_n_0_[110] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[14]),
        .Q(\row_reg_n_0_[111] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[15]),
        .Q(\row_reg_n_0_[112] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[16]),
        .Q(\row_reg_n_0_[113] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[17]),
        .Q(\row_reg_n_0_[114] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[18]),
        .Q(\row_reg_n_0_[115] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[19]),
        .Q(\row_reg_n_0_[116] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[20]),
        .Q(\row_reg_n_0_[117] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[21]),
        .Q(\row_reg_n_0_[118] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[22]),
        .Q(\row_reg_n_0_[119] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[10]),
        .Q(\row_reg[31]_0 [9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[23]),
        .Q(\row_reg_n_0_[120] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[24]),
        .Q(\row_reg_n_0_[121] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[25]),
        .Q(\row_reg_n_0_[122] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[26]),
        .Q(\row_reg_n_0_[123] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[27]),
        .Q(\row_reg_n_0_[124] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[28]),
        .Q(\row_reg_n_0_[125] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[29]),
        .Q(\row_reg_n_0_[126] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[30]),
        .Q(\row_reg_n_0_[127] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[128] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[31]),
        .Q(\row_reg_n_0_[128] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[129] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[0]),
        .Q(\row_reg_n_0_[129] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[11]),
        .Q(\row_reg[31]_0 [10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[130] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[1]),
        .Q(\row_reg_n_0_[130] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[131] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[2]),
        .Q(\row_reg_n_0_[131] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[132] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[3]),
        .Q(\row_reg_n_0_[132] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[133] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[4]),
        .Q(\row_reg_n_0_[133] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[134] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[5]),
        .Q(\row_reg_n_0_[134] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[135] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[6]),
        .Q(\row_reg_n_0_[135] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[136] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[7]),
        .Q(\row_reg_n_0_[136] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[137] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[8]),
        .Q(\row_reg_n_0_[137] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[138] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[9]),
        .Q(\row_reg_n_0_[138] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[139] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[10]),
        .Q(\row_reg_n_0_[139] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[12]),
        .Q(\row_reg[31]_0 [11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[140] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[11]),
        .Q(\row_reg_n_0_[140] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[141] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[12]),
        .Q(\row_reg_n_0_[141] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[142] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[13]),
        .Q(\row_reg_n_0_[142] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[143] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[14]),
        .Q(\row_reg_n_0_[143] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[144] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[15]),
        .Q(\row_reg_n_0_[144] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[145] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[16]),
        .Q(\row_reg_n_0_[145] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[146] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[17]),
        .Q(\row_reg_n_0_[146] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[147] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[18]),
        .Q(\row_reg_n_0_[147] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[148] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[19]),
        .Q(\row_reg_n_0_[148] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[149] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[20]),
        .Q(\row_reg_n_0_[149] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[13]),
        .Q(\row_reg[31]_0 [12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[150] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[21]),
        .Q(\row_reg_n_0_[150] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[151] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[22]),
        .Q(\row_reg_n_0_[151] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[152] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[23]),
        .Q(\row_reg_n_0_[152] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[153] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[24]),
        .Q(\row_reg_n_0_[153] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[154] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[25]),
        .Q(\row_reg_n_0_[154] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[155] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[26]),
        .Q(\row_reg_n_0_[155] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[156] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[27]),
        .Q(\row_reg_n_0_[156] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[157] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[28]),
        .Q(\row_reg_n_0_[157] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[158] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[29]),
        .Q(\row_reg_n_0_[158] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[159] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[30]),
        .Q(\row_reg_n_0_[159] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[14]),
        .Q(\row_reg[31]_0 [13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[160] 
       (.C(clk_IBUF_BUFG),
        .CE(E[4]),
        .D(in_data_IBUF[31]),
        .Q(data7[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[161] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\row[161]_i_1_n_0 ),
        .Q(data7[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[15]),
        .Q(\row_reg[31]_0 [14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[16]),
        .Q(\row_reg[31]_0 [15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[17]),
        .Q(\row_reg[31]_0 [16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[18]),
        .Q(\row_reg[31]_0 [17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[0]),
        .Q(data5[33]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[19]),
        .Q(\row_reg[31]_0 [18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[20]),
        .Q(\row_reg[31]_0 [19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[21]),
        .Q(\row_reg[31]_0 [20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[22]),
        .Q(\row_reg[31]_0 [21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[23]),
        .Q(\row_reg[31]_0 [22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[24]),
        .Q(\row_reg[31]_0 [23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[25]),
        .Q(\row_reg[31]_0 [24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[26]),
        .Q(\row_reg[31]_0 [25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[27]),
        .Q(\row_reg[31]_0 [26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[28]),
        .Q(\row_reg[31]_0 [27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[1]),
        .Q(\row_reg[31]_0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[29]),
        .Q(\row_reg[31]_0 [28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[30]),
        .Q(\row_reg[31]_0 [29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[31]),
        .Q(\row_reg_n_0_[32] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[0]),
        .Q(\row_reg_n_0_[33] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[1]),
        .Q(\row_reg_n_0_[34] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[2]),
        .Q(\row_reg_n_0_[35] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[3]),
        .Q(\row_reg_n_0_[36] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[4]),
        .Q(\row_reg_n_0_[37] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[5]),
        .Q(\row_reg_n_0_[38] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[6]),
        .Q(\row_reg_n_0_[39] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[2]),
        .Q(\row_reg[31]_0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[7]),
        .Q(\row_reg_n_0_[40] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[8]),
        .Q(\row_reg_n_0_[41] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[9]),
        .Q(\row_reg_n_0_[42] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[10]),
        .Q(\row_reg_n_0_[43] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[11]),
        .Q(\row_reg_n_0_[44] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[12]),
        .Q(\row_reg_n_0_[45] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[13]),
        .Q(\row_reg_n_0_[46] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[14]),
        .Q(\row_reg_n_0_[47] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[15]),
        .Q(\row_reg_n_0_[48] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[16]),
        .Q(\row_reg_n_0_[49] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[3]),
        .Q(\row_reg[31]_0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[17]),
        .Q(\row_reg_n_0_[50] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[18]),
        .Q(\row_reg_n_0_[51] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[19]),
        .Q(\row_reg_n_0_[52] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[20]),
        .Q(\row_reg_n_0_[53] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[21]),
        .Q(\row_reg_n_0_[54] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[22]),
        .Q(\row_reg_n_0_[55] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[23]),
        .Q(\row_reg_n_0_[56] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[24]),
        .Q(\row_reg_n_0_[57] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[25]),
        .Q(\row_reg_n_0_[58] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[26]),
        .Q(\row_reg_n_0_[59] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[4]),
        .Q(\row_reg[31]_0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[27]),
        .Q(\row_reg_n_0_[60] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[28]),
        .Q(\row_reg_n_0_[61] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[29]),
        .Q(\row_reg_n_0_[62] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[30]),
        .Q(\row_reg_n_0_[63] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(E[1]),
        .D(in_data_IBUF[31]),
        .Q(\row_reg_n_0_[64] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[0]),
        .Q(\row_reg_n_0_[65] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[1]),
        .Q(\row_reg_n_0_[66] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[2]),
        .Q(\row_reg_n_0_[67] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[3]),
        .Q(\row_reg_n_0_[68] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[4]),
        .Q(\row_reg_n_0_[69] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[5]),
        .Q(\row_reg[31]_0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[5]),
        .Q(\row_reg_n_0_[70] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[6]),
        .Q(\row_reg_n_0_[71] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[7]),
        .Q(\row_reg_n_0_[72] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[8]),
        .Q(\row_reg_n_0_[73] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[9]),
        .Q(\row_reg_n_0_[74] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[10]),
        .Q(\row_reg_n_0_[75] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[11]),
        .Q(\row_reg_n_0_[76] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[12]),
        .Q(\row_reg_n_0_[77] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[13]),
        .Q(\row_reg_n_0_[78] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[14]),
        .Q(\row_reg_n_0_[79] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[6]),
        .Q(\row_reg[31]_0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[15]),
        .Q(\row_reg_n_0_[80] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[16]),
        .Q(\row_reg_n_0_[81] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[17]),
        .Q(\row_reg_n_0_[82] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[18]),
        .Q(\row_reg_n_0_[83] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[19]),
        .Q(\row_reg_n_0_[84] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[20]),
        .Q(\row_reg_n_0_[85] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[21]),
        .Q(\row_reg_n_0_[86] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[22]),
        .Q(\row_reg_n_0_[87] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[23]),
        .Q(\row_reg_n_0_[88] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[24]),
        .Q(\row_reg_n_0_[89] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[7]),
        .Q(\row_reg[31]_0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[25]),
        .Q(\row_reg_n_0_[90] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[26]),
        .Q(\row_reg_n_0_[91] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[27]),
        .Q(\row_reg_n_0_[92] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[28]),
        .Q(\row_reg_n_0_[93] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[29]),
        .Q(\row_reg_n_0_[94] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[30]),
        .Q(\row_reg_n_0_[95] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(E[2]),
        .D(in_data_IBUF[31]),
        .Q(\row_reg_n_0_[96] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[0]),
        .Q(\row_reg_n_0_[97] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[1]),
        .Q(\row_reg_n_0_[98] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(E[3]),
        .D(in_data_IBUF[2]),
        .Q(\row_reg_n_0_[99] ),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E[0]),
        .D(in_data_IBUF[8]),
        .Q(\row_reg[31]_0 [7]),
        .R(reset_IBUF));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    upper_bit_i_3
       (.I0(data7[1]),
        .I1(upper_bit_reg),
        .I2(data5[33]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(mem_reg_0_127_0_0__0_i_3_n_0),
        .O(\row_reg[161]_0 ));
endmodule

module word_index_counter
   (\out_sum[7]_i_30_0 ,
    \out_sum[7]_i_29 ,
    p_30_out,
    out_mux_sel_u_reg,
    \out_word_index_reg[0]_0 ,
    \out_word_index_reg[2]_0 ,
    \out_word_index_reg[1]_rep_0 ,
    upper_row_data,
    \row[0]_i_6_0 ,
    E,
    \out_word_index_reg[1]_0 ,
    \out_word_index_reg[1]_1 ,
    \out_word_index_reg[1]_2 ,
    \out_word_index_reg[1]_3 ,
    \out_word_index_reg[1]_4 ,
    \out_sum_reg[15] ,
    out_mux_sel_u_reg_0,
    out_mux_sel_u_reg_1,
    \out_sum[7]_i_60 ,
    out_mux_sel_u_reg_2,
    \out_word_index_reg[2]_1 ,
    \out_word_index_reg[1]_5 ,
    out_mux_sel_u_reg_3,
    out_mux_sel_u_reg_4,
    out_mux_sel_u_reg_5,
    out_mux_sel_u_reg_6,
    out_mux_sel_u_reg_7,
    out_mux_sel_u_reg_8,
    out_mux_sel_u_reg_9,
    \out_sum[7]_i_30_1 ,
    \out_sum[7]_i_56 ,
    \out_word_index_reg[1]_6 ,
    Q,
    \out_sum_reg[7] ,
    \out_sum_reg[7]_0 ,
    \out_sum_reg[7]_1 ,
    w_data,
    \out_sum[7]_i_27 ,
    \out_sum[7]_i_27_0 ,
    \out_sum[7]_i_27_1 ,
    \out_sum[7]_i_27_2 ,
    \out_sum[7]_i_55 ,
    \out_sum[7]_i_55_0 ,
    \out_sum[7]_i_55_1 ,
    \out_sum[7]_i_55_2 ,
    \out_sum[7]_i_55_3 ,
    \out_sum[7]_i_68 ,
    \out_sum[7]_i_68_0 ,
    \out_sum[7]_i_68_1 ,
    \out_sum[7]_i_68_2 ,
    \out_sum[7]_i_68_3 ,
    \out_sum[7]_i_27_3 ,
    \out_sum[7]_i_27_4 ,
    \out_sum[7]_i_27_5 ,
    \out_sum[7]_i_27_6 ,
    \out_sum[7]_i_27_7 ,
    \out_sum[7]_i_42 ,
    \out_sum[7]_i_42_0 ,
    \out_sum[7]_i_42_1 ,
    \out_sum[7]_i_42_2 ,
    \out_sum[7]_i_42_3 ,
    \out_sum[7]_i_55_4 ,
    \out_sum[7]_i_55_5 ,
    \out_sum[7]_i_55_6 ,
    \out_sum[7]_i_55_7 ,
    \out_sum[7]_i_55_8 ,
    \out_sum[7]_i_68_4 ,
    \out_sum[7]_i_68_5 ,
    \out_sum[7]_i_68_6 ,
    \out_sum[7]_i_68_7 ,
    \out_sum[7]_i_68_8 ,
    \out_sum[7]_i_40 ,
    \out_sum[7]_i_40_0 ,
    \out_sum[7]_i_40_1 ,
    \out_sum[7]_i_40_2 ,
    \out_sum[7]_i_40_3 ,
    \out_sum[7]_i_40_4 ,
    \out_sum[7]_i_40_5 ,
    \out_sum[7]_i_40_6 ,
    \out_sum[7]_i_40_7 ,
    \out_sum[7]_i_40_8 ,
    \out_sum[7]_i_42_4 ,
    \out_sum[7]_i_42_5 ,
    \out_sum[7]_i_42_6 ,
    \out_sum[7]_i_42_7 ,
    \out_sum[7]_i_42_8 ,
    \out_sum[7]_i_60_0 ,
    \out_sum[7]_i_60_1 ,
    \out_sum[7]_i_60_2 ,
    \out_sum[7]_i_60_3 ,
    \out_sum[7]_i_60_4 ,
    \out_sum[7]_i_60_5 ,
    \out_sum[7]_i_60_6 ,
    \out_sum[7]_i_60_7 ,
    \out_sum[7]_i_60_8 ,
    \out_sum[7]_i_60_9 ,
    \out_sum[7]_i_27_8 ,
    \out_sum[7]_i_27_9 ,
    \out_sum[7]_i_27_10 ,
    \out_sum[7]_i_27_11 ,
    \out_sum[7]_i_27_12 ,
    \out_sum[7]_i_61 ,
    \out_sum[7]_i_61_0 ,
    \out_sum[7]_i_61_1 ,
    \out_sum[7]_i_61_2 ,
    \out_sum[7]_i_61_3 ,
    \out_sum[7]_i_61_4 ,
    \out_sum[7]_i_61_5 ,
    \out_sum[7]_i_61_6 ,
    \out_sum[7]_i_61_7 ,
    \out_sum[7]_i_61_8 ,
    \out_sum[7]_i_58 ,
    \out_sum[7]_i_58_0 ,
    \out_sum[7]_i_58_1 ,
    \out_sum[7]_i_58_2 ,
    \out_sum[7]_i_58_3 ,
    \out_sum[7]_i_62 ,
    \out_sum[7]_i_62_0 ,
    \out_sum[7]_i_62_1 ,
    \out_sum[7]_i_62_2 ,
    \out_sum[7]_i_62_3 ,
    \out_sum[7]_i_62_4 ,
    \out_sum[7]_i_62_5 ,
    \out_sum[7]_i_62_6 ,
    \out_sum[7]_i_62_7 ,
    \out_sum[7]_i_62_8 ,
    \out_sum[7]_i_58_4 ,
    \out_sum[7]_i_58_5 ,
    \out_sum[7]_i_58_6 ,
    \out_sum[7]_i_58_7 ,
    \out_sum[7]_i_58_8 ,
    \out_sum[7]_i_63 ,
    \out_sum[7]_i_63_0 ,
    \out_sum[7]_i_63_1 ,
    \out_sum[7]_i_63_2 ,
    \out_sum[7]_i_63_3 ,
    \out_sum[7]_i_63_4 ,
    \out_sum[7]_i_63_5 ,
    \out_sum[7]_i_63_6 ,
    \out_sum[7]_i_63_7 ,
    \out_sum[7]_i_63_8 ,
    \out_sum[7]_i_87 ,
    \out_sum[7]_i_87_0 ,
    \out_sum[7]_i_87_1 ,
    \out_sum[7]_i_87_2 ,
    \out_sum[7]_i_87_3 ,
    \out_sum[7]_i_87_4 ,
    \out_sum[7]_i_87_5 ,
    \out_sum[7]_i_87_6 ,
    \out_sum[7]_i_87_7 ,
    \out_sum[7]_i_87_8 ,
    D,
    enable_IBUF,
    reset_IBUF,
    \out_sum[7]_i_89 ,
    out_mux_sel_u,
    \out_sum[7]_i_89_0 ,
    mem_reg_0_127_0_0__30_i_1_0,
    mem_reg_0_127_0_0__30_i_1_1,
    \out_sum[7]_i_159 ,
    \out_sum[7]_i_159_0 ,
    \out_sum[7]_i_93 ,
    \out_sum[7]_i_93_0 ,
    \out_sum[7]_i_81 ,
    \out_sum[7]_i_81_0 ,
    \out_sum[7]_i_98 ,
    \out_sum[7]_i_98_0 ,
    \out_sum[7]_i_175 ,
    \out_sum[7]_i_175_0 ,
    \out_sum[7]_i_170 ,
    \out_sum[7]_i_170_0 ,
    \out_sum[7]_i_148 ,
    \out_sum[7]_i_148_0 ,
    \out_sum[7]_i_77 ,
    \out_sum[7]_i_77_0 ,
    \out_sum[7]_i_77_1 ,
    \out_sum[7]_i_77_2 ,
    \out_sum[7]_i_143 ,
    \out_sum[7]_i_143_0 ,
    \out_sum[7]_i_154 ,
    \out_sum[7]_i_154_0 ,
    \out_sum[7]_i_185 ,
    \out_sum[7]_i_185_0 ,
    \out_sum[7]_i_220 ,
    \out_sum[7]_i_220_0 ,
    \out_sum[7]_i_225 ,
    \out_sum[7]_i_225_0 ,
    \out_sum[7]_i_119 ,
    \out_sum[7]_i_119_0 ,
    \out_sum[7]_i_108 ,
    \out_sum[7]_i_108_0 ,
    \out_sum[7]_i_236 ,
    \out_sum[7]_i_236_0 ,
    \out_sum[7]_i_115 ,
    \out_sum[7]_i_115_0 ,
    \out_sum[7]_i_241 ,
    \out_sum[7]_i_241_0 ,
    \out_sum[7]_i_211 ,
    \out_sum[7]_i_211_0 ,
    \out_sum[7]_i_256 ,
    \out_sum[7]_i_256_0 ,
    \out_sum[7]_i_123 ,
    \out_sum[7]_i_123_0 ,
    \out_sum[7]_i_251 ,
    \out_sum[7]_i_251_0 ,
    \out_sum[7]_i_206 ,
    \out_sum[7]_i_206_0 ,
    \out_sum[7]_i_271 ,
    \out_sum[7]_i_271_0 ,
    \out_sum[7]_i_266 ,
    \out_sum[7]_i_266_0 ,
    \out_sum[7]_i_278 ,
    \out_sum[7]_i_278_0 ,
    \out_sum[7]_i_281 ,
    \out_sum[7]_i_281_0 ,
    \last_index_count_ones_reg[0] ,
    \last_index_count_ones_reg[0]_0 ,
    DI,
    sum_result,
    \out_sum[7]_i_19 ,
    \out_sum[7]_i_22 ,
    \out_sum[7]_i_22_0 ,
    \out_sum[7]_i_22_1 ,
    \out_sum[7]_i_22_2 ,
    \out_sum[7]_i_22_3 ,
    \out_sum[7]_i_22_4 ,
    \out_sum[7]_i_46 ,
    \out_sum[7]_i_46_0 ,
    we_matrix_data,
    in_data_IBUF,
    \out_sum_reg[7]_2 ,
    \out_sum_reg[7]_3 ,
    out_sum1,
    \out_sum_reg[7]_4 ,
    \out_sum_reg[7]_5 ,
    \out_sum[7]_i_3_0 ,
    \out_sum[7]_i_3_1 ,
    \out_sum[7]_i_3_2 ,
    \out_sum[7]_i_25 ,
    \out_sum[7]_i_25_0 ,
    \out_sum[7]_i_25_1 ,
    \out_sum[7]_i_25_2 ,
    \out_sum[7]_i_25_3 ,
    clk_IBUF_BUFG);
  output \out_sum[7]_i_30_0 ;
  output \out_sum[7]_i_29 ;
  output [22:0]p_30_out;
  output [29:0]out_mux_sel_u_reg;
  output \out_word_index_reg[0]_0 ;
  output [2:0]\out_word_index_reg[2]_0 ;
  output \out_word_index_reg[1]_rep_0 ;
  output [29:0]upper_row_data;
  output \row[0]_i_6_0 ;
  output [4:0]E;
  output \out_word_index_reg[1]_0 ;
  output \out_word_index_reg[1]_1 ;
  output \out_word_index_reg[1]_2 ;
  output \out_word_index_reg[1]_3 ;
  output \out_word_index_reg[1]_4 ;
  output [15:0]\out_sum_reg[15] ;
  output out_mux_sel_u_reg_0;
  output out_mux_sel_u_reg_1;
  output \out_sum[7]_i_60 ;
  output out_mux_sel_u_reg_2;
  output \out_word_index_reg[2]_1 ;
  output \out_word_index_reg[1]_5 ;
  output out_mux_sel_u_reg_3;
  output out_mux_sel_u_reg_4;
  output out_mux_sel_u_reg_5;
  output out_mux_sel_u_reg_6;
  output out_mux_sel_u_reg_7;
  output out_mux_sel_u_reg_8;
  output out_mux_sel_u_reg_9;
  output \out_sum[7]_i_30_1 ;
  output \out_sum[7]_i_56 ;
  output \out_word_index_reg[1]_6 ;
  input [15:0]Q;
  input \out_sum_reg[7] ;
  input \out_sum_reg[7]_0 ;
  input \out_sum_reg[7]_1 ;
  input [1:0]w_data;
  input \out_sum[7]_i_27 ;
  input \out_sum[7]_i_27_0 ;
  input \out_sum[7]_i_27_1 ;
  input \out_sum[7]_i_27_2 ;
  input \out_sum[7]_i_55 ;
  input \out_sum[7]_i_55_0 ;
  input \out_sum[7]_i_55_1 ;
  input \out_sum[7]_i_55_2 ;
  input \out_sum[7]_i_55_3 ;
  input \out_sum[7]_i_68 ;
  input \out_sum[7]_i_68_0 ;
  input \out_sum[7]_i_68_1 ;
  input \out_sum[7]_i_68_2 ;
  input \out_sum[7]_i_68_3 ;
  input \out_sum[7]_i_27_3 ;
  input \out_sum[7]_i_27_4 ;
  input \out_sum[7]_i_27_5 ;
  input \out_sum[7]_i_27_6 ;
  input \out_sum[7]_i_27_7 ;
  input \out_sum[7]_i_42 ;
  input \out_sum[7]_i_42_0 ;
  input \out_sum[7]_i_42_1 ;
  input \out_sum[7]_i_42_2 ;
  input \out_sum[7]_i_42_3 ;
  input \out_sum[7]_i_55_4 ;
  input \out_sum[7]_i_55_5 ;
  input \out_sum[7]_i_55_6 ;
  input \out_sum[7]_i_55_7 ;
  input \out_sum[7]_i_55_8 ;
  input \out_sum[7]_i_68_4 ;
  input \out_sum[7]_i_68_5 ;
  input \out_sum[7]_i_68_6 ;
  input \out_sum[7]_i_68_7 ;
  input \out_sum[7]_i_68_8 ;
  input \out_sum[7]_i_40 ;
  input \out_sum[7]_i_40_0 ;
  input \out_sum[7]_i_40_1 ;
  input \out_sum[7]_i_40_2 ;
  input \out_sum[7]_i_40_3 ;
  input \out_sum[7]_i_40_4 ;
  input \out_sum[7]_i_40_5 ;
  input \out_sum[7]_i_40_6 ;
  input \out_sum[7]_i_40_7 ;
  input \out_sum[7]_i_40_8 ;
  input \out_sum[7]_i_42_4 ;
  input \out_sum[7]_i_42_5 ;
  input \out_sum[7]_i_42_6 ;
  input \out_sum[7]_i_42_7 ;
  input \out_sum[7]_i_42_8 ;
  input \out_sum[7]_i_60_0 ;
  input \out_sum[7]_i_60_1 ;
  input \out_sum[7]_i_60_2 ;
  input \out_sum[7]_i_60_3 ;
  input \out_sum[7]_i_60_4 ;
  input \out_sum[7]_i_60_5 ;
  input \out_sum[7]_i_60_6 ;
  input \out_sum[7]_i_60_7 ;
  input \out_sum[7]_i_60_8 ;
  input \out_sum[7]_i_60_9 ;
  input \out_sum[7]_i_27_8 ;
  input \out_sum[7]_i_27_9 ;
  input \out_sum[7]_i_27_10 ;
  input \out_sum[7]_i_27_11 ;
  input \out_sum[7]_i_27_12 ;
  input \out_sum[7]_i_61 ;
  input \out_sum[7]_i_61_0 ;
  input \out_sum[7]_i_61_1 ;
  input \out_sum[7]_i_61_2 ;
  input \out_sum[7]_i_61_3 ;
  input \out_sum[7]_i_61_4 ;
  input \out_sum[7]_i_61_5 ;
  input \out_sum[7]_i_61_6 ;
  input \out_sum[7]_i_61_7 ;
  input \out_sum[7]_i_61_8 ;
  input \out_sum[7]_i_58 ;
  input \out_sum[7]_i_58_0 ;
  input \out_sum[7]_i_58_1 ;
  input \out_sum[7]_i_58_2 ;
  input \out_sum[7]_i_58_3 ;
  input \out_sum[7]_i_62 ;
  input \out_sum[7]_i_62_0 ;
  input \out_sum[7]_i_62_1 ;
  input \out_sum[7]_i_62_2 ;
  input \out_sum[7]_i_62_3 ;
  input \out_sum[7]_i_62_4 ;
  input \out_sum[7]_i_62_5 ;
  input \out_sum[7]_i_62_6 ;
  input \out_sum[7]_i_62_7 ;
  input \out_sum[7]_i_62_8 ;
  input \out_sum[7]_i_58_4 ;
  input \out_sum[7]_i_58_5 ;
  input \out_sum[7]_i_58_6 ;
  input \out_sum[7]_i_58_7 ;
  input \out_sum[7]_i_58_8 ;
  input \out_sum[7]_i_63 ;
  input \out_sum[7]_i_63_0 ;
  input \out_sum[7]_i_63_1 ;
  input \out_sum[7]_i_63_2 ;
  input \out_sum[7]_i_63_3 ;
  input \out_sum[7]_i_63_4 ;
  input \out_sum[7]_i_63_5 ;
  input \out_sum[7]_i_63_6 ;
  input \out_sum[7]_i_63_7 ;
  input \out_sum[7]_i_63_8 ;
  input \out_sum[7]_i_87 ;
  input \out_sum[7]_i_87_0 ;
  input \out_sum[7]_i_87_1 ;
  input \out_sum[7]_i_87_2 ;
  input \out_sum[7]_i_87_3 ;
  input \out_sum[7]_i_87_4 ;
  input \out_sum[7]_i_87_5 ;
  input \out_sum[7]_i_87_6 ;
  input \out_sum[7]_i_87_7 ;
  input \out_sum[7]_i_87_8 ;
  input [0:0]D;
  input enable_IBUF;
  input reset_IBUF;
  input \out_sum[7]_i_89 ;
  input out_mux_sel_u;
  input \out_sum[7]_i_89_0 ;
  input [29:0]mem_reg_0_127_0_0__30_i_1_0;
  input [29:0]mem_reg_0_127_0_0__30_i_1_1;
  input \out_sum[7]_i_159 ;
  input \out_sum[7]_i_159_0 ;
  input \out_sum[7]_i_93 ;
  input \out_sum[7]_i_93_0 ;
  input \out_sum[7]_i_81 ;
  input \out_sum[7]_i_81_0 ;
  input \out_sum[7]_i_98 ;
  input \out_sum[7]_i_98_0 ;
  input \out_sum[7]_i_175 ;
  input \out_sum[7]_i_175_0 ;
  input \out_sum[7]_i_170 ;
  input \out_sum[7]_i_170_0 ;
  input \out_sum[7]_i_148 ;
  input \out_sum[7]_i_148_0 ;
  input \out_sum[7]_i_77 ;
  input \out_sum[7]_i_77_0 ;
  input \out_sum[7]_i_77_1 ;
  input \out_sum[7]_i_77_2 ;
  input \out_sum[7]_i_143 ;
  input \out_sum[7]_i_143_0 ;
  input \out_sum[7]_i_154 ;
  input \out_sum[7]_i_154_0 ;
  input \out_sum[7]_i_185 ;
  input \out_sum[7]_i_185_0 ;
  input \out_sum[7]_i_220 ;
  input \out_sum[7]_i_220_0 ;
  input \out_sum[7]_i_225 ;
  input \out_sum[7]_i_225_0 ;
  input \out_sum[7]_i_119 ;
  input \out_sum[7]_i_119_0 ;
  input \out_sum[7]_i_108 ;
  input \out_sum[7]_i_108_0 ;
  input \out_sum[7]_i_236 ;
  input \out_sum[7]_i_236_0 ;
  input \out_sum[7]_i_115 ;
  input \out_sum[7]_i_115_0 ;
  input \out_sum[7]_i_241 ;
  input \out_sum[7]_i_241_0 ;
  input \out_sum[7]_i_211 ;
  input \out_sum[7]_i_211_0 ;
  input \out_sum[7]_i_256 ;
  input \out_sum[7]_i_256_0 ;
  input \out_sum[7]_i_123 ;
  input \out_sum[7]_i_123_0 ;
  input \out_sum[7]_i_251 ;
  input \out_sum[7]_i_251_0 ;
  input \out_sum[7]_i_206 ;
  input \out_sum[7]_i_206_0 ;
  input \out_sum[7]_i_271 ;
  input \out_sum[7]_i_271_0 ;
  input \out_sum[7]_i_266 ;
  input \out_sum[7]_i_266_0 ;
  input \out_sum[7]_i_278 ;
  input \out_sum[7]_i_278_0 ;
  input \out_sum[7]_i_281 ;
  input \out_sum[7]_i_281_0 ;
  input \last_index_count_ones_reg[0] ;
  input \last_index_count_ones_reg[0]_0 ;
  input [1:0]DI;
  input [1:0]sum_result;
  input \out_sum[7]_i_19 ;
  input \out_sum[7]_i_22 ;
  input \out_sum[7]_i_22_0 ;
  input \out_sum[7]_i_22_1 ;
  input \out_sum[7]_i_22_2 ;
  input \out_sum[7]_i_22_3 ;
  input \out_sum[7]_i_22_4 ;
  input \out_sum[7]_i_46 ;
  input \out_sum[7]_i_46_0 ;
  input we_matrix_data;
  input [20:0]in_data_IBUF;
  input \out_sum_reg[7]_2 ;
  input \out_sum_reg[7]_3 ;
  input out_sum1;
  input \out_sum_reg[7]_4 ;
  input \out_sum_reg[7]_5 ;
  input \out_sum[7]_i_3_0 ;
  input \out_sum[7]_i_3_1 ;
  input \out_sum[7]_i_3_2 ;
  input \out_sum[7]_i_25 ;
  input \out_sum[7]_i_25_0 ;
  input \out_sum[7]_i_25_1 ;
  input \out_sum[7]_i_25_2 ;
  input \out_sum[7]_i_25_3 ;
  input clk_IBUF_BUFG;

  wire [0:0]D;
  wire [1:0]DI;
  wire [4:0]E;
  wire [15:0]Q;
  wire clk_IBUF_BUFG;
  wire enable_IBUF;
  wire [20:0]in_data_IBUF;
  wire \last_index_count_ones[2]_i_6_n_0 ;
  wire \last_index_count_ones[2]_i_7_n_0 ;
  wire \last_index_count_ones_reg[0] ;
  wire \last_index_count_ones_reg[0]_0 ;
  wire mem_reg_0_127_0_0__10_i_2_n_0;
  wire mem_reg_0_127_0_0__10_i_4_n_0;
  wire mem_reg_0_127_0_0__11_i_2_n_0;
  wire mem_reg_0_127_0_0__11_i_4_n_0;
  wire mem_reg_0_127_0_0__12_i_2_n_0;
  wire mem_reg_0_127_0_0__12_i_4_n_0;
  wire mem_reg_0_127_0_0__13_i_2_n_0;
  wire mem_reg_0_127_0_0__13_i_4_n_0;
  wire mem_reg_0_127_0_0__14_i_2_n_0;
  wire mem_reg_0_127_0_0__14_i_4_n_0;
  wire mem_reg_0_127_0_0__15_i_2_n_0;
  wire mem_reg_0_127_0_0__15_i_4_n_0;
  wire mem_reg_0_127_0_0__16_i_2_n_0;
  wire mem_reg_0_127_0_0__16_i_4_n_0;
  wire mem_reg_0_127_0_0__17_i_2_n_0;
  wire mem_reg_0_127_0_0__17_i_4_n_0;
  wire mem_reg_0_127_0_0__18_i_2_n_0;
  wire mem_reg_0_127_0_0__18_i_4_n_0;
  wire mem_reg_0_127_0_0__19_i_2_n_0;
  wire mem_reg_0_127_0_0__19_i_4_n_0;
  wire mem_reg_0_127_0_0__1_i_2_n_0;
  wire mem_reg_0_127_0_0__1_i_4_n_0;
  wire mem_reg_0_127_0_0__20_i_2_n_0;
  wire mem_reg_0_127_0_0__20_i_4_n_0;
  wire mem_reg_0_127_0_0__21_i_2_n_0;
  wire mem_reg_0_127_0_0__21_i_4_n_0;
  wire mem_reg_0_127_0_0__22_i_2_n_0;
  wire mem_reg_0_127_0_0__22_i_4_n_0;
  wire mem_reg_0_127_0_0__23_i_2_n_0;
  wire mem_reg_0_127_0_0__23_i_4_n_0;
  wire mem_reg_0_127_0_0__24_i_2_n_0;
  wire mem_reg_0_127_0_0__24_i_4_n_0;
  wire mem_reg_0_127_0_0__25_i_2_n_0;
  wire mem_reg_0_127_0_0__25_i_4_n_0;
  wire mem_reg_0_127_0_0__26_i_2_n_0;
  wire mem_reg_0_127_0_0__26_i_4_n_0;
  wire mem_reg_0_127_0_0__27_i_2_n_0;
  wire mem_reg_0_127_0_0__27_i_4_n_0;
  wire mem_reg_0_127_0_0__28_i_2_n_0;
  wire mem_reg_0_127_0_0__28_i_4_n_0;
  wire mem_reg_0_127_0_0__29_i_2_n_0;
  wire mem_reg_0_127_0_0__29_i_4_n_0;
  wire mem_reg_0_127_0_0__2_i_2_n_0;
  wire mem_reg_0_127_0_0__2_i_4_n_0;
  wire [29:0]mem_reg_0_127_0_0__30_i_1_0;
  wire [29:0]mem_reg_0_127_0_0__30_i_1_1;
  wire mem_reg_0_127_0_0__30_i_2_n_0;
  wire mem_reg_0_127_0_0__30_i_4_n_0;
  wire mem_reg_0_127_0_0__3_i_2_n_0;
  wire mem_reg_0_127_0_0__3_i_4_n_0;
  wire mem_reg_0_127_0_0__4_i_2_n_0;
  wire mem_reg_0_127_0_0__4_i_4_n_0;
  wire mem_reg_0_127_0_0__5_i_2_n_0;
  wire mem_reg_0_127_0_0__5_i_4_n_0;
  wire mem_reg_0_127_0_0__6_i_2_n_0;
  wire mem_reg_0_127_0_0__6_i_4_n_0;
  wire mem_reg_0_127_0_0__7_i_2_n_0;
  wire mem_reg_0_127_0_0__7_i_4_n_0;
  wire mem_reg_0_127_0_0__8_i_2_n_0;
  wire mem_reg_0_127_0_0__8_i_4_n_0;
  wire mem_reg_0_127_0_0__9_i_2_n_0;
  wire mem_reg_0_127_0_0__9_i_4_n_0;
  wire out_mux_sel_u;
  wire [29:0]out_mux_sel_u_reg;
  wire out_mux_sel_u_reg_0;
  wire out_mux_sel_u_reg_1;
  wire out_mux_sel_u_reg_2;
  wire out_mux_sel_u_reg_3;
  wire out_mux_sel_u_reg_4;
  wire out_mux_sel_u_reg_5;
  wire out_mux_sel_u_reg_6;
  wire out_mux_sel_u_reg_7;
  wire out_mux_sel_u_reg_8;
  wire out_mux_sel_u_reg_9;
  wire out_sum1;
  wire \out_sum[7]_i_108 ;
  wire \out_sum[7]_i_108_0 ;
  wire \out_sum[7]_i_10_n_0 ;
  wire \out_sum[7]_i_115 ;
  wire \out_sum[7]_i_115_0 ;
  wire \out_sum[7]_i_119 ;
  wire \out_sum[7]_i_119_0 ;
  wire \out_sum[7]_i_11_n_0 ;
  wire \out_sum[7]_i_123 ;
  wire \out_sum[7]_i_123_0 ;
  wire \out_sum[7]_i_12_n_0 ;
  wire \out_sum[7]_i_143 ;
  wire \out_sum[7]_i_143_0 ;
  wire \out_sum[7]_i_148 ;
  wire \out_sum[7]_i_148_0 ;
  wire \out_sum[7]_i_154 ;
  wire \out_sum[7]_i_154_0 ;
  wire \out_sum[7]_i_159 ;
  wire \out_sum[7]_i_159_0 ;
  wire \out_sum[7]_i_170 ;
  wire \out_sum[7]_i_170_0 ;
  wire \out_sum[7]_i_175 ;
  wire \out_sum[7]_i_175_0 ;
  wire \out_sum[7]_i_185 ;
  wire \out_sum[7]_i_185_0 ;
  wire \out_sum[7]_i_18_n_0 ;
  wire \out_sum[7]_i_19 ;
  wire \out_sum[7]_i_206 ;
  wire \out_sum[7]_i_206_0 ;
  wire \out_sum[7]_i_211 ;
  wire \out_sum[7]_i_211_0 ;
  wire \out_sum[7]_i_22 ;
  wire \out_sum[7]_i_220 ;
  wire \out_sum[7]_i_220_0 ;
  wire \out_sum[7]_i_225 ;
  wire \out_sum[7]_i_225_0 ;
  wire \out_sum[7]_i_22_0 ;
  wire \out_sum[7]_i_22_1 ;
  wire \out_sum[7]_i_22_2 ;
  wire \out_sum[7]_i_22_3 ;
  wire \out_sum[7]_i_22_4 ;
  wire \out_sum[7]_i_236 ;
  wire \out_sum[7]_i_236_0 ;
  wire \out_sum[7]_i_241 ;
  wire \out_sum[7]_i_241_0 ;
  wire \out_sum[7]_i_25 ;
  wire \out_sum[7]_i_251 ;
  wire \out_sum[7]_i_251_0 ;
  wire \out_sum[7]_i_256 ;
  wire \out_sum[7]_i_256_0 ;
  wire \out_sum[7]_i_25_0 ;
  wire \out_sum[7]_i_25_1 ;
  wire \out_sum[7]_i_25_2 ;
  wire \out_sum[7]_i_25_3 ;
  wire \out_sum[7]_i_266 ;
  wire \out_sum[7]_i_266_0 ;
  wire \out_sum[7]_i_27 ;
  wire \out_sum[7]_i_271 ;
  wire \out_sum[7]_i_271_0 ;
  wire \out_sum[7]_i_278 ;
  wire \out_sum[7]_i_278_0 ;
  wire \out_sum[7]_i_27_0 ;
  wire \out_sum[7]_i_27_1 ;
  wire \out_sum[7]_i_27_10 ;
  wire \out_sum[7]_i_27_11 ;
  wire \out_sum[7]_i_27_12 ;
  wire \out_sum[7]_i_27_2 ;
  wire \out_sum[7]_i_27_3 ;
  wire \out_sum[7]_i_27_4 ;
  wire \out_sum[7]_i_27_5 ;
  wire \out_sum[7]_i_27_6 ;
  wire \out_sum[7]_i_27_7 ;
  wire \out_sum[7]_i_27_8 ;
  wire \out_sum[7]_i_27_9 ;
  wire \out_sum[7]_i_281 ;
  wire \out_sum[7]_i_281_0 ;
  wire \out_sum[7]_i_29 ;
  wire \out_sum[7]_i_2_n_0 ;
  wire \out_sum[7]_i_30_0 ;
  wire \out_sum[7]_i_30_1 ;
  wire \out_sum[7]_i_30_n_0 ;
  wire \out_sum[7]_i_3_0 ;
  wire \out_sum[7]_i_3_1 ;
  wire \out_sum[7]_i_3_2 ;
  wire \out_sum[7]_i_3_n_0 ;
  wire \out_sum[7]_i_40 ;
  wire \out_sum[7]_i_40_0 ;
  wire \out_sum[7]_i_40_1 ;
  wire \out_sum[7]_i_40_2 ;
  wire \out_sum[7]_i_40_3 ;
  wire \out_sum[7]_i_40_4 ;
  wire \out_sum[7]_i_40_5 ;
  wire \out_sum[7]_i_40_6 ;
  wire \out_sum[7]_i_40_7 ;
  wire \out_sum[7]_i_40_8 ;
  wire \out_sum[7]_i_42 ;
  wire \out_sum[7]_i_42_0 ;
  wire \out_sum[7]_i_42_1 ;
  wire \out_sum[7]_i_42_2 ;
  wire \out_sum[7]_i_42_3 ;
  wire \out_sum[7]_i_42_4 ;
  wire \out_sum[7]_i_42_5 ;
  wire \out_sum[7]_i_42_6 ;
  wire \out_sum[7]_i_42_7 ;
  wire \out_sum[7]_i_42_8 ;
  wire \out_sum[7]_i_46 ;
  wire \out_sum[7]_i_46_0 ;
  wire \out_sum[7]_i_4_n_0 ;
  wire \out_sum[7]_i_55 ;
  wire \out_sum[7]_i_55_0 ;
  wire \out_sum[7]_i_55_1 ;
  wire \out_sum[7]_i_55_2 ;
  wire \out_sum[7]_i_55_3 ;
  wire \out_sum[7]_i_55_4 ;
  wire \out_sum[7]_i_55_5 ;
  wire \out_sum[7]_i_55_6 ;
  wire \out_sum[7]_i_55_7 ;
  wire \out_sum[7]_i_55_8 ;
  wire \out_sum[7]_i_56 ;
  wire \out_sum[7]_i_58 ;
  wire \out_sum[7]_i_58_0 ;
  wire \out_sum[7]_i_58_1 ;
  wire \out_sum[7]_i_58_2 ;
  wire \out_sum[7]_i_58_3 ;
  wire \out_sum[7]_i_58_4 ;
  wire \out_sum[7]_i_58_5 ;
  wire \out_sum[7]_i_58_6 ;
  wire \out_sum[7]_i_58_7 ;
  wire \out_sum[7]_i_58_8 ;
  wire \out_sum[7]_i_60 ;
  wire \out_sum[7]_i_60_0 ;
  wire \out_sum[7]_i_60_1 ;
  wire \out_sum[7]_i_60_2 ;
  wire \out_sum[7]_i_60_3 ;
  wire \out_sum[7]_i_60_4 ;
  wire \out_sum[7]_i_60_5 ;
  wire \out_sum[7]_i_60_6 ;
  wire \out_sum[7]_i_60_7 ;
  wire \out_sum[7]_i_60_8 ;
  wire \out_sum[7]_i_60_9 ;
  wire \out_sum[7]_i_61 ;
  wire \out_sum[7]_i_61_0 ;
  wire \out_sum[7]_i_61_1 ;
  wire \out_sum[7]_i_61_2 ;
  wire \out_sum[7]_i_61_3 ;
  wire \out_sum[7]_i_61_4 ;
  wire \out_sum[7]_i_61_5 ;
  wire \out_sum[7]_i_61_6 ;
  wire \out_sum[7]_i_61_7 ;
  wire \out_sum[7]_i_61_8 ;
  wire \out_sum[7]_i_62 ;
  wire \out_sum[7]_i_62_0 ;
  wire \out_sum[7]_i_62_1 ;
  wire \out_sum[7]_i_62_2 ;
  wire \out_sum[7]_i_62_3 ;
  wire \out_sum[7]_i_62_4 ;
  wire \out_sum[7]_i_62_5 ;
  wire \out_sum[7]_i_62_6 ;
  wire \out_sum[7]_i_62_7 ;
  wire \out_sum[7]_i_62_8 ;
  wire \out_sum[7]_i_63 ;
  wire \out_sum[7]_i_63_0 ;
  wire \out_sum[7]_i_63_1 ;
  wire \out_sum[7]_i_63_2 ;
  wire \out_sum[7]_i_63_3 ;
  wire \out_sum[7]_i_63_4 ;
  wire \out_sum[7]_i_63_5 ;
  wire \out_sum[7]_i_63_6 ;
  wire \out_sum[7]_i_63_7 ;
  wire \out_sum[7]_i_63_8 ;
  wire \out_sum[7]_i_68 ;
  wire \out_sum[7]_i_68_0 ;
  wire \out_sum[7]_i_68_1 ;
  wire \out_sum[7]_i_68_2 ;
  wire \out_sum[7]_i_68_3 ;
  wire \out_sum[7]_i_68_4 ;
  wire \out_sum[7]_i_68_5 ;
  wire \out_sum[7]_i_68_6 ;
  wire \out_sum[7]_i_68_7 ;
  wire \out_sum[7]_i_68_8 ;
  wire \out_sum[7]_i_77 ;
  wire \out_sum[7]_i_77_0 ;
  wire \out_sum[7]_i_77_1 ;
  wire \out_sum[7]_i_77_2 ;
  wire \out_sum[7]_i_7_n_0 ;
  wire \out_sum[7]_i_81 ;
  wire \out_sum[7]_i_81_0 ;
  wire \out_sum[7]_i_87 ;
  wire \out_sum[7]_i_87_0 ;
  wire \out_sum[7]_i_87_1 ;
  wire \out_sum[7]_i_87_2 ;
  wire \out_sum[7]_i_87_3 ;
  wire \out_sum[7]_i_87_4 ;
  wire \out_sum[7]_i_87_5 ;
  wire \out_sum[7]_i_87_6 ;
  wire \out_sum[7]_i_87_7 ;
  wire \out_sum[7]_i_87_8 ;
  wire \out_sum[7]_i_89 ;
  wire \out_sum[7]_i_89_0 ;
  wire \out_sum[7]_i_8_n_0 ;
  wire \out_sum[7]_i_93 ;
  wire \out_sum[7]_i_93_0 ;
  wire \out_sum[7]_i_98 ;
  wire \out_sum[7]_i_98_0 ;
  wire \out_sum[7]_i_9_n_0 ;
  wire [15:0]\out_sum_reg[15] ;
  wire \out_sum_reg[15]_i_1_n_1 ;
  wire \out_sum_reg[15]_i_1_n_2 ;
  wire \out_sum_reg[15]_i_1_n_3 ;
  wire \out_sum_reg[15]_i_1_n_4 ;
  wire \out_sum_reg[15]_i_1_n_5 ;
  wire \out_sum_reg[15]_i_1_n_6 ;
  wire \out_sum_reg[15]_i_1_n_7 ;
  wire \out_sum_reg[7] ;
  wire \out_sum_reg[7]_0 ;
  wire \out_sum_reg[7]_1 ;
  wire \out_sum_reg[7]_2 ;
  wire \out_sum_reg[7]_3 ;
  wire \out_sum_reg[7]_4 ;
  wire \out_sum_reg[7]_5 ;
  wire \out_sum_reg[7]_i_1_n_0 ;
  wire \out_sum_reg[7]_i_1_n_1 ;
  wire \out_sum_reg[7]_i_1_n_2 ;
  wire \out_sum_reg[7]_i_1_n_3 ;
  wire \out_sum_reg[7]_i_1_n_4 ;
  wire \out_sum_reg[7]_i_1_n_5 ;
  wire \out_sum_reg[7]_i_1_n_6 ;
  wire \out_sum_reg[7]_i_1_n_7 ;
  wire \out_word_index[1]_rep_i_1_n_0 ;
  wire \out_word_index[2]_i_1_n_0 ;
  wire \out_word_index[2]_i_2_n_0 ;
  wire \out_word_index_reg[0]_0 ;
  wire \out_word_index_reg[1]_0 ;
  wire \out_word_index_reg[1]_1 ;
  wire \out_word_index_reg[1]_2 ;
  wire \out_word_index_reg[1]_3 ;
  wire \out_word_index_reg[1]_4 ;
  wire \out_word_index_reg[1]_5 ;
  wire \out_word_index_reg[1]_6 ;
  wire \out_word_index_reg[1]_rep_0 ;
  wire [2:0]\out_word_index_reg[2]_0 ;
  wire \out_word_index_reg[2]_1 ;
  wire [2:0]p_2_in;
  wire [22:0]p_30_out;
  wire reset_IBUF;
  wire [31:5]row1;
  wire [25:2]row5;
  wire \row[0]_i_10_n_0 ;
  wire \row[0]_i_11_n_0 ;
  wire \row[0]_i_12_n_0 ;
  wire \row[0]_i_13_n_0 ;
  wire \row[0]_i_14_n_0 ;
  wire \row[0]_i_15_n_0 ;
  wire \row[0]_i_16_n_0 ;
  wire \row[0]_i_17_n_0 ;
  wire \row[0]_i_18_n_0 ;
  wire \row[0]_i_19_n_0 ;
  wire \row[0]_i_20_n_0 ;
  wire \row[0]_i_21_n_0 ;
  wire \row[0]_i_22_n_0 ;
  wire \row[0]_i_23_n_0 ;
  wire \row[0]_i_24_n_0 ;
  wire \row[0]_i_25_n_0 ;
  wire \row[0]_i_26_n_0 ;
  wire \row[0]_i_27_n_0 ;
  wire \row[0]_i_28_n_0 ;
  wire \row[0]_i_29_n_0 ;
  wire \row[0]_i_30_n_0 ;
  wire \row[0]_i_31_n_0 ;
  wire \row[0]_i_32_n_0 ;
  wire \row[0]_i_33_n_0 ;
  wire \row[0]_i_34_n_0 ;
  wire \row[0]_i_35_n_0 ;
  wire \row[0]_i_36_n_0 ;
  wire \row[0]_i_37_n_0 ;
  wire \row[0]_i_38_n_0 ;
  wire \row[0]_i_39_n_0 ;
  wire \row[0]_i_3_n_0 ;
  wire \row[0]_i_40_n_0 ;
  wire \row[0]_i_41_n_0 ;
  wire \row[0]_i_42_n_0 ;
  wire \row[0]_i_6_0 ;
  wire \row[0]_i_6_n_0 ;
  wire \row[0]_i_7_n_0 ;
  wire \row[0]_i_8_n_0 ;
  wire \row[0]_i_9_n_0 ;
  wire \row[159]_i_11_n_0 ;
  wire \row[159]_i_12_n_0 ;
  wire \row[159]_i_13_n_0 ;
  wire \row[159]_i_14_n_0 ;
  wire \row[159]_i_15_n_0 ;
  wire \row[159]_i_16_n_0 ;
  wire \row[159]_i_17_n_0 ;
  wire \row[159]_i_18_n_0 ;
  wire \row[159]_i_19_n_0 ;
  wire \row[159]_i_21_n_0 ;
  wire \row[159]_i_22_n_0 ;
  wire \row[159]_i_23_n_0 ;
  wire \row[159]_i_24_n_0 ;
  wire \row[159]_i_25_n_0 ;
  wire \row[159]_i_26_n_0 ;
  wire \row[159]_i_27_n_0 ;
  wire \row[159]_i_28_n_0 ;
  wire \row[159]_i_29_n_0 ;
  wire \row[159]_i_4_n_0 ;
  wire \row[159]_i_6_n_0 ;
  wire \row[159]_i_7_n_0 ;
  wire \row[159]_i_8_n_0 ;
  wire \row[159]_i_9_n_0 ;
  wire \row_reg[0]_i_4_n_0 ;
  wire \row_reg[0]_i_4_n_1 ;
  wire \row_reg[0]_i_4_n_2 ;
  wire \row_reg[0]_i_4_n_3 ;
  wire \row_reg[0]_i_4_n_4 ;
  wire \row_reg[0]_i_4_n_5 ;
  wire \row_reg[0]_i_4_n_6 ;
  wire \row_reg[0]_i_4_n_7 ;
  wire \row_reg[0]_i_5_n_0 ;
  wire \row_reg[0]_i_5_n_1 ;
  wire \row_reg[0]_i_5_n_2 ;
  wire \row_reg[0]_i_5_n_3 ;
  wire \row_reg[0]_i_5_n_4 ;
  wire \row_reg[0]_i_5_n_5 ;
  wire \row_reg[0]_i_5_n_6 ;
  wire \row_reg[0]_i_5_n_7 ;
  wire \row_reg[159]_i_3_n_0 ;
  wire \row_reg[159]_i_3_n_1 ;
  wire \row_reg[159]_i_3_n_2 ;
  wire \row_reg[159]_i_3_n_3 ;
  wire \row_reg[159]_i_3_n_4 ;
  wire \row_reg[159]_i_3_n_5 ;
  wire \row_reg[159]_i_3_n_6 ;
  wire \row_reg[159]_i_3_n_7 ;
  wire \row_reg[159]_i_5_n_5 ;
  wire \row_reg[159]_i_5_n_6 ;
  wire \row_reg[159]_i_5_n_7 ;
  wire [1:0]sum_result;
  wire [29:0]upper_row_data;
  wire [1:0]w_data;
  wire we_matrix_data;
  wire [7:7]\NLW_out_sum_reg[15]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_row_reg[159]_i_3_O_UNCONNECTED ;
  wire [7:3]\NLW_row_reg[159]_i_5_CO_UNCONNECTED ;
  wire [7:4]\NLW_row_reg[159]_i_5_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \last_index_count_ones[2]_i_4 
       (.I0(\last_index_count_ones[2]_i_6_n_0 ),
        .I1(out_mux_sel_u),
        .I2(\last_index_count_ones[2]_i_7_n_0 ),
        .O(upper_row_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \last_index_count_ones[2]_i_6 
       (.I0(\out_word_index_reg[2]_0 [0]),
        .I1(\out_word_index_reg[1]_rep_0 ),
        .I2(mem_reg_0_127_0_0__30_i_1_1[0]),
        .I3(\out_word_index_reg[2]_0 [2]),
        .I4(\last_index_count_ones_reg[0]_0 ),
        .O(\last_index_count_ones[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \last_index_count_ones[2]_i_7 
       (.I0(\out_word_index_reg[2]_0 [0]),
        .I1(\out_word_index_reg[1]_rep_0 ),
        .I2(mem_reg_0_127_0_0__30_i_1_0[0]),
        .I3(\out_word_index_reg[2]_0 [2]),
        .I4(\last_index_count_ones_reg[0] ),
        .O(\last_index_count_ones[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__10_i_1
       (.I0(mem_reg_0_127_0_0__10_i_2_n_0),
        .I1(\out_sum[7]_i_211 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__10_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_211_0 ),
        .O(out_mux_sel_u_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__10_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[9]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__10_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__10_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[9]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__10_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__11_i_1
       (.I0(mem_reg_0_127_0_0__11_i_2_n_0),
        .I1(\out_sum[7]_i_241 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__11_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_241_0 ),
        .O(out_mux_sel_u_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__11_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[10]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__11_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__11_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[10]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__11_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__12_i_1
       (.I0(mem_reg_0_127_0_0__12_i_2_n_0),
        .I1(\out_sum[7]_i_115 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__12_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_115_0 ),
        .O(out_mux_sel_u_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__12_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[11]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__12_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__12_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[11]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__12_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__13_i_1
       (.I0(mem_reg_0_127_0_0__13_i_2_n_0),
        .I1(\out_sum[7]_i_236 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__13_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_236_0 ),
        .O(out_mux_sel_u_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__13_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[12]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__13_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__13_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[12]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__13_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__14_i_1
       (.I0(mem_reg_0_127_0_0__14_i_2_n_0),
        .I1(\out_sum[7]_i_108 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__14_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_108_0 ),
        .O(out_mux_sel_u_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__14_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[13]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__14_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__14_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[13]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__14_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__15_i_1
       (.I0(mem_reg_0_127_0_0__15_i_2_n_0),
        .I1(\out_sum[7]_i_119 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__15_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_119_0 ),
        .O(out_mux_sel_u_reg[14]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__15_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[14]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__15_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__15_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[14]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__15_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__16_i_1
       (.I0(mem_reg_0_127_0_0__16_i_2_n_0),
        .I1(\out_sum[7]_i_225 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__16_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_225_0 ),
        .O(out_mux_sel_u_reg[15]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__16_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[15]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__16_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__16_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[15]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__16_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__17_i_1
       (.I0(mem_reg_0_127_0_0__17_i_2_n_0),
        .I1(\out_sum[7]_i_220 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__17_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_220_0 ),
        .O(out_mux_sel_u_reg[16]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__17_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[16]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__17_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__17_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[16]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__17_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__18_i_1
       (.I0(mem_reg_0_127_0_0__18_i_2_n_0),
        .I1(\out_sum[7]_i_185 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__18_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_185_0 ),
        .O(out_mux_sel_u_reg[17]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__18_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[17]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__18_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__18_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[17]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__18_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__19_i_1
       (.I0(mem_reg_0_127_0_0__19_i_2_n_0),
        .I1(\out_sum[7]_i_154 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__19_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_154_0 ),
        .O(out_mux_sel_u_reg[18]));
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__19_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[18]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__19_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__19_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[18]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__19_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__1_i_1
       (.I0(mem_reg_0_127_0_0__1_i_2_n_0),
        .I1(\last_index_count_ones_reg[0] ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__1_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\last_index_count_ones_reg[0]_0 ),
        .O(out_mux_sel_u_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__1_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[0]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__1_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[0]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__20_i_1
       (.I0(mem_reg_0_127_0_0__20_i_2_n_0),
        .I1(\out_sum[7]_i_143 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__20_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_143_0 ),
        .O(out_mux_sel_u_reg[19]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__20_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[19]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__20_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__20_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[19]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__20_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__21_i_1
       (.I0(mem_reg_0_127_0_0__21_i_2_n_0),
        .I1(\out_sum[7]_i_77_1 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__21_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_77_2 ),
        .O(out_mux_sel_u_reg[20]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__21_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[20]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__21_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__21_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[20]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__21_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__22_i_1
       (.I0(mem_reg_0_127_0_0__22_i_2_n_0),
        .I1(\out_sum[7]_i_77 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__22_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_77_0 ),
        .O(out_mux_sel_u_reg[21]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__22_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[21]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__22_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__22_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[21]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__22_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__23_i_1
       (.I0(mem_reg_0_127_0_0__23_i_2_n_0),
        .I1(\out_sum[7]_i_148 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__23_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_148_0 ),
        .O(out_mux_sel_u_reg[22]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__23_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[22]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__23_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__23_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[22]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__23_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__24_i_1
       (.I0(mem_reg_0_127_0_0__24_i_2_n_0),
        .I1(\out_sum[7]_i_170 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__24_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_170_0 ),
        .O(out_mux_sel_u_reg[23]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__24_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[23]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__24_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__24_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[23]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__24_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__25_i_1
       (.I0(mem_reg_0_127_0_0__25_i_2_n_0),
        .I1(\out_sum[7]_i_175 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__25_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_175_0 ),
        .O(out_mux_sel_u_reg[24]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__25_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[24]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__25_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__25_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[24]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__25_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__26_i_1
       (.I0(mem_reg_0_127_0_0__26_i_2_n_0),
        .I1(\out_sum[7]_i_98 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__26_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_98_0 ),
        .O(out_mux_sel_u_reg[25]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__26_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[25]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__26_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__26_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[25]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__26_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__27_i_1
       (.I0(mem_reg_0_127_0_0__27_i_2_n_0),
        .I1(\out_sum[7]_i_81 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__27_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_81_0 ),
        .O(out_mux_sel_u_reg[26]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__27_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[26]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__27_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__27_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[26]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__27_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__28_i_1
       (.I0(mem_reg_0_127_0_0__28_i_2_n_0),
        .I1(\out_sum[7]_i_93 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__28_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_93_0 ),
        .O(out_mux_sel_u_reg[27]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__28_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[27]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__28_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__28_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[27]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__28_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__29_i_1
       (.I0(mem_reg_0_127_0_0__29_i_2_n_0),
        .I1(\out_sum[7]_i_159 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__29_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_159_0 ),
        .O(out_mux_sel_u_reg[28]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__29_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[28]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__29_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__29_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[28]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__29_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__2_i_1
       (.I0(mem_reg_0_127_0_0__2_i_2_n_0),
        .I1(\out_sum[7]_i_281 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__2_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_281_0 ),
        .O(out_mux_sel_u_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__2_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__2_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__30_i_1
       (.I0(mem_reg_0_127_0_0__30_i_2_n_0),
        .I1(\out_sum[7]_i_89 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__30_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_89_0 ),
        .O(out_mux_sel_u_reg[29]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__30_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[29]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__30_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__30_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[29]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [1]),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__30_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__3_i_1
       (.I0(mem_reg_0_127_0_0__3_i_2_n_0),
        .I1(\out_sum[7]_i_278 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__3_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_278_0 ),
        .O(out_mux_sel_u_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__3_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[2]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__3_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__3_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[2]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__3_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__4_i_1
       (.I0(mem_reg_0_127_0_0__4_i_2_n_0),
        .I1(\out_sum[7]_i_266 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__4_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_266_0 ),
        .O(out_mux_sel_u_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__4_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[3]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__4_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__4_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[3]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__4_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__5_i_1
       (.I0(mem_reg_0_127_0_0__5_i_2_n_0),
        .I1(\out_sum[7]_i_271 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__5_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_271_0 ),
        .O(out_mux_sel_u_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__5_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[4]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__5_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__5_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[4]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__5_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__6_i_1
       (.I0(mem_reg_0_127_0_0__6_i_2_n_0),
        .I1(\out_sum[7]_i_206 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__6_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_206_0 ),
        .O(out_mux_sel_u_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__6_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[5]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__6_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__6_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[5]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__6_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__7_i_1
       (.I0(mem_reg_0_127_0_0__7_i_2_n_0),
        .I1(\out_sum[7]_i_251 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__7_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_251_0 ),
        .O(out_mux_sel_u_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__7_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[6]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__7_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__7_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[6]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__7_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__8_i_1
       (.I0(mem_reg_0_127_0_0__8_i_2_n_0),
        .I1(\out_sum[7]_i_123 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__8_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_123_0 ),
        .O(out_mux_sel_u_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__8_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[7]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__8_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__8_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[7]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__8_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    mem_reg_0_127_0_0__9_i_1
       (.I0(mem_reg_0_127_0_0__9_i_2_n_0),
        .I1(\out_sum[7]_i_256 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__9_i_4_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_256_0 ),
        .O(out_mux_sel_u_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__9_i_2
       (.I0(mem_reg_0_127_0_0__30_i_1_0[8]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__9_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_reg_0_127_0_0__9_i_4
       (.I0(mem_reg_0_127_0_0__30_i_1_1[8]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[1]_rep_0 ),
        .I3(\out_word_index_reg[2]_0 [0]),
        .O(mem_reg_0_127_0_0__9_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    out_mux_sel_u_i_1
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [0]),
        .I2(\out_word_index_reg[2]_0 [2]),
        .I3(enable_IBUF),
        .I4(out_mux_sel_u),
        .O(\out_word_index_reg[1]_5 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_10 
       (.I0(\out_sum_reg[7]_0 ),
        .I1(\out_sum_reg[7]_1 ),
        .I2(\out_sum[7]_i_18_n_0 ),
        .I3(\out_sum[7]_i_4_n_0 ),
        .I4(Q[2]),
        .O(\out_sum[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1EE1E11EE11E1EE1)) 
    \out_sum[7]_i_11 
       (.I0(\out_sum_reg[7]_2 ),
        .I1(\out_sum_reg[7]_3 ),
        .I2(\out_sum_reg[7]_4 ),
        .I3(\out_sum_reg[7]_5 ),
        .I4(DI[1]),
        .I5(Q[1]),
        .O(\out_sum[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \out_sum[7]_i_114 
       (.I0(out_mux_sel_u_reg[13]),
        .I1(in_data_IBUF[8]),
        .I2(out_mux_sel_u_reg[11]),
        .I3(in_data_IBUF[7]),
        .I4(upper_row_data[13]),
        .I5(in_data_IBUF[9]),
        .O(out_mux_sel_u_reg_6));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_116 
       (.I0(out_mux_sel_u_reg[6]),
        .I1(\out_sum[7]_i_58_4 ),
        .I2(\out_sum[7]_i_58_5 ),
        .I3(\out_sum[7]_i_58_6 ),
        .I4(\out_sum[7]_i_58_7 ),
        .I5(\out_sum[7]_i_58_8 ),
        .O(p_30_out[4]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_117 
       (.I0(out_mux_sel_u_reg[10]),
        .I1(\out_sum[7]_i_58 ),
        .I2(\out_sum[7]_i_58_0 ),
        .I3(\out_sum[7]_i_58_1 ),
        .I4(\out_sum[7]_i_58_2 ),
        .I5(\out_sum[7]_i_58_3 ),
        .O(p_30_out[7]));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \out_sum[7]_i_118 
       (.I0(out_mux_sel_u_reg[16]),
        .I1(in_data_IBUF[11]),
        .I2(out_mux_sel_u_reg[14]),
        .I3(in_data_IBUF[10]),
        .I4(upper_row_data[16]),
        .I5(in_data_IBUF[12]),
        .O(out_mux_sel_u_reg_5));
  LUT5 #(
    .INIT(32'h96696996)) 
    \out_sum[7]_i_12 
       (.I0(\out_sum_reg[7]_2 ),
        .I1(\out_sum_reg[7]_3 ),
        .I2(Q[0]),
        .I3(\out_word_index_reg[0]_0 ),
        .I4(out_sum1),
        .O(\out_sum[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_120 
       (.I0(out_mux_sel_u_reg[17]),
        .I1(\out_sum[7]_i_60_0 ),
        .I2(\out_sum[7]_i_60_1 ),
        .I3(\out_sum[7]_i_60_2 ),
        .I4(\out_sum[7]_i_60_3 ),
        .I5(\out_sum[7]_i_60_4 ),
        .O(p_30_out[12]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_121 
       (.I0(out_mux_sel_u_reg[16]),
        .I1(\out_sum[7]_i_60_5 ),
        .I2(\out_sum[7]_i_60_6 ),
        .I3(\out_sum[7]_i_60_7 ),
        .I4(\out_sum[7]_i_60_8 ),
        .I5(\out_sum[7]_i_60_9 ),
        .O(p_30_out[11]));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \out_sum[7]_i_122 
       (.I0(out_mux_sel_u_reg[9]),
        .I1(in_data_IBUF[5]),
        .I2(out_mux_sel_u_reg[7]),
        .I3(in_data_IBUF[4]),
        .I4(upper_row_data[9]),
        .I5(in_data_IBUF[6]),
        .O(out_mux_sel_u_reg_7));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_124 
       (.I0(out_mux_sel_u_reg[13]),
        .I1(\out_sum[7]_i_61 ),
        .I2(\out_sum[7]_i_61_0 ),
        .I3(\out_sum[7]_i_61_1 ),
        .I4(\out_sum[7]_i_61_2 ),
        .I5(\out_sum[7]_i_61_3 ),
        .O(p_30_out[9]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_125 
       (.I0(out_mux_sel_u_reg[11]),
        .I1(\out_sum[7]_i_61_4 ),
        .I2(\out_sum[7]_i_61_5 ),
        .I3(\out_sum[7]_i_61_6 ),
        .I4(\out_sum[7]_i_61_7 ),
        .I5(\out_sum[7]_i_61_8 ),
        .O(p_30_out[8]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_128 
       (.I0(out_mux_sel_u_reg[7]),
        .I1(\out_sum[7]_i_62_4 ),
        .I2(\out_sum[7]_i_62_5 ),
        .I3(\out_sum[7]_i_62_6 ),
        .I4(\out_sum[7]_i_62_7 ),
        .I5(\out_sum[7]_i_62_8 ),
        .O(p_30_out[5]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_129 
       (.I0(out_mux_sel_u_reg[9]),
        .I1(\out_sum[7]_i_62 ),
        .I2(\out_sum[7]_i_62_0 ),
        .I3(\out_sum[7]_i_62_1 ),
        .I4(\out_sum[7]_i_62_2 ),
        .I5(\out_sum[7]_i_62_3 ),
        .O(p_30_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \out_sum[7]_i_13 
       (.I0(\out_sum[7]_i_3_0 ),
        .I1(\out_sum[7]_i_3_1 ),
        .I2(\out_sum[7]_i_3_2 ),
        .I3(\out_sum[7]_i_30_n_0 ),
        .O(\out_sum[7]_i_30_0 ));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_132 
       (.I0(out_mux_sel_u_reg[4]),
        .I1(\out_sum[7]_i_63_4 ),
        .I2(\out_sum[7]_i_63_5 ),
        .I3(\out_sum[7]_i_63_6 ),
        .I4(\out_sum[7]_i_63_7 ),
        .I5(\out_sum[7]_i_63_8 ),
        .O(p_30_out[2]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_133 
       (.I0(out_mux_sel_u_reg[5]),
        .I1(\out_sum[7]_i_63 ),
        .I2(\out_sum[7]_i_63_0 ),
        .I3(\out_sum[7]_i_63_1 ),
        .I4(\out_sum[7]_i_63_2 ),
        .I5(\out_sum[7]_i_63_3 ),
        .O(p_30_out[3]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_136 
       (.I0(mem_reg_0_127_0_0__2_i_4_n_0),
        .I1(\out_sum[7]_i_281_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__2_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_281 ),
        .O(upper_row_data[1]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_138 
       (.I0(mem_reg_0_127_0_0__3_i_4_n_0),
        .I1(\out_sum[7]_i_278_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__3_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_278 ),
        .O(upper_row_data[2]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_147 
       (.I0(mem_reg_0_127_0_0__23_i_4_n_0),
        .I1(\out_sum[7]_i_148_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__23_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_148 ),
        .O(upper_row_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h0F8787F0)) 
    \out_sum[7]_i_15 
       (.I0(\out_sum[7]_i_3_0 ),
        .I1(\out_sum[7]_i_3_1 ),
        .I2(\out_sum[7]_i_56 ),
        .I3(\out_sum[7]_i_30_n_0 ),
        .I4(\out_sum[7]_i_3_2 ),
        .O(\out_sum[7]_i_29 ));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_150 
       (.I0(mem_reg_0_127_0_0__22_i_4_n_0),
        .I1(\out_sum[7]_i_77_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__22_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_77 ),
        .O(upper_row_data[21]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_151 
       (.I0(mem_reg_0_127_0_0__21_i_4_n_0),
        .I1(\out_sum[7]_i_77_2 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__21_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_77_1 ),
        .O(upper_row_data[20]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_163 
       (.I0(mem_reg_0_127_0_0__29_i_4_n_0),
        .I1(\out_sum[7]_i_159_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__29_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_159 ),
        .O(upper_row_data[28]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_166 
       (.I0(mem_reg_0_127_0_0__28_i_4_n_0),
        .I1(\out_sum[7]_i_93_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__28_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_93 ),
        .O(upper_row_data[27]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_167 
       (.I0(mem_reg_0_127_0_0__27_i_4_n_0),
        .I1(\out_sum[7]_i_81_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__27_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_81 ),
        .O(upper_row_data[26]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_179 
       (.I0(mem_reg_0_127_0_0__25_i_4_n_0),
        .I1(\out_sum[7]_i_175_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__25_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_175 ),
        .O(upper_row_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \out_sum[7]_i_18 
       (.I0(\out_sum[7]_i_3_0 ),
        .I1(\out_sum[7]_i_3_1 ),
        .I2(\out_sum[7]_i_30_n_0 ),
        .I3(\out_sum[7]_i_3_2 ),
        .I4(\out_sum_reg[7] ),
        .O(\out_sum[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_182 
       (.I0(mem_reg_0_127_0_0__24_i_4_n_0),
        .I1(\out_sum[7]_i_170_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__24_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_170 ),
        .O(upper_row_data[23]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_189 
       (.I0(out_mux_sel_u_reg[3]),
        .I1(\out_sum[7]_i_87 ),
        .I2(\out_sum[7]_i_87_0 ),
        .I3(\out_sum[7]_i_87_1 ),
        .I4(\out_sum[7]_i_87_2 ),
        .I5(\out_sum[7]_i_87_3 ),
        .O(p_30_out[1]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_190 
       (.I0(out_mux_sel_u_reg[2]),
        .I1(\out_sum[7]_i_87_4 ),
        .I2(\out_sum[7]_i_87_5 ),
        .I3(\out_sum[7]_i_87_6 ),
        .I4(\out_sum[7]_i_87_7 ),
        .I5(\out_sum[7]_i_87_8 ),
        .O(p_30_out[0]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_193 
       (.I0(mem_reg_0_127_0_0__30_i_4_n_0),
        .I1(\out_sum[7]_i_89_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__30_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_89 ),
        .O(upper_row_data[29]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_194 
       (.I0(mem_reg_0_127_0_0__26_i_4_n_0),
        .I1(\out_sum[7]_i_98_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__26_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_98 ),
        .O(upper_row_data[25]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_195 
       (.I0(mem_reg_0_127_0_0__16_i_4_n_0),
        .I1(\out_sum[7]_i_225_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__16_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_225 ),
        .O(upper_row_data[15]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_196 
       (.I0(mem_reg_0_127_0_0__14_i_4_n_0),
        .I1(\out_sum[7]_i_108_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__14_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_108 ),
        .O(upper_row_data[13]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_197 
       (.I0(mem_reg_0_127_0_0__15_i_4_n_0),
        .I1(\out_sum[7]_i_119_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__15_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_119 ),
        .O(upper_row_data[14]));
  LUT6 #(
    .INIT(64'h208AA208A2088A20)) 
    \out_sum[7]_i_2 
       (.I0(Q[3]),
        .I1(\out_sum[7]_i_30_0 ),
        .I2(\out_sum_reg[7] ),
        .I3(\out_sum[7]_i_29 ),
        .I4(\out_sum_reg[7]_0 ),
        .I5(\out_sum_reg[7]_1 ),
        .O(\out_sum[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_202 
       (.I0(mem_reg_0_127_0_0__13_i_4_n_0),
        .I1(\out_sum[7]_i_236_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__13_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_236 ),
        .O(upper_row_data[12]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_203 
       (.I0(mem_reg_0_127_0_0__12_i_4_n_0),
        .I1(\out_sum[7]_i_115_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__12_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_115 ),
        .O(upper_row_data[11]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_215 
       (.I0(mem_reg_0_127_0_0__17_i_4_n_0),
        .I1(\out_sum[7]_i_220_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__17_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_220 ),
        .O(upper_row_data[16]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_229 
       (.I0(mem_reg_0_127_0_0__10_i_4_n_0),
        .I1(\out_sum[7]_i_211_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__10_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_211 ),
        .O(upper_row_data[9]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_232 
       (.I0(mem_reg_0_127_0_0__9_i_4_n_0),
        .I1(\out_sum[7]_i_256_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__9_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_256 ),
        .O(upper_row_data[8]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_233 
       (.I0(mem_reg_0_127_0_0__8_i_4_n_0),
        .I1(\out_sum[7]_i_123_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__8_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_123 ),
        .O(upper_row_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \out_sum[7]_i_24 
       (.I0(w_data[0]),
        .I1(D),
        .I2(\out_word_index_reg[2]_0 [0]),
        .I3(\out_word_index_reg[1]_rep_0 ),
        .I4(\out_word_index_reg[2]_0 [2]),
        .O(\out_word_index_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_246 
       (.I0(mem_reg_0_127_0_0__4_i_4_n_0),
        .I1(\out_sum[7]_i_266_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__4_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_266 ),
        .O(upper_row_data[3]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_261 
       (.I0(mem_reg_0_127_0_0__5_i_4_n_0),
        .I1(\out_sum[7]_i_271_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__5_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_271 ),
        .O(upper_row_data[4]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_275 
       (.I0(mem_reg_0_127_0_0__20_i_4_n_0),
        .I1(\out_sum[7]_i_143_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__20_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_143 ),
        .O(upper_row_data[19]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_276 
       (.I0(mem_reg_0_127_0_0__19_i_4_n_0),
        .I1(\out_sum[7]_i_154_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__19_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_154 ),
        .O(upper_row_data[18]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_277 
       (.I0(mem_reg_0_127_0_0__18_i_4_n_0),
        .I1(\out_sum[7]_i_185_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__18_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_185 ),
        .O(upper_row_data[17]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_284 
       (.I0(mem_reg_0_127_0_0__6_i_4_n_0),
        .I1(\out_sum[7]_i_206_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__6_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_206 ),
        .O(upper_row_data[5]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_285 
       (.I0(mem_reg_0_127_0_0__7_i_4_n_0),
        .I1(\out_sum[7]_i_251_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__7_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_251 ),
        .O(upper_row_data[6]));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    \out_sum[7]_i_286 
       (.I0(mem_reg_0_127_0_0__11_i_4_n_0),
        .I1(\out_sum[7]_i_241_0 ),
        .I2(out_mux_sel_u),
        .I3(mem_reg_0_127_0_0__11_i_2_n_0),
        .I4(\out_word_index_reg[2]_0 [2]),
        .I5(\out_sum[7]_i_241 ),
        .O(upper_row_data[10]));
  LUT4 #(
    .INIT(16'h9600)) 
    \out_sum[7]_i_3 
       (.I0(\out_sum_reg[7]_0 ),
        .I1(\out_sum_reg[7]_1 ),
        .I2(\out_sum[7]_i_18_n_0 ),
        .I3(Q[2]),
        .O(\out_sum[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \out_sum[7]_i_30 
       (.I0(\out_sum[7]_i_25 ),
        .I1(\out_sum[7]_i_25_0 ),
        .I2(\out_sum[7]_i_25_1 ),
        .I3(\out_sum[7]_i_25_2 ),
        .I4(\out_sum[7]_i_25_3 ),
        .O(\out_sum[7]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFF171700)) 
    \out_sum[7]_i_34 
       (.I0(\out_sum[7]_i_25 ),
        .I1(\out_sum[7]_i_25_0 ),
        .I2(\out_sum[7]_i_25_1 ),
        .I3(\out_sum[7]_i_25_3 ),
        .I4(\out_sum[7]_i_25_2 ),
        .O(\out_sum[7]_i_56 ));
  LUT5 #(
    .INIT(32'h10E0E010)) 
    \out_sum[7]_i_4 
       (.I0(\out_sum_reg[7]_2 ),
        .I1(\out_sum_reg[7]_3 ),
        .I2(Q[1]),
        .I3(\out_sum_reg[7]_5 ),
        .I4(\out_sum_reg[7]_4 ),
        .O(\out_sum[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAA65559)) 
    \out_sum[7]_i_41 
       (.I0(p_30_out[21]),
        .I1(out_mux_sel_u_reg[27]),
        .I2(out_mux_sel_u_reg_1),
        .I3(\out_sum[7]_i_19 ),
        .I4(p_30_out[17]),
        .O(out_mux_sel_u_reg_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \out_sum[7]_i_43 
       (.I0(\out_sum[7]_i_22 ),
        .I1(\out_sum[7]_i_22_0 ),
        .I2(\out_sum[7]_i_22_1 ),
        .I3(\out_sum[7]_i_22_2 ),
        .I4(\out_sum[7]_i_22_3 ),
        .I5(\out_sum[7]_i_22_4 ),
        .O(\out_sum[7]_i_60 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF770)) 
    \out_sum[7]_i_47 
       (.I0(\out_sum[7]_i_3_0 ),
        .I1(\out_sum[7]_i_3_1 ),
        .I2(\out_sum[7]_i_3_2 ),
        .I3(\out_sum[7]_i_30_n_0 ),
        .O(\out_sum[7]_i_30_1 ));
  LUT5 #(
    .INIT(32'h0002022A)) 
    \out_sum[7]_i_48 
       (.I0(w_data[1]),
        .I1(\out_sum[7]_i_27 ),
        .I2(\out_sum[7]_i_27_0 ),
        .I3(\out_sum[7]_i_27_1 ),
        .I4(\out_sum[7]_i_27_2 ),
        .O(p_30_out[22]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_49 
       (.I0(out_mux_sel_u_reg[28]),
        .I1(\out_sum[7]_i_68 ),
        .I2(\out_sum[7]_i_68_0 ),
        .I3(\out_sum[7]_i_68_1 ),
        .I4(\out_sum[7]_i_68_2 ),
        .I5(\out_sum[7]_i_68_3 ),
        .O(p_30_out[20]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_50 
       (.I0(out_mux_sel_u_reg[26]),
        .I1(\out_sum[7]_i_27_3 ),
        .I2(\out_sum[7]_i_27_4 ),
        .I3(\out_sum[7]_i_27_5 ),
        .I4(\out_sum[7]_i_27_6 ),
        .I5(\out_sum[7]_i_27_7 ),
        .O(p_30_out[19]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_51 
       (.I0(out_mux_sel_u_reg[22]),
        .I1(\out_sum[7]_i_68_4 ),
        .I2(\out_sum[7]_i_68_5 ),
        .I3(\out_sum[7]_i_68_6 ),
        .I4(\out_sum[7]_i_68_7 ),
        .I5(\out_sum[7]_i_68_8 ),
        .O(p_30_out[16]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_52 
       (.I0(out_mux_sel_u_reg[14]),
        .I1(\out_sum[7]_i_27_8 ),
        .I2(\out_sum[7]_i_27_9 ),
        .I3(\out_sum[7]_i_27_10 ),
        .I4(\out_sum[7]_i_27_11 ),
        .I5(\out_sum[7]_i_27_12 ),
        .O(p_30_out[10]));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \out_sum[7]_i_65 
       (.I0(out_mux_sel_u_reg[2]),
        .I1(in_data_IBUF[2]),
        .I2(out_mux_sel_u_reg[0]),
        .I3(in_data_IBUF[1]),
        .I4(upper_row_data[2]),
        .I5(in_data_IBUF[3]),
        .O(out_mux_sel_u_reg_8));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \out_sum[7]_i_67 
       (.I0(out_mux_sel_u_reg[1]),
        .I1(in_data_IBUF[1]),
        .I2(w_data[0]),
        .I3(in_data_IBUF[0]),
        .I4(upper_row_data[1]),
        .I5(in_data_IBUF[2]),
        .O(out_mux_sel_u_reg_9));
  LUT3 #(
    .INIT(8'h78)) 
    \out_sum[7]_i_7 
       (.I0(sum_result[1]),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(\out_sum[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEF1010EF)) 
    \out_sum[7]_i_74 
       (.I0(\out_sum[7]_i_46 ),
        .I1(\out_sum[7]_i_46_0 ),
        .I2(out_mux_sel_u_reg[3]),
        .I3(p_30_out[2]),
        .I4(p_30_out[3]),
        .O(out_mux_sel_u_reg_2));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_75 
       (.I0(out_mux_sel_u_reg[20]),
        .I1(\out_sum[7]_i_40 ),
        .I2(\out_sum[7]_i_40_0 ),
        .I3(\out_sum[7]_i_40_1 ),
        .I4(\out_sum[7]_i_40_2 ),
        .I5(\out_sum[7]_i_40_3 ),
        .O(p_30_out[15]));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \out_sum[7]_i_76 
       (.I0(out_mux_sel_u_reg[22]),
        .I1(in_data_IBUF[14]),
        .I2(out_mux_sel_u_reg[20]),
        .I3(in_data_IBUF[13]),
        .I4(upper_row_data[22]),
        .I5(in_data_IBUF[15]),
        .O(out_mux_sel_u_reg_4));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_78 
       (.I0(out_mux_sel_u_reg[19]),
        .I1(\out_sum[7]_i_40_4 ),
        .I2(\out_sum[7]_i_40_5 ),
        .I3(\out_sum[7]_i_40_6 ),
        .I4(\out_sum[7]_i_40_7 ),
        .I5(\out_sum[7]_i_40_8 ),
        .O(p_30_out[14]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_79 
       (.I0(out_mux_sel_u_reg[29]),
        .I1(\out_sum[7]_i_55 ),
        .I2(\out_sum[7]_i_55_0 ),
        .I3(\out_sum[7]_i_55_1 ),
        .I4(\out_sum[7]_i_55_2 ),
        .I5(\out_sum[7]_i_55_3 ),
        .O(p_30_out[21]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_sum[7]_i_8 
       (.I0(\out_sum[7]_i_2_n_0 ),
        .I1(sum_result[1]),
        .I2(Q[4]),
        .O(\out_sum[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \out_sum[7]_i_80 
       (.I0(out_mux_sel_u_reg[28]),
        .I1(in_data_IBUF[19]),
        .I2(out_mux_sel_u_reg[26]),
        .I3(in_data_IBUF[18]),
        .I4(upper_row_data[28]),
        .I5(in_data_IBUF[20]),
        .O(out_mux_sel_u_reg_1));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_82 
       (.I0(out_mux_sel_u_reg[24]),
        .I1(\out_sum[7]_i_55_4 ),
        .I2(\out_sum[7]_i_55_5 ),
        .I3(\out_sum[7]_i_55_6 ),
        .I4(\out_sum[7]_i_55_7 ),
        .I5(\out_sum[7]_i_55_8 ),
        .O(p_30_out[17]));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_83 
       (.I0(out_mux_sel_u_reg[25]),
        .I1(\out_sum[7]_i_42 ),
        .I2(\out_sum[7]_i_42_0 ),
        .I3(\out_sum[7]_i_42_1 ),
        .I4(\out_sum[7]_i_42_2 ),
        .I5(\out_sum[7]_i_42_3 ),
        .O(p_30_out[18]));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \out_sum[7]_i_84 
       (.I0(out_mux_sel_u_reg[24]),
        .I1(in_data_IBUF[16]),
        .I2(out_mux_sel_u_reg[22]),
        .I3(in_data_IBUF[15]),
        .I4(upper_row_data[24]),
        .I5(in_data_IBUF[17]),
        .O(out_mux_sel_u_reg_3));
  LUT6 #(
    .INIT(64'h0000002A002A2AAA)) 
    \out_sum[7]_i_86 
       (.I0(out_mux_sel_u_reg[18]),
        .I1(\out_sum[7]_i_42_4 ),
        .I2(\out_sum[7]_i_42_5 ),
        .I3(\out_sum[7]_i_42_6 ),
        .I4(\out_sum[7]_i_42_7 ),
        .I5(\out_sum[7]_i_42_8 ),
        .O(p_30_out[13]));
  LUT6 #(
    .INIT(64'h960069FF69FF9600)) 
    \out_sum[7]_i_9 
       (.I0(\out_sum_reg[7]_0 ),
        .I1(\out_sum_reg[7]_1 ),
        .I2(\out_sum[7]_i_18_n_0 ),
        .I3(Q[2]),
        .I4(sum_result[0]),
        .I5(Q[3]),
        .O(\out_sum[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \out_sum_reg[15]_i_1 
       (.CI(\out_sum_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_out_sum_reg[15]_i_1_CO_UNCONNECTED [7],\out_sum_reg[15]_i_1_n_1 ,\out_sum_reg[15]_i_1_n_2 ,\out_sum_reg[15]_i_1_n_3 ,\out_sum_reg[15]_i_1_n_4 ,\out_sum_reg[15]_i_1_n_5 ,\out_sum_reg[15]_i_1_n_6 ,\out_sum_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\out_sum_reg[15] [15:8]),
        .S(Q[15:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \out_sum_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\out_sum_reg[7]_i_1_n_0 ,\out_sum_reg[7]_i_1_n_1 ,\out_sum_reg[7]_i_1_n_2 ,\out_sum_reg[7]_i_1_n_3 ,\out_sum_reg[7]_i_1_n_4 ,\out_sum_reg[7]_i_1_n_5 ,\out_sum_reg[7]_i_1_n_6 ,\out_sum_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,Q[5],\out_sum[7]_i_2_n_0 ,\out_sum[7]_i_3_n_0 ,\out_sum[7]_i_4_n_0 ,DI}),
        .O(\out_sum_reg[15] [7:0]),
        .S({Q[7:6],\out_sum[7]_i_7_n_0 ,\out_sum[7]_i_8_n_0 ,\out_sum[7]_i_9_n_0 ,\out_sum[7]_i_10_n_0 ,\out_sum[7]_i_11_n_0 ,\out_sum[7]_i_12_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \out_word_index[0]_i_1 
       (.I0(\out_word_index_reg[2]_0 [0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out_word_index[1]_i_1 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [0]),
        .O(p_2_in[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \out_word_index[1]_rep_i_1 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [0]),
        .O(\out_word_index[1]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \out_word_index[2]_i_1 
       (.I0(reset_IBUF),
        .I1(enable_IBUF),
        .I2(\out_word_index_reg[2]_0 [2]),
        .O(\out_word_index[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_word_index[2]_i_2 
       (.I0(enable_IBUF),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\out_word_index[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_word_index[2]_i_3 
       (.I0(\out_word_index_reg[2]_0 [0]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(p_2_in[2]));
  FDRE #(
    .INIT(1'b0)) 
    \out_word_index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_word_index[2]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(\out_word_index_reg[2]_0 [0]),
        .R(\out_word_index[2]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "out_word_index_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_word_index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_word_index[2]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(\out_word_index_reg[2]_0 [1]),
        .R(\out_word_index[2]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "out_word_index_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \out_word_index_reg[1]_rep 
       (.C(clk_IBUF_BUFG),
        .CE(\out_word_index[2]_i_2_n_0 ),
        .D(\out_word_index[1]_rep_i_1_n_0 ),
        .Q(\out_word_index_reg[1]_rep_0 ),
        .R(\out_word_index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_word_index_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_word_index[2]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(\out_word_index_reg[2]_0 [2]),
        .R(\out_word_index[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_10 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_11 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_12 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_13 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_14 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_15 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_16 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_17 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_18 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_19 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \row[0]_i_2 
       (.I0(\row[0]_i_3_n_0 ),
        .I1(row1[17]),
        .I2(row1[30]),
        .I3(row1[18]),
        .I4(row1[20]),
        .I5(\row[0]_i_6_n_0 ),
        .O(\row[0]_i_6_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_20 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_21 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_22 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_23 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_24 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_25 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_26 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_27 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_28 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_29 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \row[0]_i_3 
       (.I0(row1[26]),
        .I1(row1[15]),
        .I2(row1[25]),
        .I3(row1[24]),
        .I4(\row[0]_i_7_n_0 ),
        .O(\row[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_30 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_31 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_32 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_33 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_34 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_35 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_36 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_37 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_38 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[0]_i_39 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[0]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row[0]_i_40 
       (.I0(row1[6]),
        .I1(row1[12]),
        .I2(row1[14]),
        .I3(row1[21]),
        .O(\row[0]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \row[0]_i_41 
       (.I0(\row[0]_i_42_n_0 ),
        .I1(row1[16]),
        .I2(row1[8]),
        .I3(row1[28]),
        .I4(row1[7]),
        .O(\row[0]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row[0]_i_42 
       (.I0(row1[31]),
        .I1(row1[5]),
        .I2(row1[11]),
        .I3(row1[13]),
        .O(\row[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \row[0]_i_6 
       (.I0(\row[0]_i_40_n_0 ),
        .I1(row1[9]),
        .I2(row1[10]),
        .I3(row1[23]),
        .I4(row1[27]),
        .I5(\row[0]_i_41_n_0 ),
        .O(\row[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row[0]_i_7 
       (.I0(row1[19]),
        .I1(row1[29]),
        .I2(row1[22]),
        .I3(row1[31]),
        .O(\row[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_8 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[0]_i_9 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \row[127]_i_1 
       (.I0(\out_word_index_reg[1]_3 ),
        .I1(enable_IBUF),
        .I2(out_mux_sel_u),
        .O(E[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \row[127]_i_2 
       (.I0(\row[159]_i_4_n_0 ),
        .I1(row1[5]),
        .I2(row1[6]),
        .I3(row1[7]),
        .I4(row1[31]),
        .O(\out_word_index_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \row[159]_i_1 
       (.I0(\out_word_index_reg[1]_4 ),
        .I1(enable_IBUF),
        .I2(out_mux_sel_u),
        .O(E[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \row[159]_i_10 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(row5[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \row[159]_i_11 
       (.I0(\out_word_index_reg[2]_0 [0]),
        .O(\row[159]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[159]_i_12 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[159]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[159]_i_13 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[159]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[159]_i_14 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[159]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[159]_i_15 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[159]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \row[159]_i_16 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[159]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \row[159]_i_17 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .O(\row[159]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row[159]_i_18 
       (.I0(row1[30]),
        .I1(row1[31]),
        .I2(row1[14]),
        .I3(row1[18]),
        .O(\row[159]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \row[159]_i_19 
       (.I0(\row[159]_i_27_n_0 ),
        .I1(row1[15]),
        .I2(row1[28]),
        .I3(row1[9]),
        .I4(row1[16]),
        .I5(\row[159]_i_28_n_0 ),
        .O(\row[159]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \row[159]_i_2 
       (.I0(row1[5]),
        .I1(\row[159]_i_4_n_0 ),
        .I2(row1[6]),
        .I3(row1[7]),
        .I4(row1[31]),
        .O(\out_word_index_reg[1]_4 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[159]_i_20 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(row5[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \row[159]_i_21 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[159]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[159]_i_22 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[159]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[159]_i_23 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[159]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[159]_i_24 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[159]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[159]_i_25 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[159]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \row[159]_i_26 
       (.I0(\out_word_index_reg[2]_0 [2]),
        .I1(\out_word_index_reg[2]_0 [1]),
        .O(\row[159]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row[159]_i_27 
       (.I0(row1[17]),
        .I1(row1[21]),
        .I2(row1[20]),
        .I3(row1[24]),
        .O(\row[159]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row[159]_i_28 
       (.I0(row1[13]),
        .I1(row1[8]),
        .I2(row1[29]),
        .I3(row1[10]),
        .I4(\row[159]_i_29_n_0 ),
        .O(\row[159]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row[159]_i_29 
       (.I0(row1[11]),
        .I1(row1[19]),
        .I2(row1[22]),
        .I3(row1[27]),
        .O(\row[159]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \row[159]_i_4 
       (.I0(\row[159]_i_18_n_0 ),
        .I1(row1[23]),
        .I2(row1[25]),
        .I3(row1[12]),
        .I4(row1[26]),
        .I5(\row[159]_i_19_n_0 ),
        .O(\row[159]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[159]_i_6 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[159]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[159]_i_7 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[159]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[159]_i_8 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[159]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row[159]_i_9 
       (.I0(\out_word_index_reg[2]_0 [1]),
        .I1(\out_word_index_reg[2]_0 [2]),
        .O(\row[159]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \row[161]_i_2 
       (.I0(\row[159]_i_4_n_0 ),
        .I1(row1[5]),
        .I2(row1[6]),
        .I3(row1[7]),
        .I4(row1[31]),
        .O(\out_word_index_reg[1]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \row[31]_i_1 
       (.I0(\out_word_index_reg[1]_0 ),
        .I1(enable_IBUF),
        .I2(out_mux_sel_u),
        .O(E[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row[31]_i_2 
       (.I0(row1[5]),
        .I1(\row[159]_i_4_n_0 ),
        .I2(row1[7]),
        .I3(row1[31]),
        .I4(row1[6]),
        .O(\out_word_index_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \row[63]_i_1 
       (.I0(\out_word_index_reg[1]_1 ),
        .I1(enable_IBUF),
        .I2(out_mux_sel_u),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \row[63]_i_2 
       (.I0(\row[159]_i_4_n_0 ),
        .I1(row1[5]),
        .I2(row1[7]),
        .I3(row1[31]),
        .I4(row1[6]),
        .O(\out_word_index_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \row[95]_i_1 
       (.I0(\out_word_index_reg[1]_2 ),
        .I1(enable_IBUF),
        .I2(out_mux_sel_u),
        .O(E[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \row[95]_i_2 
       (.I0(row1[5]),
        .I1(\row[159]_i_4_n_0 ),
        .I2(row1[6]),
        .I3(row1[7]),
        .I4(row1[31]),
        .O(\out_word_index_reg[1]_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \row_reg[0]_i_4 
       (.CI(\row_reg[159]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\row_reg[0]_i_4_n_0 ,\row_reg[0]_i_4_n_1 ,\row_reg[0]_i_4_n_2 ,\row_reg[0]_i_4_n_3 ,\row_reg[0]_i_4_n_4 ,\row_reg[0]_i_4_n_5 ,\row_reg[0]_i_4_n_6 ,\row_reg[0]_i_4_n_7 }),
        .DI({\row[0]_i_8_n_0 ,\row[0]_i_9_n_0 ,\row[0]_i_10_n_0 ,\row[0]_i_11_n_0 ,\row[0]_i_12_n_0 ,\row[0]_i_13_n_0 ,\row[0]_i_14_n_0 ,\row[0]_i_15_n_0 }),
        .O(row1[19:12]),
        .S({\row[0]_i_16_n_0 ,\row[0]_i_17_n_0 ,\row[0]_i_18_n_0 ,\row[0]_i_19_n_0 ,\row[0]_i_20_n_0 ,\row[0]_i_21_n_0 ,\row[0]_i_22_n_0 ,\row[0]_i_23_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \row_reg[0]_i_5 
       (.CI(\row_reg[0]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\row_reg[0]_i_5_n_0 ,\row_reg[0]_i_5_n_1 ,\row_reg[0]_i_5_n_2 ,\row_reg[0]_i_5_n_3 ,\row_reg[0]_i_5_n_4 ,\row_reg[0]_i_5_n_5 ,\row_reg[0]_i_5_n_6 ,\row_reg[0]_i_5_n_7 }),
        .DI({\row[0]_i_24_n_0 ,\row[0]_i_25_n_0 ,\row[0]_i_26_n_0 ,\row[0]_i_27_n_0 ,\row[0]_i_28_n_0 ,\row[0]_i_29_n_0 ,\row[0]_i_30_n_0 ,\row[0]_i_31_n_0 }),
        .O(row1[27:20]),
        .S({\row[0]_i_32_n_0 ,\row[0]_i_33_n_0 ,\row[0]_i_34_n_0 ,\row[0]_i_35_n_0 ,\row[0]_i_36_n_0 ,\row[0]_i_37_n_0 ,\row[0]_i_38_n_0 ,\row[0]_i_39_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \row_reg[159]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\row_reg[159]_i_3_n_0 ,\row_reg[159]_i_3_n_1 ,\row_reg[159]_i_3_n_2 ,\row_reg[159]_i_3_n_3 ,\row_reg[159]_i_3_n_4 ,\row_reg[159]_i_3_n_5 ,\row_reg[159]_i_3_n_6 ,\row_reg[159]_i_3_n_7 }),
        .DI({\row[159]_i_6_n_0 ,\row[159]_i_7_n_0 ,\row[159]_i_8_n_0 ,\row[159]_i_9_n_0 ,row5[2],\out_word_index_reg[2]_0 [1],\row[159]_i_11_n_0 ,1'b0}),
        .O({row1[11:5],\NLW_row_reg[159]_i_3_O_UNCONNECTED [0]}),
        .S({\row[159]_i_12_n_0 ,\row[159]_i_13_n_0 ,\row[159]_i_14_n_0 ,\row[159]_i_15_n_0 ,\row[159]_i_16_n_0 ,\row[159]_i_17_n_0 ,\out_word_index_reg[2]_0 [0],1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \row_reg[159]_i_5 
       (.CI(\row_reg[0]_i_5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_row_reg[159]_i_5_CO_UNCONNECTED [7:3],\row_reg[159]_i_5_n_5 ,\row_reg[159]_i_5_n_6 ,\row_reg[159]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,row5[25],\row[159]_i_21_n_0 ,\row[159]_i_22_n_0 }),
        .O({\NLW_row_reg[159]_i_5_O_UNCONNECTED [7:4],row1[31:28]}),
        .S({1'b0,1'b0,1'b0,1'b0,\row[159]_i_23_n_0 ,\row[159]_i_24_n_0 ,\row[159]_i_25_n_0 ,\row[159]_i_26_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    we_matrix_data_i_1
       (.I0(enable_IBUF),
        .I1(\out_word_index_reg[2]_0 [2]),
        .I2(\out_word_index_reg[2]_0 [0]),
        .I3(\out_word_index_reg[2]_0 [1]),
        .I4(we_matrix_data),
        .O(\out_word_index_reg[2]_1 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
