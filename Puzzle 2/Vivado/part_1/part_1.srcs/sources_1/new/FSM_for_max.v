`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2025 04:54:22
// Design Name: 
// Module Name: FSM_for_max
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


// 22-state FSM template (binary-encoded)
// Moore-style outputs (outputs depend only on current state)
// input to this module is the whole of the number, with each digit having 10 bits, i.e. a total
// of 1000 bits. acc to state, there is an input to the encoder, and acc to the output of the 
// encoder, the next state is decided. So an FSM with an encoder. Inputs to the FSM are the output
// of encoder and output of the FSM is the done signal, number itself and the encoder input.
module FSM_for_max #(
    parameter STATE_BITS = 5,  // ceil(log2(22)) = 5
    parameter NUM_DIGITS = 100
)(
    input       wire                    clk,
    input       wire                    rst,
    input       wire                    start,    
    input       wire        [6:0]       in_enc_outp,
    input       wire                    in_enc_valid,
    output      reg         [3:0]       mux_sel,
    output      reg                     a_done,
    output      reg                     b_done_wire,
    output      reg         [7:0]       out_num,
    output      reg         [6:0]       outer_max_idx,
    input       wire        [3:0]       in_last_num
);

    // State encoding
    localparam a_9  = 5'd0;
    localparam a_8  = 5'd1;
    localparam a_7  = 5'd2;
    localparam a_6  = 5'd3;
    localparam a_5  = 5'd4;
    localparam a_4  = 5'd5;
    localparam a_3  = 5'd6;
    localparam a_2  = 5'd7;
    localparam a_1  = 5'd8;
    localparam a_0  = 5'd9;
    localparam b_9 = 5'd11;
    localparam b_8 = 5'd12;
    localparam b_7 = 5'd13;
    localparam b_6 = 5'd14;
    localparam b_5 = 5'd15;
    localparam b_4 = 5'd16;
    localparam b_3 = 5'd17;
    localparam b_2 = 5'd18;
    localparam b_1 = 5'd19;
    localparam b_0 = 5'd20;
    localparam S0  = 5'd22; //reset state

    // State registers
    reg [STATE_BITS-1:0] state;
    reg [STATE_BITS-1:0] next_state;
    reg [6:0] outer_max_idx_wire;
    reg a_done_wire, b_done;

    // Sequential: register state
    always @(posedge clk) begin
        if (rst) begin
            state <= S0; // initial state on reset
            outer_max_idx <= 7'd0;
            a_done <= 1'b0;
            b_done <= 1'b0;
        end else begin
            state <= next_state;
            outer_max_idx <= outer_max_idx_wire;
            a_done <= a_done_wire;
            b_done <= b_done_wire;
        end
    end

    // Combinational: next state logic and outputs (Moore)
    always @* begin
        // default values (important to avoid inferred latches)
        next_state = state;
        a_done_wire       = a_done;
        b_done_wire       = b_done;
        mux_sel      = 4'd9;
        outer_max_idx_wire = outer_max_idx;
        
        //out_num      = 'd0;
        case (state)
            //Reset state
            S0: begin
                out_num = 'd0;
                a_done_wire = 'd0;
                b_done_wire = 'd0;
                if (start) begin
                    next_state = a_9;
                end else begin
                    next_state = S0;
                end
            end

            a_9: begin
                mux_sel = 4'd9;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_9;
                    out_num[7:4] = 'd9;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_8;
                end
            end

            a_8: begin
                mux_sel = 4'd8;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_8;
                    out_num[7:4] = 'd8;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_7;
                end
            end

            a_7: begin
                mux_sel = 4'd7;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_7;
                    out_num[7:4] = 'd7;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_6;
                end
            end

            a_6: begin
                mux_sel = 4'd6;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_6;
                    out_num[7:4] = 'd6;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_5;
                end
            end

            a_5: begin
                mux_sel = 4'd5;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_5;
                    out_num[7:4] = 'd5;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_4;
                end
            end

            a_4: begin
                mux_sel = 4'd4;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_4;
                    out_num[7:4] = 'd4;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_3;
                end
            end

            a_3: begin
                mux_sel = 4'd3;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_3;
                    out_num[7:4] = 'd3;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_2;
                end
            end

            a_2: begin
                mux_sel = 4'd2;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_2;
                    out_num[7:4] = 'd2;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_1;
                end
            end

            a_1: begin
                mux_sel = 4'd1;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_1;
                    out_num[7:4] = 'd1;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_0;
                end
            end

            a_0: begin
                mux_sel = 4'd0;
                b_done_wire = 1'b0;
                if (in_enc_valid && (in_enc_outp != 'd0)) begin
                    next_state = b_0;
                    out_num[7:4] = 'd0;
                    out_num[3:0] = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_0;
                end
            end

            b_9: begin
                mux_sel = 4'd9;
                if (in_last_num >= 'd9) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd9;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else begin
                    next_state = b_8;
                    a_done_wire = 1'b1;
                end
            end

            b_8: begin
                mux_sel = 4'd8;
                if (in_last_num >= 'd8) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd8;
                    b_done_wire = 1'b1;
                    a_done_wire = 1'b0;
                end else begin
                    next_state = b_7;
                    a_done_wire = 1'b1;
                end
            end

            b_7: begin
                mux_sel = 4'd7;
                if (in_last_num >= 'd7) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd7;
                    b_done_wire = 1'b1;
                    a_done_wire = 1'b0;
                end else begin
                    next_state = b_6;
                    a_done_wire = 1'b1;
                end
            end

            b_6: begin
                mux_sel = 4'd6;
                if (in_last_num >= 'd6) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd6;
                    b_done_wire = 1'b1;
                    a_done_wire = 1'b0;
                end else begin
                    next_state = b_5;
                    a_done_wire = 1'b1;
                end
            end

            b_5: begin
                mux_sel = 4'd5;
                if (in_last_num >= 'd5) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd5;
                    b_done_wire = 1'b1;
                    a_done_wire = 1'b0;
                end else begin
                    next_state = b_4;
                    a_done_wire = 1'b1;
                end
            end

            b_4: begin
                mux_sel = 4'd4;
                if (in_last_num >= 'd4) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd4;
                    b_done_wire = 1'b1;
                    a_done_wire = 1'b0;
                end else begin
                    next_state = b_3;
                    a_done_wire = 1'b1;
                end
            end

            b_3: begin
                mux_sel = 4'd3;
                if (in_last_num >= 'd3) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd3;
                    b_done_wire = 1'b1;
                    a_done_wire = 1'b0;
                end else begin
                    next_state = b_2;
                    a_done_wire = 1'b1;
                end
            end

            b_2: begin
                mux_sel = 4'd2;
                if (in_last_num >= 'd2) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd2;
                    b_done_wire = 1'b1;
                    a_done_wire = 1'b0;
                end else begin
                    next_state = b_1;
                    a_done_wire = 1'b1;
                end
            end

            b_1: begin
                mux_sel = 4'd1;
                if (in_last_num >= 'd1) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd1;
                    b_done_wire = 1'b1;
                    a_done_wire = 1'b0;
                end else begin
                    next_state = b_0;
                    a_done_wire = 1'b1;
                end
            end

            b_0: begin
                mux_sel = 4'd0;
                if (in_last_num >= 'd0) begin
                    next_state = a_9;
                    out_num[3:0] = in_last_num;
                    a_done_wire = 1'b0;
                    b_done_wire = 1'b1;
                end else if (in_enc_valid) begin
                    next_state = a_9;
                    out_num[3:0] = 'd0;
                    b_done_wire = 1'b1;
                    a_done_wire = 1'b0;
                end else begin
                    next_state = S0;
                    a_done_wire = 1'b1;
                end
            end

            default: begin
                // safe fallback
                next_state = S0;
            end
        endcase
    end

endmodule