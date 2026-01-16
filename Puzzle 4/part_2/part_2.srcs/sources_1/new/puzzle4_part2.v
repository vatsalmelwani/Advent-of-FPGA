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


module puzzle4_part2#(
    parameter ROW_SIZE = 160,
    parameter MODULAR_SIZE = 32,
    parameter INDEX_U = 1'd0,
    parameter INDEX_M = 1'd1,
    //parameter INDEX_L = 2'd2,
    parameter OUTPUT_WIDTH = 'd16
)(
    input       wire                                       clk,
    input       wire                                       reset,
    input       wire                                       top_enable,
    input       wire        [MODULAR_SIZE -1: 0]           in_data_top,
    output      reg         [OUTPUT_WIDTH -1: 0]           out_sum
    );

    localparam MODULAR_BITS = $clog2(MODULAR_SIZE);
    localparam REAL_ROW_SIZE = ((ROW_SIZE + MODULAR_SIZE - 1) / MODULAR_SIZE) * MODULAR_SIZE;
    localparam WORD_INDEX_BITS = $clog2(REAL_ROW_SIZE >> MODULAR_BITS);
    localparam NO_OF_WORDS = REAL_ROW_SIZE >> MODULAR_BITS;
    localparam BRAM_ROWS = (REAL_ROW_SIZE/MODULAR_SIZE) * ROW_SIZE;

    reg enable;
    always @(posedge clk) begin
        if (reset) begin
            enable <= 1'b0;
        end else begin
            enable <= top_enable;
        end
    end

    reg [MODULAR_SIZE -1: 0] in_data;
    always @(posedge clk) begin
        if (reset) begin
            in_data <= 'd0;
        end else begin
            in_data <= in_data_top;
        end
    end

    // Instatiation of signals and regs:
    wire [MODULAR_SIZE +2 -1 : 0] BRAM_data_out, FIFO_u_row, FIFO_m_row, FIFO_l_row, FIFO_uu_row, FIFO_ll_row;
    reg [$clog2(BRAM_ROWS) -1: 0] lower_row_index;
    wire [0 : MODULAR_SIZE +2 -1] upper_row_data, upper_row_data1, middle_row_data, lower_row_data, middle_row_data1;
    wire done_initial, FIFO_empty, FIFO_re1, controller_FIFO_we1, controller_FIFO_we2, controller_calc_pulse;
    wire controller_FIFO_we3, controller_FIFO_we4, controller_FIFO_we5, controller_FIFO_we6, controller_FIFO_we7, controller_FIFO_we8;
    wire controller_skip_read_and_calc, controller_done_all;
    wire [$clog2(BRAM_ROWS) -1: 0] FIFO_d1_out, controller_BRAM_raddr, controller_FIFO_w_data1, controller_FIFO_w_data2, controller_FIFO_w_data3, controller_FIFO_w_data4, controller_FIFO_w_data5, controller_FIFO_w_data6, controller_FIFO_w_data7, controller_FIFO_w_data8;
    reg calculation_end1;
    wire calculation_end;
    wire EC_BRAM_we;
    wire [0: MODULAR_SIZE +2 -1] EC_BRAM_wdata;
    wire [$clog2(BRAM_ROWS) -1: 0] EC_BRAM_waddr;
    always @(posedge clk) begin
        if (reset) begin
            calculation_end1 <= 1'b0;
        end else if (controller_done_all && done_initial) begin
            calculation_end1 <= 1'b1;
        end
    end
    assign calculation_end = calculation_end1 || controller_done_all;

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
    
    data_mux_4x1#(
        .DATA_WIDTH(MODULAR_SIZE +2)
    ) dmu_inst (
        .in_data_0(out_row_0),
        .in_data_1(out_row_1),
        .sel(mux_sel_u),
        .out_data(upper_row_data1)
    );
    
    
    data_mux_4x1#(
        .DATA_WIDTH(MODULAR_SIZE +2)
    ) dmm_inst (
        .in_data_0(out_row_0),
        .in_data_1(out_row_1),
        .sel(mux_sel_m),
        .out_data(middle_row_data1)
    );

    wire middle_row_zero = middle_row_data1[0];

    assign middle_row_data = done_initial ? FIFO_m_row : {(word_index_counter == 'd0 ? 1'b0: mem_write_1_to_32[MODULAR_SIZE-1]), middle_row_data1[1: MODULAR_SIZE +2 -1]};
    assign lower_row_data = done_initial ? FIFO_l_row : ((word_index_counter == 'd0) ? {1'b0, in_data, in_data_top[MODULAR_SIZE-1]} : {last_bit, in_data, ((word_index_counter == NO_OF_WORDS-1) ? 1'b0 : in_data_top[MODULAR_SIZE-1])});

    wire sel_upper_row_data_mux = lower_row_index > (2*NO_OF_WORDS - 'd2);
    // assign upper_row_data = sel_upper_row_data_mux ? BRAM_data_out : (word_index_counter == 'd0) ? {1'b0, upper_row_data1[1: MODULAR_SIZE +1]} : {upper_bit, upper_row_data1[1: MODULAR_SIZE +1]};
    assign upper_row_data = done_initial ? FIFO_u_row : (sel_upper_row_data_mux ? BRAM_data_out : 'd0);
    // Moving to decode how which place in the middle row has fewer than 4 '1's
    wire [3:0] count_ones_result [0: MODULAR_SIZE -1];
    wire [0 : MODULAR_SIZE +2 -1] l_shifted, r_shifted, ul_shifted, ur_shifted, ll_shifted, lr_shifted;
    wire [0: MODULAR_SIZE -1] result_vector;
    assign l_shifted = middle_row_data << 1;
    assign r_shifted = middle_row_data >> 1;
    assign ul_shifted = upper_row_data << 1;
    assign ur_shifted = upper_row_data >> 1;
    assign ll_shifted = lower_row_data << 1;
    assign lr_shifted = lower_row_data >> 1;

    genvar i;
    generate
        for(i = 1; i < MODULAR_SIZE +1; i = i +1) begin : result_vector_gen
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
        .a(result_vector),
        .b(sum_result)
    );

    // Instantiating the BRAM for storing the matrix
    
    reg we_matrix_data_next, we_matrix_data;
    wire [MODULAR_SIZE +2 -1 : 0] mem_write_data_reg;

    always @(posedge clk) begin
        if(reset) begin
            we_matrix_data_next <= 1'b0;
        end else if (!we_matrix_data_next && enable && (word_index_counter == NO_OF_WORDS-1)) begin
            we_matrix_data_next <= 1'b1;
        end
        we_matrix_data <= we_matrix_data_next;
    end

    // Deoding the data to be written to BRAM. It is 34 bits. Bit 1 to 31 come directly from 
    // result_vector and middle_row_data, delayed by one cycle. Bit 32nd comes from last_index_count
    // _ones and middle_row_data[0], not flopped. Then bit 33rd comes from result_vector's first bit.
    // Then, bit 0 is jsut Bit 32nd flopped, i.e. delayed by one cycle.

    //Hence, first retrieveing the flopped result_vector part

    reg [0: MODULAR_SIZE -1] result_vector_reg;
    always @(posedge clk) begin
        if(reset) begin
            result_vector_reg <= 'd0;
        end else if (enable) begin
            result_vector_reg <= (~result_vector) & middle_row_data[1: MODULAR_SIZE];
        end
    end

    wire [0: MODULAR_SIZE -1 ] mem_write_1_to_32;
    assign mem_write_1_to_32 = result_vector_reg;

    wire mem_write_33;
    assign mem_write_33 = (word_index_counter == 'd0) ? 1'b0 : !(result_vector[0]) && middle_row_data[1];

    reg mem_write_0;
    always @(posedge clk) begin
        if(reset) begin
            mem_write_0 <= 1'b0;
        end else if (enable) begin
            mem_write_0 <= mem_write_1_to_32[MODULAR_SIZE -1];
        end
    end

    assign mem_write_data_reg = {mem_write_0, mem_write_1_to_32, mem_write_33};

    reg [$clog2(BRAM_ROWS) -1: 0]mem_w_addr;
    always @(posedge clk) begin
        if(reset) begin
            mem_w_addr <= 1'b0;
        end else if (we_matrix_data && enable) begin
            mem_w_addr <= mem_w_addr + 'd1;
        end
    end
    mem_element#(
        .ROW_WIDTH(MODULAR_SIZE + 'd2),
        .NUM_ROWS(BRAM_ROWS)
    ) mem_inst (
        .clk(clk),
        .we(done_initial ? EC_BRAM_we : we_matrix_data && (lower_row_index < BRAM_ROWS + NO_OF_WORDS)),
        .w_addr(done_initial ? EC_BRAM_waddr : mem_w_addr),
        .w_data(done_initial ? EC_BRAM_wdata : mem_write_data_reg),
        .r_addr(done_initial ? controller_BRAM_raddr : (lower_row_index - (2*NO_OF_WORDS - 'd2))),
        .r_data(BRAM_data_out)
    );

    // Before detection of affected rows, it is better to store the upper row to get the upper to upper row for better affected detection
    reg [0: MODULAR_SIZE +2 -1] upper_row_delayed [0: NO_OF_WORDS -1];
    integer j;
    always @(posedge clk) begin
        if (reset) begin
            for (j = 0; j < NO_OF_WORDS; j = j +1) begin
                upper_row_delayed[j] <= 'd0;
            end
        end else if (enable) begin
            upper_row_delayed[0] <= upper_row_data;
            for(j = 1; j < NO_OF_WORDS; j = j +1) begin
                upper_row_delayed[j] <= upper_row_delayed[j-1];
            end
        end
    end
    // Detection of affected rows
    wire upper_aff, upper_left_aff, upper_right_aff, middle_aff, middle_left_aff, middle_right_aff, lower_aff, lower_left_aff, lower_right_aff;
    wire upper_aff1, upper_left_aff1, upper_right_aff1, middle_aff1, middle_left_aff1;
    
    //detection module to be written here as ports are not allowed to be 2D in verilog, not using sv
    //wire [0: MODULAR_SIZE -1] u_l, u_r, l_l, l_r, u, l, m_l, m_r, uu_l, uu_r, l, uu, ll, ll_r, ll_l;
    wire [0: MODULAR_SIZE -1] u, u_l, u_r, m, m_l, m_r, l, l_l, l_r, uu, uu_l, uu_r, ll, ll_l, ll_r;
    wire [0: MODULAR_SIZE +2 -1] upper_upper_row_data;
    wire [0: MODULAR_SIZE +2 -1] lower_lower_row_data;
    assign lower_lower_row_data = done_initial ? FIFO_ll_row : 'd0;
    assign upper_upper_row_data = done_initial ? FIFO_uu_row : upper_row_delayed[NO_OF_WORDS -1];
    assign u_l = upper_row_data[0: MODULAR_SIZE -1];
    assign u_r = upper_row_data[2: MODULAR_SIZE +1];
    assign l_l = lower_row_data[0: MODULAR_SIZE -1];
    assign l_r = lower_row_data[2: MODULAR_SIZE +1];
    assign u = upper_row_data[1: MODULAR_SIZE];
    assign l = lower_row_data[1: MODULAR_SIZE];
    assign m_l = middle_row_data[2: MODULAR_SIZE +1];
    assign m_r = middle_row_data[0: MODULAR_SIZE -1];
    assign uu_l = upper_upper_row_data[0: MODULAR_SIZE -1];
    assign uu_r = upper_upper_row_data[2: MODULAR_SIZE +1];
    assign uu = upper_upper_row_data[1: MODULAR_SIZE];
    assign ll = lower_lower_row_data[1: MODULAR_SIZE];
    assign ll_l = lower_lower_row_data[0: MODULAR_SIZE -1];
    assign ll_r = lower_lower_row_data[2: MODULAR_SIZE +1];

    assign upper_left_aff = result_vector[0] && upper_row_data[0];
    assign upper_right_aff = result_vector[MODULAR_SIZE -1] && upper_row_data[MODULAR_SIZE +1];
    assign middle_left_aff = result_vector[0] && middle_row_data[0];
    assign middle_right_aff = result_vector[MODULAR_SIZE -1] && middle_row_data[MODULAR_SIZE +1];
    assign lower_left_aff = result_vector[0] && lower_row_data[0];
    assign lower_right_aff = result_vector[MODULAR_SIZE -1] && lower_row_data[MODULAR_SIZE +1];

    wire [3:0] count_ones_upper [0: MODULAR_SIZE -1];
    wire [3:0] count_ones_lower [0: MODULAR_SIZE -1];
    wire [0: MODULAR_SIZE -1] affected_upper_signals, affected_lower_signals, affected_middle_signals;


    genvar k;
    generate
        count_ones c_inst_up(
            .a({uu[0], middle_row_data[1], u_l[0], u_r[0], uu_l[0], uu_r[0], m_r[0], m_l[0]}),
            .b(count_ones_upper[0])
        );
        assign affected_upper_signals[0] = u[0] && (count_ones_upper[0] >= 'd4) && (count_ones_upper[0] - result_vector[0] - result_vector[1] < 'd4);
        for(i = 1; i < MODULAR_SIZE-1; i = i +1) begin : result_vector_gen_for_upper_row
            count_ones c_inst(
                .a({uu[i], middle_row_data[i + 1], u_l[i], u_r[i], uu_l[i], uu_r[i], m_r[i], m_l[i]}),
                .b(count_ones_upper[i])
            );
            assign affected_upper_signals[i] = u[i] && (count_ones_upper[i] >= 'd4) && (count_ones_upper[i] - result_vector[i-1] - result_vector[i] - result_vector[i+1] < 'd4);
        end
        count_ones c_inst_misc1(
            .a({uu[MODULAR_SIZE-1], middle_row_data[MODULAR_SIZE], u_l[MODULAR_SIZE-1], u_r[MODULAR_SIZE-1], uu_l[MODULAR_SIZE-1], uu_r[MODULAR_SIZE-1], m_r[MODULAR_SIZE-1], m_l[MODULAR_SIZE-1]}),
            .b(count_ones_upper[MODULAR_SIZE-1])
        );
        assign affected_upper_signals[MODULAR_SIZE-1] = u[MODULAR_SIZE-1] && (count_ones_upper[MODULAR_SIZE-1] >= 'd4) && (count_ones_upper[MODULAR_SIZE-1] - result_vector[MODULAR_SIZE-2] - result_vector[MODULAR_SIZE-1] < 'd4);
    endgenerate
    assign upper_aff = |affected_upper_signals;

    generate
        count_ones c_inst_misc2(
            .a({ll[0], middle_row_data[1], ll_l[0], ll_r[0], l_r[0], l_l[0], m_r[0], m_l[0]}),
            .b(count_ones_lower[0])
        );
        assign affected_lower_signals[0] = l[0] && (count_ones_lower[0] >= 'd4) && (count_ones_lower[0] - result_vector[0] - result_vector[1] < 'd4);
        for(i = 1; i < MODULAR_SIZE-1; i = i +1) begin : result_vector_gen_for_upper_row_misc
            count_ones c_inst(
                .a({ll[i], middle_row_data[i + 1], ll_l[i], ll_r[i], l_r[i], l_l[i], m_r[i], m_l[i]}),
                .b(count_ones_lower[i])
            );
            assign affected_lower_signals[i] = l[i] && (count_ones_lower[i] >= 'd4) && (count_ones_lower[i] - result_vector[i-1] - result_vector[i] - result_vector[i+1] < 'd4);
        end
        count_ones c_inst_misc3(
            .a({ll[MODULAR_SIZE-1], middle_row_data[MODULAR_SIZE], ll_l[MODULAR_SIZE-1], ll_r[MODULAR_SIZE-1], l_r[MODULAR_SIZE-1], l_l[MODULAR_SIZE-1], m_r[MODULAR_SIZE-1], m_l[MODULAR_SIZE-1]}),
            .b(count_ones_lower[MODULAR_SIZE-1])
        );
        assign affected_lower_signals[MODULAR_SIZE-1] = l[MODULAR_SIZE-1] && (count_ones_lower[MODULAR_SIZE-1] >= 'd4) && (count_ones_lower[MODULAR_SIZE-1] - result_vector[MODULAR_SIZE-2] - result_vector[MODULAR_SIZE-1] < 'd4);
    endgenerate
    assign lower_aff = |affected_lower_signals;

    generate
        assign affected_middle_signals[0] = (middle_row_data[1] && (count_ones_result[0] >= 'd4) && ((count_ones_result[0] - result_vector[1]) < 'd4));
        for(i = 1; i < MODULAR_SIZE-1; i = i +1) begin : result_vector_gen_for_upper_row_miscx
            assign affected_middle_signals[i] = (middle_row_data[i+1] && (count_ones_result[i] >= 'd4) && ((count_ones_result[i] - result_vector[i-1] - result_vector[i+1]) < 'd4));
        end
        assign affected_middle_signals[MODULAR_SIZE-1] = (middle_row_data[MODULAR_SIZE] && (count_ones_result[MODULAR_SIZE-1] >= 'd4) && ((count_ones_result[MODULAR_SIZE-1] - result_vector[MODULAR_SIZE-2]) < 'd4));
    endgenerate
    assign middle_aff = |affected_middle_signals;
    

    // Maintaining a Queue of affected rows, will be processed after initial processing
    // Also making a memory element to keep the affected rows already pusehd to the FIFO, to not push again.
    reg [BRAM_ROWS -1: 0] affected_rows_already_in_FIFO;

    always @(posedge clk) begin
        if(reset) begin
            lower_row_index <= 'd0;
        end else if (enable && !done_initial) begin
            if (lower_row_index == 'd0 && word_index_counter == 0) begin
                lower_row_index <= 'd0;
            end else begin
                lower_row_index <= lower_row_index + 'd1;
            end
        end
    end


    always @(posedge clk) begin
        if(reset) begin
            affected_rows_already_in_FIFO <= 'd0;
        end else if (enable) begin
            if(done_initial && FIFO_re1 && !controller_skip_read_and_calc) begin
                affected_rows_already_in_FIFO[FIFO_d1_out] <= 1'b0;
            end
            if(!done_initial) begin
                if (upper_aff) begin
                    affected_rows_already_in_FIFO[lower_row_index - 2*NO_OF_WORDS + 'd1] <= 1'b1;
                end
                if (middle_aff) begin
                    affected_rows_already_in_FIFO[lower_row_index - NO_OF_WORDS + 'd1] <= 1'b1;
                end
                if (upper_left_aff) begin
                    affected_rows_already_in_FIFO[lower_row_index - 2*NO_OF_WORDS - 'd1 + 'd1] <= 1'b1;
                end
                if (upper_right_aff) begin
                    affected_rows_already_in_FIFO[lower_row_index - 2*NO_OF_WORDS + 'd1 + 'd1] <= 1'b1;
                end
                if (middle_left_aff) begin
                    affected_rows_already_in_FIFO[lower_row_index - NO_OF_WORDS - 'd1 + 'd1] <= 1'b1;
                end
            end else begin
                if(controller_FIFO_we1 && FIFO_d1_out != controller_FIFO_w_data1) begin
                    affected_rows_already_in_FIFO[controller_FIFO_w_data1] <= 1'b1;
                end
                if(controller_FIFO_we2) begin
                    affected_rows_already_in_FIFO[controller_FIFO_w_data2] <= 1'b1;
                end
                if(controller_FIFO_we3) begin
                    affected_rows_already_in_FIFO[controller_FIFO_w_data3] <= 1'b1;
                end
                if(controller_FIFO_we4) begin
                    affected_rows_already_in_FIFO[controller_FIFO_w_data4] <= 1'b1;
                end
                if(controller_FIFO_we5) begin
                    affected_rows_already_in_FIFO[controller_FIFO_w_data5] <= 1'b1;
                end
                if(controller_FIFO_we6) begin
                    affected_rows_already_in_FIFO[controller_FIFO_w_data6] <= 1'b1;
                end
                if(controller_FIFO_we7) begin
                    affected_rows_already_in_FIFO[controller_FIFO_w_data7] <= 1'b1;
                end
                if(controller_FIFO_we8) begin
                    affected_rows_already_in_FIFO[controller_FIFO_w_data8] <= 1'b1;
                end
            end
            if(done_initial && FIFO_re1 && !controller_skip_read_and_calc) begin
                affected_rows_already_in_FIFO[FIFO_d1_out] <= 1'b0;
            end
        end
    end

    FIFO_rows#(
        .NUM_ROWS(BRAM_ROWS),
        .ROW_SIZE($clog2(BRAM_ROWS))
    ) fifo_inst (
        .clk(clk),
        .reset(reset),
        .we1(done_initial ? controller_FIFO_we1 : (affected_rows_already_in_FIFO[lower_row_index - 2*NO_OF_WORDS -'d1 +'d1] ? 1'b0: upper_left_aff)),
        .we2(done_initial ? controller_FIFO_we2 : (affected_rows_already_in_FIFO[lower_row_index - 2*NO_OF_WORDS +'d1] ? 1'b0: upper_aff)),
        .we3(done_initial ? controller_FIFO_we3 : (affected_rows_already_in_FIFO[lower_row_index - 2*NO_OF_WORDS + 'd1 +'d1] ? 1'b0: upper_right_aff)),
        .we4(done_initial ? controller_FIFO_we4 : (affected_rows_already_in_FIFO[lower_row_index - NO_OF_WORDS - 'd1 +'d1] ? 1'b0: middle_left_aff)),
        .we5(done_initial ? controller_FIFO_we5 : (affected_rows_already_in_FIFO[lower_row_index - NO_OF_WORDS +'d1] ? 1'b0: middle_aff)),
        .we6(done_initial ? controller_FIFO_we6 : 1'b0),
        .we7(done_initial ? controller_FIFO_we7 : 1'b0),
        .we8(done_initial ? controller_FIFO_we8 : 1'b0),
        .din1(done_initial ? controller_FIFO_w_data1 : (lower_row_index - 2*NO_OF_WORDS -'d1 +'d1)),
        .din2(done_initial ? controller_FIFO_w_data2 : (lower_row_index - 2*NO_OF_WORDS +'d1)),
        .din3(done_initial ? controller_FIFO_w_data3 : (lower_row_index - 2*NO_OF_WORDS + 'd1 +'d1)),
        .din4(done_initial ? controller_FIFO_w_data4 : (lower_row_index - NO_OF_WORDS - 'd1 +'d1)),
        .din5(done_initial ? controller_FIFO_w_data5 : (lower_row_index - NO_OF_WORDS +'d1)),
        .din6(controller_FIFO_w_data6),
        .din7(controller_FIFO_w_data7),
        .din8(controller_FIFO_w_data8),
        .re1(done_initial ? FIFO_re1 && !controller_skip_read_and_calc: 1'b0),
        .dout1(FIFO_d1_out),
        .FIFO_empty(FIFO_empty)
    );

    // This finishes the first part of finding affected rows. Next part is to keep doing this until FIFO is empty.
    
    // ###### THE END OF BEGINNING ######

    // Instantiating the end controller which maintains the control signals for further processing.
    // Note that same resources will be used as initial processing, just with different inputs decided
    // by these control signals.

    assign done_initial = (lower_row_index > BRAM_ROWS + 2*NO_OF_WORDS - 'd2);

    end_controller#(
        .BRAM_ROWS(BRAM_ROWS),
        .MODULAR_SIZE(MODULAR_SIZE),
        .NO_OF_WORDS(NO_OF_WORDS)
    ) ec_inst (
        .clk(clk),
        .reset(reset),
        .start_process(done_initial),
        .FIFO_empty(FIFO_empty),
        .in_FIFO_data(FIFO_d1_out),
        .affected_rows_already_in_FIFO(affected_rows_already_in_FIFO),
        .BRAM_read_data(BRAM_data_out),
        .u_aff(upper_aff),
        .m_aff(middle_aff),
        .l_aff(lower_aff),
        .ul_aff(upper_left_aff),
        .ur_aff(upper_right_aff),
        .ml_aff(middle_left_aff),
        .mr_aff(middle_right_aff),
        .ll_aff(lower_left_aff),
        .lr_aff(lower_right_aff),
        .in_result_vector(result_vector),
        .out_FIFO_re(FIFO_re1),
        .out_BRAM_read_addr(controller_BRAM_raddr),
        .upper_upper_row(FIFO_uu_row),
        .upper_row(FIFO_u_row),
        .middle_row(FIFO_m_row),
        .lower_row(FIFO_l_row),
        .lower_lower_row(FIFO_ll_row),
        .out_FIFO_we1(controller_FIFO_we1),
        .out_FIFO_we2(controller_FIFO_we2),
        .out_FIFO_we3(controller_FIFO_we3),
        .out_FIFO_we4(controller_FIFO_we4),
        .out_FIFO_we5(controller_FIFO_we5),
        .out_FIFO_we6(controller_FIFO_we6),
        .out_FIFO_we7(controller_FIFO_we7),
        .out_FIFO_we8(controller_FIFO_we8),
        .out_FIFO_w_data1(controller_FIFO_w_data1),
        .out_FIFO_w_data2(controller_FIFO_w_data2),
        .out_FIFO_w_data3(controller_FIFO_w_data3),
        .out_FIFO_w_data4(controller_FIFO_w_data4),
        .out_FIFO_w_data5(controller_FIFO_w_data5),
        .out_FIFO_w_data6(controller_FIFO_w_data6),
        .out_FIFO_w_data7(controller_FIFO_w_data7),
        .out_FIFO_w_data8(controller_FIFO_w_data8),
        .out_calc_pulse(controller_calc_pulse),
        .valid_read_and_calc(controller_skip_read_and_calc),
        .done_all(controller_done_all),
        .BRAM_we(EC_BRAM_we),
        .BRAM_write_addr(EC_BRAM_waddr),
        .BRAM_write_data(EC_BRAM_wdata)
    );

    // Final FF stage of maintating the output
    always @(posedge clk) begin
        if(reset) begin
            out_sum <= 'd0;
        //end else if (enable && !calculation_end) begin
        end else if (enable) begin
            if(!done_initial) begin
                if(word_index_counter != NO_OF_WORDS -1) begin
                    out_sum <= out_sum + sum_result;// + (((last_index_count_ones + lower_row_data[1]) < 'd4 ? 1'b1 : 1'b0) && middle_row_data1[0]);
                end else begin
                    out_sum <= out_sum + sum_result;// + (((last_index_count_ones + lower_row_data[1]) < 'd4 ? 1'b1 : 1'b0) && middle_row_data1[0]) + (((last_index_count_ones_next < 'd4) ? 1'b1 : 1'b0) && middle_row_data[MODULAR_SIZE]);
                end
            end else begin
                if (controller_calc_pulse && !controller_skip_read_and_calc && !calculation_end1) begin
                    out_sum <= out_sum + sum_result;
                end
            end
        end
    end
endmodule