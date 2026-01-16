`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2026 16:22:04
// Design Name: 
// Module Name: end_controller
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


module end_controller#(
    parameter BRAM_ROWS = 240,
    parameter MODULAR_SIZE = 32,
    parameter NO_OF_WORDS = 32
)(
    input       wire                                clk,
    input       wire                                reset,
    input       wire                                start_process,
    input       wire                                FIFO_empty,
    input       wire    [$clog2(BRAM_ROWS) -1: 0]   in_FIFO_data,
    input       wire    [BRAM_ROWS -1: 0]           affected_rows_already_in_FIFO,
    input       wire    [0: MODULAR_SIZE +2 -1]     BRAM_read_data,
    input       wire                                u_aff,
    input       wire                                ul_aff,
    input       wire                                ur_aff,
    input       wire                                m_aff,
    input       wire                                ml_aff,
    input       wire                                mr_aff,
    input       wire                                l_aff,
    input       wire                                ll_aff,
    input       wire                                lr_aff,
    input       wire    [0: MODULAR_SIZE -1]        in_result_vector,
    output      wire                                out_FIFO_re,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   out_BRAM_read_addr,
    output      reg     [0: MODULAR_SIZE +2 -1]     upper_upper_row,
    output      reg     [0: MODULAR_SIZE +2 -1]     upper_row,
    output      reg     [0: MODULAR_SIZE +2 -1]     middle_row,
    output      reg     [0: MODULAR_SIZE +2 -1]     lower_row,
    output      wire    [0: MODULAR_SIZE +2 -1]     lower_lower_row,
    output      wire                                out_FIFO_we1,
    output      wire                                out_FIFO_we2,
    output      wire                                out_FIFO_we3,
    output      wire                                out_FIFO_we4,
    output      wire                                out_FIFO_we5,
    output      wire                                out_FIFO_we6,
    output      wire                                out_FIFO_we7,
    output      wire                                out_FIFO_we8,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   out_FIFO_w_data1,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   out_FIFO_w_data2,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   out_FIFO_w_data3,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   out_FIFO_w_data4,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   out_FIFO_w_data5,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   out_FIFO_w_data6,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   out_FIFO_w_data7,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   out_FIFO_w_data8,
    output      wire                                out_calc_pulse,
    output      reg                                 valid_read_and_calc,
    output      wire                                done_all,
    output      wire                                BRAM_we,
    output      wire    [$clog2(BRAM_ROWS) -1: 0]   BRAM_write_addr,
    output      wire    [0: MODULAR_SIZE +2 -1]     BRAM_write_data

    );

    // Read FIFO part of the controller

    // reg vaild_read_and_calc;
    reg start_process_pulse1;
    wire start_process_pulse;
    reg [2:0] counter_pops_bram;
    reg mask_write_signals;
    wire change_in_0_idx, change_in_last_idx;

    always @(posedge clk) begin
        if (reset) begin
            mask_write_signals <= 1'b0;
        end else begin
            if (start_process && counter_pops_bram == 'd3) begin
                mask_write_signals <= 1'b1;
            end
            else begin
                mask_write_signals <= 1'b0;
            end
        end
    end

    always @(posedge clk) begin
        if (reset) begin
            start_process_pulse1 <= 1'b0;
        end else begin
            if (start_process && !start_process_pulse1) begin
                start_process_pulse1 <= 1'b1;
            end
        end
    end

    assign start_process_pulse = start_process && !start_process_pulse1;

    assign out_FIFO_re = (start_process_pulse || (counter_pops_bram == 'd7)) && start_process;
    assign out_calc_pulse = counter_pops_bram == 'd4;

    // wire [1: 0] num_BRAM_pops1, num_BRAM_pops;
    // assign num_BRAM_pops1 = in_FIFO_data == 'd0 ? 2'd2 :
    //                        (in_FIFO_data == BRAM_ROWS - 'd1 ? 2'd2 : 2'd3);
    // assign num_BRAM_pops = (in_FIFO_data == prev_in_FIFO_data) ? 2'd0 : 
    //                        (in_FIFO_data == prev_in_FIFO_data + 1'd1 ? 2'd1 : num_BRAM_pops1);
    
    
    always @(posedge clk) begin
        if (reset) begin
            counter_pops_bram <= 'd0;
        end else begin
            // if (out_FIFO_re) begin
            //     counter_pops_bram <= 'd0;
            if (counter_pops_bram < 'd4) begin
                counter_pops_bram <= counter_pops_bram + 'd1;
            end
            else if (counter_pops_bram == 'd4 && (change_in_0_idx || change_in_last_idx)) begin
                counter_pops_bram <= 'd5;
            end
            else if (counter_pops_bram == 'd4) begin
                counter_pops_bram <= 'd7;
            end
            else if (counter_pops_bram == 'd5 && (change_in_0_idx && change_in_last_idx)) begin
                counter_pops_bram <= 'd6;
            end
            else if (counter_pops_bram == 'd5) begin
                counter_pops_bram <= 'd7;
            end
            else if (counter_pops_bram == 'd6) begin
                counter_pops_bram <= 'd7;
            end
            else if (counter_pops_bram == 'd7 && start_process) begin
                counter_pops_bram <= 'd0;
            end
        end
    end

    assign out_BRAM_read_addr = counter_pops_bram == 'd4 && change_in_0_idx ? (in_FIFO_data - 'd1) :
                                (counter_pops_bram == 'd4 && change_in_last_idx ? (in_FIFO_data + 'd1) :
                                (counter_pops_bram == 'd5 && change_in_last_idx ? (in_FIFO_data + 'd1) :
                                (counter_pops_bram == 'd7 ? in_FIFO_data - 2*NO_OF_WORDS : 
                                (counter_pops_bram == 'd0 ? (in_FIFO_data - NO_OF_WORDS) :
                                (counter_pops_bram == 'd1 ? (in_FIFO_data) :
                                (counter_pops_bram == 'd2 ? (in_FIFO_data + NO_OF_WORDS) :
                                (counter_pops_bram == 'd3 ? (in_FIFO_data + 2*NO_OF_WORDS) :
                                'd0)))))));

    // reg [0: MODULAR_SIZE + 2 -1] upper_upper_row, upper_row, middle_row, lower_row;
    // wire [0: MODULAR_SIZE + 2 -1 + 3] lower_lower_row;

    always @(posedge clk) begin
        if (reset) begin
            upper_upper_row <= 'd0;
            upper_row <= 'd0;
            middle_row <= 'd0;
            lower_row <= 'd0;
        end else begin
            if(counter_pops_bram == 'd0) begin
                if(in_FIFO_data <= 2*NO_OF_WORDS - 'd1) begin
                    upper_upper_row <= 'd0;
                end else begin
                    upper_upper_row <= BRAM_read_data;
                end
            end
            if(counter_pops_bram == 'd1) begin
                if(in_FIFO_data <= NO_OF_WORDS - 'd1) begin
                    upper_row <= 'd0;
                end else begin
                    upper_row <= BRAM_read_data;
                end
            end
            if(counter_pops_bram == 'd2) begin
                middle_row <= BRAM_read_data;
            end
            if(counter_pops_bram == 'd3) begin
                if(in_FIFO_data >= BRAM_ROWS - NO_OF_WORDS) begin
                    lower_row <= 'd0;
                end else begin
                    lower_row <= BRAM_read_data;
                end
            end
        end
    end

    assign lower_lower_row = ((in_FIFO_data >= BRAM_ROWS - 2*NO_OF_WORDS) ? 'd0 : BRAM_read_data);

    // Write to FIFO part of the controller
    reg [$clog2(BRAM_ROWS) -1: 0] in_FIFO_data_delayed;
    always @(posedge clk) begin
        if (reset) begin
            in_FIFO_data_delayed <= 'd0;
        end else begin
            if(counter_pops_bram == 'd7) begin
                in_FIFO_data_delayed <= in_FIFO_data;
            end
        end
    end

    assign w_ul = mask_write_signals && (ul_aff && !affected_rows_already_in_FIFO[in_FIFO_data - NO_OF_WORDS -'d1]);
    assign w_u = mask_write_signals && (u_aff && !affected_rows_already_in_FIFO[in_FIFO_data - NO_OF_WORDS]);
    assign w_ur = mask_write_signals && (ur_aff && !affected_rows_already_in_FIFO[in_FIFO_data - NO_OF_WORDS + 'd1]);
    assign w_m = mask_write_signals && m_aff;
    assign w_ml = mask_write_signals && (ml_aff && !affected_rows_already_in_FIFO[in_FIFO_data - 'd1]);
    assign w_mr = mask_write_signals && (mr_aff && !affected_rows_already_in_FIFO[in_FIFO_data + 'd1]);
    assign w_l = mask_write_signals && (l_aff && !affected_rows_already_in_FIFO[in_FIFO_data + NO_OF_WORDS]);
    assign w_ll = mask_write_signals && (ll_aff && !affected_rows_already_in_FIFO[in_FIFO_data + NO_OF_WORDS - 'd1]);
    assign w_lr = mask_write_signals && (lr_aff && !affected_rows_already_in_FIFO[in_FIFO_data + NO_OF_WORDS + 'd1]);

    reg out_FIFO_we1_internal;
    always @(posedge clk) begin
        if (reset) begin
            out_FIFO_we1_internal <= 1'b0;
        end else begin
            if (counter_pops_bram == 'd4) begin
                out_FIFO_we1_internal <= w_lr;
            end else begin
                out_FIFO_we1_internal <= 1'b0;
            end
        end
    end
    assign out_FIFO_we1 = w_ul || out_FIFO_we1_internal && !start_process_pulse;
    assign out_FIFO_we2 = w_u && !start_process_pulse;
    assign out_FIFO_we3 = w_ur && !start_process_pulse;
    assign out_FIFO_we4 = w_ml && !start_process_pulse;
    assign out_FIFO_we5 = w_m && !start_process_pulse;
    assign out_FIFO_we6 = w_mr && !start_process_pulse;
    assign out_FIFO_we7 = w_ll && !start_process_pulse;
    assign out_FIFO_we8 = w_l && !start_process_pulse;

    assign out_FIFO_w_data1 = !out_FIFO_we1_internal ? in_FIFO_data - NO_OF_WORDS -'d1 : in_FIFO_data_delayed + NO_OF_WORDS +'d1;
    assign out_FIFO_w_data2 = in_FIFO_data - NO_OF_WORDS;
    assign out_FIFO_w_data3 = in_FIFO_data - NO_OF_WORDS + 'd1;
    assign out_FIFO_w_data4 = in_FIFO_data - 'd1;
    assign out_FIFO_w_data5 = in_FIFO_data;
    assign out_FIFO_w_data6 = in_FIFO_data + 'd1;
    assign out_FIFO_w_data7 = in_FIFO_data + NO_OF_WORDS - 'd1;
    assign out_FIFO_w_data8 = in_FIFO_data + NO_OF_WORDS;

    assign skip_read_and_calc = (counter_pops_bram == 'd4) && FIFO_empty && (w_u || w_m || w_l || w_ul || w_ur || w_ml || w_mr || w_ll || w_lr);
    assign done_all = (counter_pops_bram == 'd4) && FIFO_empty && !(w_u || w_m || w_l || w_ul || w_ur || w_ml || w_mr || w_ll || w_lr);

    assign BRAM_we = (counter_pops_bram == 'd4) ? mask_write_signals && |(in_result_vector) : ((counter_pops_bram == 'd5 || counter_pops_bram == 'd6));
    assign BRAM_write_addr = (counter_pops_bram == 'd4) ? in_FIFO_data_delayed : 
                             ((counter_pops_bram == 'd5 && change_in_0_idx) ? in_FIFO_data_delayed - 'd1:
                             ((counter_pops_bram == 'd5 && change_in_last_idx) ? in_FIFO_data_delayed + 'd1:
                             ((counter_pops_bram == 'd6) ? in_FIFO_data_delayed + 'd1 : 'd0)));
    assign BRAM_write_data = (counter_pops_bram == 'd4) ? middle_row & ~({1'b0, in_result_vector, 1'b0}): 
                             ((counter_pops_bram == 'd5 && change_in_0_idx) ? {BRAM_read_data[0: MODULAR_SIZE], 1'b0}:
                             ((counter_pops_bram == 'd5 && change_in_last_idx) ? {1'b0, BRAM_read_data[1: MODULAR_SIZE +1]}:
                             ((counter_pops_bram == 'd6) ? {1'b0, BRAM_read_data[1: MODULAR_SIZE +1]} : 'd0)));

    assign change_in_0_idx = middle_row[1] && in_result_vector[0];
    assign change_in_last_idx = middle_row[MODULAR_SIZE] && in_result_vector[MODULAR_SIZE -1];

    always @(posedge clk) begin
        if (reset) begin
            valid_read_and_calc <= 1'b0;
        end else begin
            if (counter_pops_bram == 'd4) begin
                valid_read_and_calc <= skip_read_and_calc;
            end
        end
    end

endmodule