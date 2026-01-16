`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2025 08:01:27
// Design Name: 
// Module Name: FIFO_rows
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


module FIFO_rows #(
    parameter NUM_ROWS = 20,
    parameter ROW_SIZE = 160
)(
    input  wire                         clk,
    input  wire                         reset,

    input  wire                         we1,
    input  wire                         we2,
    input  wire                         we3,
    input  wire                         we4,
    input  wire                         we5,
    input  wire                         we6,
    input  wire                         we7,
    input  wire                         we8,

    input  wire [0:ROW_SIZE-1]          din1,
    input  wire [0:ROW_SIZE-1]          din2,
    input  wire [0:ROW_SIZE-1]          din3,
    input  wire [0:ROW_SIZE-1]          din4,
    input  wire [0:ROW_SIZE-1]          din5,
    input  wire [0:ROW_SIZE-1]          din6,
    input  wire [0:ROW_SIZE-1]          din7,
    input  wire [0:ROW_SIZE-1]          din8,

    input  wire                         re1,
    output wire [0:ROW_SIZE-1]          dout1,
    output wire                         FIFO_empty
);

    reg [$clog2(NUM_ROWS) -1: 0] FIFO_wptr, FIFO_rptr, FIFO_count;
    assign FIFO_empty = (FIFO_count == 'd0);

    wire [7:0] wes = {we1, we2, we3, we4, we5, we6, we7, we8};
    wire [7:0] wesp1, wesp2, wesp3, wesp4, wesp5, wesp6, wesp7;

    clear_first_one cfo1_inst (
        .in(wes),
        .out(wesp1)
    );
    clear_first_one cfo2_inst (
        .in(wesp1),
        .out(wesp2)
    );
    clear_first_one cfo3_inst (
        .in(wesp2),
        .out(wesp3)
    );
    clear_first_one cfo4_inst (
        .in(wesp3),
        .out(wesp4)
    );
    clear_first_one cfo5_inst (
        .in(wesp4),
        .out(wesp5)
    );
    clear_first_one cfo6_inst (
        .in(wesp5),
        .out(wesp6)
    );
    clear_first_one cfo7_inst (
        .in(wesp6),
        .out(wesp7)
    );

    wire [4:0] num_writes = we1 + we2 + we3 + we4 + we5 + we6 + we7 + we8;
    wire [0: ROW_SIZE -1] data_in_m1, data_in_m2, data_in_m3, data_in_m4, data_in_m5, data_in_m6, data_in_m7, data_in_m8;
    always @(posedge clk) begin
        if (reset) begin
            FIFO_wptr <= 'd0;
            FIFO_rptr <= 'd0;
            FIFO_count <= 'd0;
        end else begin
            FIFO_wptr <= (FIFO_wptr + num_writes> 8*(NUM_ROWS/8) + 'd7) ? (FIFO_wptr + num_writes - 8*(NUM_ROWS/8) - 'd8) : (FIFO_wptr + num_writes);
            FIFO_rptr <= (FIFO_rptr + re1> 8*(NUM_ROWS/8) + 'd7) ? (FIFO_rptr + re1 - 8*(NUM_ROWS/8) - 'd8) : (FIFO_rptr + re1);
            FIFO_count <= FIFO_count + num_writes - re1;
        end
    end

    
    

    wire [ROW_SIZE -1: 0] mem_1_dout, mem_2_dout, mem_3_dout, mem_4_dout, mem_5_dout, mem_6_dout, mem_7_dout, mem_8_dout;
    wire [7:0] we_m;
    wire [ROW_SIZE -1: 0] data_mux_in1, data_mux_in2, data_mux_in3, data_mux_in4, data_mux_in5, data_mux_in6, data_mux_in7, data_mux_in8;
    wire we_mux_in1, we_mux_in2, we_mux_in3, we_mux_in4, we_mux_in5, we_mux_in6, we_mux_in7, we_mux_in8;

    assign we_mux_in1 = |wes;
    assign we_mux_in2 = |wesp1;
    assign we_mux_in3 = |wesp2;
    assign we_mux_in4 = |wesp3;
    assign we_mux_in5 = |wesp4;
    assign we_mux_in6 = |wesp5;
    assign we_mux_in7 = |wesp6;
    assign we_mux_in8 = |wesp7;
    
    data_mux_8_1#(
        .ROW_SIZE(1)
    ) data_muxw1_inst(
        .sel(FIFO_wptr[2:0]),
        .din1(we_mux_in1),
        .din2(we_mux_in8),
        .din3(we_mux_in7),
        .din4(we_mux_in6),
        .din5(we_mux_in5),
        .din6(we_mux_in4),
        .din7(we_mux_in3),
        .din8(we_mux_in2),
        .dout(we_m[7])
    );

    data_mux_8_1#(
        .ROW_SIZE(1)
    ) data_muxw2_inst(
        .sel(FIFO_wptr[2:0]),
        .din1(we_mux_in2),
        .din2(we_mux_in1),
        .din3(we_mux_in8),
        .din4(we_mux_in7),
        .din5(we_mux_in6),
        .din6(we_mux_in5),
        .din7(we_mux_in4),
        .din8(we_mux_in3),
        .dout(we_m[6])
    );

    data_mux_8_1#(
        .ROW_SIZE(1)
    ) data_muxw3_inst(
        .sel(FIFO_wptr[2:0]),
        .din1(we_mux_in3),
        .din2(we_mux_in2),
        .din3(we_mux_in1),
        .din4(we_mux_in8),
        .din5(we_mux_in7),
        .din6(we_mux_in6),
        .din7(we_mux_in5),
        .din8(we_mux_in4),
        .dout(we_m[5])
    );

    data_mux_8_1#(
        .ROW_SIZE(1)
    ) data_muxw4_inst(
        .sel(FIFO_wptr[2:0]),
        .din1(we_mux_in4),
        .din2(we_mux_in3),
        .din3(we_mux_in2),
        .din4(we_mux_in1),
        .din5(we_mux_in8),
        .din6(we_mux_in7),
        .din7(we_mux_in6),
        .din8(we_mux_in5),
        .dout(we_m[4])
    );

    data_mux_8_1#(
        .ROW_SIZE(1)
    ) data_muxw5_inst(
        .sel(FIFO_wptr[2:0]),
        .din1(we_mux_in5),
        .din2(we_mux_in4),
        .din3(we_mux_in3),
        .din4(we_mux_in2),
        .din5(we_mux_in1),
        .din6(we_mux_in8),
        .din7(we_mux_in7),
        .din8(we_mux_in6),
        .dout(we_m[3])
    );

    data_mux_8_1#(
        .ROW_SIZE(1)
    ) data_muxw6_inst(
        .sel(FIFO_wptr[2:0]),
        .din1(we_mux_in6),
        .din2(we_mux_in5),
        .din3(we_mux_in4),
        .din4(we_mux_in3),
        .din5(we_mux_in2),
        .din6(we_mux_in1),
        .din7(we_mux_in8),
        .din8(we_mux_in7),
        .dout(we_m[2])
    );

    data_mux_8_1#(
        .ROW_SIZE(1)
    ) data_muxw7_inst(
        .sel(FIFO_wptr[2:0]),
        .din1(we_mux_in7),
        .din2(we_mux_in6),
        .din3(we_mux_in5),
        .din4(we_mux_in4),
        .din5(we_mux_in3),
        .din6(we_mux_in2),
        .din7(we_mux_in1),
        .din8(we_mux_in8),
        .dout(we_m[1])
    );

    data_mux_8_1#(
        .ROW_SIZE(1)
    ) data_muxw8_inst(
        .sel(FIFO_wptr[2:0]),
        .din1(we_mux_in8),
        .din2(we_mux_in7),
        .din3(we_mux_in6),
        .din4(we_mux_in5),
        .din5(we_mux_in4),
        .din6(we_mux_in3),
        .din7(we_mux_in2),
        .din8(we_mux_in1),
        .dout(we_m[0])
    );

    assign data_mux_in1 = wes[7] ? din1 : (wes[6] ? din2 : (wes[5] ? din3 : (wes[4] ? din4 : (wes[3] ? din5 : (wes[2] ? din6 : (wes[1] ? din7 : din8))))));
    assign data_mux_in2 = wesp1[7] ? din1 : (wesp1[6] ? din2 : (wesp1[5] ? din3 : (wesp1[4] ? din4 : (wesp1[3] ? din5 : (wesp1[2] ? din6 : (wesp1[1] ? din7 : din8))))));
    assign data_mux_in3 = wesp2[7] ? din1 : (wesp2[6] ? din2 : (wesp2[5] ? din3 : (wesp2[4] ? din4 : (wesp2[3] ? din5 : (wesp2[2] ? din6 : (wesp2[1] ? din7 : din8))))));
    assign data_mux_in4 = wesp3[7] ? din1 : (wesp3[6] ? din2 : (wesp3[5] ? din3 : (wesp3[4] ? din4 : (wesp3[3] ? din5 : (wesp3[2] ? din6 : (wesp3[1] ? din7 : din8))))));
    assign data_mux_in5 = wesp4[7] ? din1 : (wesp4[6] ? din2 : (wesp4[5] ? din3 : (wesp4[4] ? din4 : (wesp4[3] ? din5 : (wesp4[2] ? din6 : (wesp4[1] ? din7 : din8))))));
    assign data_mux_in6 = wesp5[7] ? din1 : (wesp5[6] ? din2 : (wesp5[5] ? din3 : (wesp5[4] ? din4 : (wesp5[3] ? din5 : (wesp5[2] ? din6 : (wesp5[1] ? din7 : din8))))));
    assign data_mux_in7 = wesp6[7] ? din1 : (wesp6[6] ? din2 : (wesp6[5] ? din3 : (wesp6[4] ? din4 : (wesp6[3] ? din5 : (wesp6[2] ? din6 : (wesp6[1] ? din7 : din8))))));
    assign data_mux_in8 = wesp7[7] ? din1 : (wesp7[6] ? din2 : (wesp7[5] ? din3 : (wesp7[4] ? din4 : (wesp7[3] ? din5 : (wesp7[2] ? din6 : (wesp7[1] ? din7 : din8))))));

    data_mux_8_1 #(
        .ROW_SIZE(ROW_SIZE)
    ) data_mux1_inst (
        .sel(FIFO_wptr[2:0]),
        .din1(data_mux_in1),
        .din2(data_mux_in8),
        .din3(data_mux_in7),
        .din4(data_mux_in6),
        .din5(data_mux_in5),
        .din6(data_mux_in4),
        .din7(data_mux_in3),
        .din8(data_mux_in2),
        .dout(data_in_m1)
    );

    data_mux_8_1 #(
        .ROW_SIZE(ROW_SIZE)
    ) data_mux2_inst (
        .sel(FIFO_wptr[2:0]),
        .din1(data_mux_in2),
        .din2(data_mux_in1),
        .din3(data_mux_in8),
        .din4(data_mux_in7),
        .din5(data_mux_in6),
        .din6(data_mux_in5),
        .din7(data_mux_in4),
        .din8(data_mux_in3),
        .dout(data_in_m2)
    );

    data_mux_8_1 #(
        .ROW_SIZE(ROW_SIZE)
    ) data_mux3_inst (
        .sel(FIFO_wptr[2:0]),
        .din1(data_mux_in3),
        .din2(data_mux_in2),
        .din3(data_mux_in1),
        .din4(data_mux_in8),
        .din5(data_mux_in7),
        .din6(data_mux_in6),
        .din7(data_mux_in5),
        .din8(data_mux_in4),
        .dout(data_in_m3)
    );

    data_mux_8_1 #(
        .ROW_SIZE(ROW_SIZE)
    ) data_mux4_inst (
        .sel(FIFO_wptr[2:0]),
        .din1(data_mux_in4),
        .din2(data_mux_in3),
        .din3(data_mux_in2),
        .din4(data_mux_in1),
        .din5(data_mux_in8),
        .din6(data_mux_in7),
        .din7(data_mux_in6),
        .din8(data_mux_in5),
        .dout(data_in_m4)
    );

    data_mux_8_1 #(
        .ROW_SIZE(ROW_SIZE)
    ) data_mux5_inst (
        .sel(FIFO_wptr[2:0]),
        .din1(data_mux_in5),
        .din2(data_mux_in4),
        .din3(data_mux_in3),
        .din4(data_mux_in2),
        .din5(data_mux_in1),
        .din6(data_mux_in8),
        .din7(data_mux_in7),
        .din8(data_mux_in6),
        .dout(data_in_m5)
    );

    data_mux_8_1 #(
        .ROW_SIZE(ROW_SIZE)
    ) data_mux6_inst (
        .sel(FIFO_wptr[2:0]),
        .din1(data_mux_in6),
        .din2(data_mux_in5),
        .din3(data_mux_in4),
        .din4(data_mux_in3),
        .din5(data_mux_in2),
        .din6(data_mux_in1),
        .din7(data_mux_in8),
        .din8(data_mux_in7),
        .dout(data_in_m6)
    );

    data_mux_8_1 #(
        .ROW_SIZE(ROW_SIZE)
    ) data_mux7_inst (
        .sel(FIFO_wptr[2:0]),
        .din1(data_mux_in7),
        .din2(data_mux_in6),
        .din3(data_mux_in5),
        .din4(data_mux_in4),
        .din5(data_mux_in3),
        .din6(data_mux_in2),
        .din7(data_mux_in1),
        .din8(data_mux_in8),
        .dout(data_in_m7)
    );

    data_mux_8_1 #(
        .ROW_SIZE(ROW_SIZE)
    ) data_mux8_inst (
        .sel(FIFO_wptr[2:0]),
        .din1(data_mux_in8),
        .din2(data_mux_in7),
        .din3(data_mux_in6),
        .din4(data_mux_in5),
        .din5(data_mux_in4),
        .din6(data_mux_in3),
        .din7(data_mux_in2),
        .din8(data_mux_in1),
        .dout(data_in_m8)
    );


    mem_element#(
        .ROW_WIDTH(ROW_SIZE),
        .NUM_ROWS(NUM_ROWS/8 + 1)
    ) mem_1_inst (
        .clk(clk),
        .we(we_m[7]),
        .w_addr((FIFO_wptr[2:0] == 'd0) ? (FIFO_wptr >> 3): (((FIFO_wptr >> 3) + 'd1 > ((NUM_ROWS/8))) ? 'd0 : (FIFO_wptr >> 3) + 'd1)),
        .w_data(data_in_m1),
        .r_addr(FIFO_rptr >> 3),
        .r_data(mem_1_dout)
    );

    mem_element#(
        .ROW_WIDTH(ROW_SIZE),
        .NUM_ROWS(NUM_ROWS/8 + 1)
    ) mem_2_inst (
        .clk(clk),
        .we(we_m[6]),
        .w_addr((FIFO_wptr[2:0] <= 'd1) ? (FIFO_wptr >> 3): (((FIFO_wptr >> 3) + 'd1 > ((NUM_ROWS/8))) ? 'd0 : (FIFO_wptr >> 3) + 'd1)),
        .w_data(data_in_m2),
        .r_addr(FIFO_rptr >> 3),
        .r_data(mem_2_dout)
    );

    mem_element#(
        .ROW_WIDTH(ROW_SIZE),
        .NUM_ROWS(NUM_ROWS/8 + 1)
    ) mem_3_inst (
        .clk(clk),
        .we(we_m[5]),
        .w_addr((FIFO_wptr[2:0] <= 'd2) ? (FIFO_wptr >> 3): (((FIFO_wptr >> 3) + 'd1 > ((NUM_ROWS/8))) ? 'd0 : (FIFO_wptr >> 3) + 'd1)),
        .w_data(data_in_m3),
        .r_addr(FIFO_rptr >> 3),
        .r_data(mem_3_dout)
    );

    mem_element#(
        .ROW_WIDTH(ROW_SIZE),
        .NUM_ROWS(NUM_ROWS/8 + 1)
    ) mem_4_inst (
        .clk(clk),
        .we(we_m[4]),
        .w_addr((FIFO_wptr[2:0] <= 'd3) ? (FIFO_wptr >> 3): (((FIFO_wptr >> 3) + 'd1 > ((NUM_ROWS/8))) ? 'd0 : (FIFO_wptr >> 3) + 'd1)),
        .w_data(data_in_m4),
        .r_addr(FIFO_rptr >> 3),
        .r_data(mem_4_dout)
    );

    mem_element#(
        .ROW_WIDTH(ROW_SIZE),
        .NUM_ROWS(NUM_ROWS/8 + 1)
    ) mem_5_inst (
        .clk(clk),
        .we(we_m[3]),
        .w_addr((FIFO_wptr[2:0] <= 'd4) ? (FIFO_wptr >> 3): (((FIFO_wptr >> 3) + 'd1 > ((NUM_ROWS/8))) ? 'd0 : (FIFO_wptr >> 3) + 'd1)),
        .w_data(data_in_m5),
        .r_addr(FIFO_rptr >> 3),
        .r_data(mem_5_dout)
    );
    
    mem_element#(
        .ROW_WIDTH(ROW_SIZE),
        .NUM_ROWS(NUM_ROWS/8 + 1)
    ) mem_6_inst (
        .clk(clk),
        .we(we_m[2]),
        .w_addr((FIFO_wptr[2:0] <= 'd5) ? (FIFO_wptr >> 3): (((FIFO_wptr >> 3) + 'd1 > ((NUM_ROWS/8))) ? 'd0 : (FIFO_wptr >> 3) + 'd1)),
        .w_data(data_in_m6),
        .r_addr(FIFO_rptr >> 3),
        .r_data(mem_6_dout)
    );

    mem_element#(
        .ROW_WIDTH(ROW_SIZE),
        .NUM_ROWS(NUM_ROWS/8 + 1)
    ) mem_7_inst (
        .clk(clk),
        .we(we_m[1]),
        .w_addr((FIFO_wptr[2:0] <= 'd6) ? (FIFO_wptr >> 3): (((FIFO_wptr >> 3) + 'd1 > ((NUM_ROWS/8))) ? 'd0 : (FIFO_wptr >> 3) + 'd1)),
        .w_data(data_in_m7),
        .r_addr(FIFO_rptr >> 3),
        .r_data(mem_7_dout)
    );

    mem_element#(
        .ROW_WIDTH(ROW_SIZE),
        .NUM_ROWS(NUM_ROWS/8 + 1)
    ) mem_8_inst (
        .clk(clk),
        .we(we_m[0]),
        .w_addr((FIFO_wptr[2:0] <= 'd7) ? (FIFO_wptr >> 3): (((FIFO_wptr >> 3) + 'd1 > ((NUM_ROWS/8))) ? 'd0 : (FIFO_wptr >> 3) + 'd1)),
        .w_data(data_in_m8),
        .r_addr(FIFO_rptr >> 3),
        .r_data(mem_8_dout)
    );

    wire [0: ROW_SIZE -1] dout1_internal;
    data_mux_8_1 #(
        .ROW_SIZE(ROW_SIZE)
    ) dout1_mux_inst (
        .sel(FIFO_rptr[2:0]),
        .din1(mem_1_dout),
        .din2(mem_2_dout),
        .din3(mem_3_dout),
        .din4(mem_4_dout),
        .din5(mem_5_dout),
        .din6(mem_6_dout),
        .din7(mem_7_dout),
        .din8(mem_8_dout),
        .dout(dout1_internal)
    );
    reg [0: ROW_SIZE -1] dout1_reg;
    always @(posedge clk) begin
        if (reset) begin
            dout1_reg <= 'd0;
        end else begin
            if (re1) begin
                dout1_reg <= dout1_internal;
            end
        end
    end
    assign dout1 = re1 ? dout1_internal : dout1_reg;
endmodule
