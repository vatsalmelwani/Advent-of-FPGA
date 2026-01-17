`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2025 17:24:19
// Design Name: 
// Module Name: puzzle3_part2
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


module puzzle3_part2 #(
    parameter IN_WIDTH = 336,
    parameter OUT_WIDTH = 64,
    parameter NUM_DIGITS = 100,
    parameter SELECT_NUM_DIGITS = 12
)(
    input       wire                            clk,
    input       wire                            rst,
    input       wire                            start,
    input       wire        [IN_WIDTH-1:0]      in_num,
    output      reg         [OUT_WIDTH-1:0]     out_num,
    output      wire                            busy,
    output      wire                            done
    );

    // Converting the input number to BCD format, 4 bits for each digit.
    wire [NUM_DIGITS*4 -1:0] bcd_num;
    BCD_conv #(
        .IN_WIDTH(IN_WIDTH),
        .OUT_DIGITS(NUM_DIGITS)
    ) bcd_conv_inst (
        .inp_val(in_num),
        .out_val(bcd_num)
    );

    // Converting 4 digit to decimal representation
    wire [9:0] dec_num [0:NUM_DIGITS-1];
    genvar i;
    generate
        for (i = 1; i <= NUM_DIGITS; i = i + 1) begin : GEN_BCD_TO_DEC
            bcd_to_dec u_bcd_to_dec (
                .bcd ( bcd_num[i*4 -1 -: 4] ),
                .dec ( dec_num[i-1] )
            );
        end
    endgenerate

    // Instatiating the priortiy encoder
    wire [6:0] enc_op;
    wire       enc_valid;
    priority_encoder priority_encoder_inst (
        .in         ({{{28}{1'b0}}, enc_inp}),
        .out        (enc_op),
        .valid      (enc_valid)
    );

    // FSM and encoder input generation
    wire [3:0] fsm_mux_sel;
    wire [99:0] enc_inp;
    wire fsm_a_done, fsm_a_done_wire;

    reg [SELECT_NUM_DIGITS*4 -1:0] fsm_out_num;
    wire [3:0] fsm_out_num_wire;

    reg [6:0] outer_max_idx;
    wire [6:0] fsm_outer_max_idx;

    wire start_fsm;
    assign start_fsm = start || fsm_a_done;

    FSM_for_max #(
        .STATE_BITS (4),
        .NUM_DIGITS (NUM_DIGITS)
    ) fsm_for_max_inst (
        .clk                (clk),
        .rst                (rst),
        .start              (start_fsm),
        .in_enc_outp        (enc_op),
        .in_enc_valid       (enc_valid),
        .in_lower_bound     (7'd12 - {{{3}{1'b0}}, counter}),
        .in_last_index_num  (bcd_num[('d12-counter)*4 -1 -: 4]),
        .mux_sel            (fsm_mux_sel),
        .a_done             (fsm_a_done),
        .a_done_wire        (fsm_a_done_wire),
        .out_num            (fsm_out_num_wire),
        .outer_max_idx_wire (fsm_outer_max_idx)
    );

    always @(posedge clk) begin
        if (rst) begin
            outer_max_idx <= NUM_DIGITS+1'd1;
        end else if (fsm_a_done_wire) begin
            outer_max_idx <= fsm_outer_max_idx;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            fsm_out_num <= {NUM_DIGITS*4{1'b0}};
        end else if (fsm_a_done_wire) begin
            fsm_out_num[(counter+1)*4 -1 -: 4] <= fsm_out_num_wire;
        end
    end

    reg [$clog2(SELECT_NUM_DIGITS)-1:0] counter;
    always @(posedge clk) begin
        if (rst) begin
            counter <= 'd0;
        end else if (counter == SELECT_NUM_DIGITS-1 && fsm_a_done_wire) begin
            counter <= 'd0;
        end else if (fsm_a_done_wire) begin
            counter <= counter + 'd1;
        end
    end

    genvar j;
    generate
        for (j = 0; j < NUM_DIGITS; j = j + 1) begin
            assign enc_inp[j] = (j >= outer_max_idx ? 1'b0 : dec_num[j][fsm_mux_sel]);
        end
    endgenerate

    // BCD to Binary Conversion for adding it to the final sum
    wire [43:0] final_bin_num;
    bcd_to_bin_conv #(
        .IN_BCD_DIGITS (SELECT_NUM_DIGITS),
        .OUT_BIN_WIDTH (44)
    ) bcd_to_bin_conv_inst (
        .in_bcd    (fsm_out_num),
        .out_bin   (final_bin_num)
    );
    // Maintaining the final sum
    always @(posedge clk) begin
        if (rst) begin
            out_num <= 16'd0;
        end else if (fsm_a_done && counter == SELECT_NUM_DIGITS - 1) begin
            out_num <= out_num + final_bin_num;
        end
    end
endmodule