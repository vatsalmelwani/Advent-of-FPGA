`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2025 02:59:29
// Design Name: 
// Module Name: puzzle4_part1
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


module puzzle4_part1#(
    parameter ROW_SIZE = 160,
    parameter MODULAR_SIZE = 32,
    parameter INDEX_U = 1'd0,
    parameter INDEX_M = 1'd1,
    //parameter INDEX_L = 2'd2,
    parameter OUTPUT_WIDTH = 'd16
)(
    input       wire                                       clk,
    input       wire                                       reset,
    input       wire                                       enable,
    input       wire        [MODULAR_SIZE -1: 0]           in_data,
    output      reg         [OUTPUT_WIDTH -1: 0]           out_sum
    );

    localparam MODULAR_BITS = $clog2(MODULAR_SIZE);
    localparam REAL_ROW_SIZE = ((ROW_SIZE + MODULAR_SIZE - 1) / MODULAR_SIZE) * MODULAR_SIZE;
    localparam WORD_INDEX_BITS = $clog2(REAL_ROW_SIZE >> MODULAR_BITS);
    localparam NO_OF_WORDS = REAL_ROW_SIZE >> MODULAR_BITS;

    // Instantiating the word_index_counter that goes from 0 to NO_OF_WORDS -1
    wire [WORD_INDEX_BITS -1: 0] word_index_counter;
    word_index_counter#(
        .ROW_SIZE(ROW_SIZE),
        .MODULAR_SIZE(MODULAR_SIZE)
    ) wic_inst (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .out_word_index(word_index_counter)
    );

    //Instantiating the ring_row_index for generating the row indices
    wire mux_sel_u, mux_sel_m;
    ring_row_index#(
        .ROW_SIZE(ROW_SIZE),
        .MODULAR_SIZE(MODULAR_SIZE),
        .INDEX_U(INDEX_U),
        .INDEX_M(INDEX_M)
    ) rri_inst (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .in_word_index(word_index_counter),
        .out_mux_sel_u(mux_sel_u),
        .out_mux_sel_m(mux_sel_m)
    );

    // Instantiating the three storage rows
    wire [MODULAR_SIZE +2 -1: 0] out_row_0, out_row_1;
    row_reg#(
        .ROW_SIZE(ROW_SIZE),
        .MODULAR_SIZE(MODULAR_SIZE),
        .INDEX_U(INDEX_U),
        .INDEX_M(INDEX_M)
    ) rr_u_inst (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .in_row_data(in_data),
        .in_row_index(mux_sel_u),
        .in_word_index(word_index_counter),
        .out_reg_data(out_row_0)
    );
    row_reg#(
        .ROW_SIZE(ROW_SIZE),
        .MODULAR_SIZE(MODULAR_SIZE),
        .INDEX_U(INDEX_U),
        .INDEX_M(INDEX_M)
    ) rr_m_inst (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .in_row_data(in_data),
        .in_row_index(mux_sel_m),
        .in_word_index(word_index_counter),
        .out_reg_data(out_row_1)
    );

    reg last_bit;
    reg upper_bit;
    always @(posedge clk) begin
        last_bit <= in_data[0];
        upper_bit <= upper_row_data[MODULAR_SIZE];
    end

    // Data Muxes to select between which data to pass as upper row, middle row and lower row
    wire [0 : MODULAR_SIZE +2 -1] upper_row_data, upper_row_data1, middle_row_data, lower_row_data;
    data_mux_4x1#(
        .DATA_WIDTH(MODULAR_SIZE +2)
    ) dmu_inst (
        .in_data_0(out_row_0),
        .in_data_1(out_row_1),
        .sel(mux_sel_u),
        .out_data(upper_row_data1)
    );
    assign upper_row_data = (word_index_counter == 'd0) ? {1'b0, upper_row_data1[1: MODULAR_SIZE +1]} : {upper_bit, upper_row_data1[1: MODULAR_SIZE +1]};
    
    data_mux_4x1#(
        .DATA_WIDTH(MODULAR_SIZE +2)
    ) dmm_inst (
        .in_data_0(out_row_0),
        .in_data_1(out_row_1),
        .sel(mux_sel_m),
        .out_data(middle_row_data)
    );

    assign lower_row_data = (word_index_counter == 'd0) ? {1'b0, in_data, 1'b0} : {last_bit, in_data, 1'b0};

    // Moving to decode how which place in the middle row has fewer than 4 '1's
    wire [3:0] count_ones_result [0: MODULAR_SIZE -1 -1];
    wire [0 : MODULAR_SIZE +2 -1] l_shifted, r_shifted, ul_shifted, ur_shifted, ll_shifted, lr_shifted;
    wire [0: MODULAR_SIZE -1 -1] result_vector;
    assign l_shifted = middle_row_data << 1;
    assign r_shifted = middle_row_data >> 1;
    assign ul_shifted = upper_row_data << 1;
    assign ur_shifted = upper_row_data >> 1;
    assign ll_shifted = lower_row_data << 1;
    assign lr_shifted = lower_row_data >> 1;

    genvar i;
    generate
        for(i = 1; i < MODULAR_SIZE; i = i +1) begin : result_vector_gen
            count_ones c_inst(
                .a({upper_row_data[i], lower_row_data[i], l_shifted[i], r_shifted[i], ul_shifted[i], ur_shifted[i], ll_shifted[i], lr_shifted[i]}),
                .b(count_ones_result[i-1])
            );
            assign result_vector[i-1] = ((count_ones_result[i-1] < 'd4) ? 1'b1 : 1'b0) && middle_row_data[i];
        end
    endgenerate
    
    // Handling the last bit of middle row properly, basically storing the sum in a register for the next computationm cycke
    reg [3:0] last_index_count_ones;
    wire [3:0] last_index_count_ones_next;
    count_ones c_inst(
        .a({upper_row_data[MODULAR_SIZE], lower_row_data[MODULAR_SIZE], l_shifted[MODULAR_SIZE], r_shifted[MODULAR_SIZE], ul_shifted[MODULAR_SIZE], ur_shifted[MODULAR_SIZE], ll_shifted[MODULAR_SIZE], lr_shifted[MODULAR_SIZE]}),
        .b(last_index_count_ones_next)
    );
    always @(posedge clk) begin
        if(reset) begin
            last_index_count_ones <= 'd0;
        end else if (enable) begin
            last_index_count_ones <= last_index_count_ones_next;
        end
    end


    // Summing up the result_vector to get the final output
    wire [MODULAR_BITS: 0] sum_result;
    count_ones_32 cos32_inst(
        .a({result_vector, 1'b0}),
        .b(sum_result)
    );

    // Final FF stage of maintating the output
    always @(posedge clk) begin
        if(reset) begin
            out_sum <= 'd0;
        end else if (enable) begin
            if(word_index_counter != NO_OF_WORDS -1) begin
                out_sum <= out_sum + sum_result + (((last_index_count_ones + lower_row_data[1]) < 'd4 ? 1'b1 : 1'b0) && middle_row_data[0]);
            end else begin
                out_sum <= out_sum + sum_result + (((last_index_count_ones + lower_row_data[1]) < 'd4 ? 1'b1 : 1'b0) && middle_row_data[0]) + (((last_index_count_ones_next < 'd4) ? 1'b1 : 1'b0) && middle_row_data[MODULAR_SIZE]);
            end
        end
    end
endmodule