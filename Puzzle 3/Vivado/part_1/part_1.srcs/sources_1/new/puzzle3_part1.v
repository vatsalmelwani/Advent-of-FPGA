`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2025 17:24:19
// Design Name: 
// Module Name: puzzle3_part1
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


module puzzle3_part1 #(
    parameter IN_WIDTH = 336,
    parameter OUT_WIDTH = 16,
    parameter NUM_DIGITS = 100
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


    // Instantiating the mux to select the digit, control signals from FSM, i.e. mux_sel
    wire [3:0] mux_sel;
    reg [99:0] enc_inp;
    wire a_done, b_done;
    wire [7:0] fsm_out_num;
    wire [6:0] fsm_outer_max_idx;
    integer j;
    always @(*) begin
        for (j = 0; j < NUM_DIGITS; j = j + 1) begin
            enc_inp[j] = !a_done ? dec_num[j][mux_sel] : (j >= fsm_outer_max_idx ? 1'b0 : dec_num[j][mux_sel]);
        end
    end
    
    // Instatiating the priortiy encoder
    wire [6:0] enc_op;
    wire       enc_valid;
    priority_encoder priority_encoder_inst (
        .in         ({{{28}{1'b0}}, enc_inp}),
        .out        (enc_op),
        .valid      (enc_valid)
    );

    // Instantiating the FSM
    FSM_for_max fsm_for_max_inst (
        .clk                (clk),
        .rst                (rst),
        .start              (start),
        .in_enc_valid       (enc_valid),
        .in_enc_outp        (enc_op),
        .out_num            (fsm_out_num),
        .mux_sel            (mux_sel),
        .a_done             (a_done),
        .b_done_wire             (b_done),
        .outer_max_idx      (fsm_outer_max_idx),
        .in_last_num        (bcd_num[3:0])
    );

    // Maintaining the final sum
    always @(posedge clk) begin
        if (rst) begin
            out_num <= 16'd0;
        end else if (a_done && b_done) begin
            if (fsm_out_num[7:4] == 'd0) begin
                out_num <= out_num + fsm_out_num[3:0];
            end else if (fsm_out_num[7:4] == 'd1) begin
                out_num <= out_num + (fsm_out_num[3:0] + 'd10);
            end else if (fsm_out_num[7:4] == 'd2) begin
                out_num <= out_num + (fsm_out_num[3:0] + 'd20);
            end else if (fsm_out_num[7:4] == 'd3) begin
                out_num <= out_num + (fsm_out_num[3:0] + 'd30);
            end else if (fsm_out_num[7:4] == 'd4) begin
                out_num <= out_num + (fsm_out_num[3:0] + 'd40);
            end else if (fsm_out_num[7:4] == 'd5) begin
                out_num <= out_num + (fsm_out_num[3:0] + 'd50);
            end else if (fsm_out_num[7:4] == 'd6) begin
                out_num <= out_num + (fsm_out_num[3:0] + 'd60);
            end else if (fsm_out_num[7:4] == 'd7) begin
                out_num <= out_num + (fsm_out_num[3:0] + 'd70);
            end else if (fsm_out_num[7:4] == 'd8) begin
                out_num <= out_num + (fsm_out_num[3:0] + 'd80);
            end else if (fsm_out_num[7:4] == 'd9) begin
                out_num <= out_num + (fsm_out_num[3:0] + 'd90);
            end
        end
    end

    assign done = a_done && b_done;
    assign busy = 1'b0;
endmodule