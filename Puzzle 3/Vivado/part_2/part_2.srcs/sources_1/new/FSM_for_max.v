`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2025 16:47:39
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


module FSM_for_max#(
    parameter STATE_BITS = 4,  // ceil(log2(22)) = 5
    parameter NUM_DIGITS = 100
)(
    input       wire                    clk,
    input       wire                    rst,
    input       wire                    start,
    input       wire        [6:0]       in_enc_outp,
    input       wire                    in_enc_valid,
    input       wire        [6:0]       in_lower_bound,
    input       wire        [3:0]       in_last_index_num,
    output      reg         [3:0]       mux_sel,
    output      reg                     a_done,
    output      reg                     a_done_wire,
    output      reg         [3:0]       out_num,
    output      reg         [6:0]       outer_max_idx_wire
);
    
    localparam a_9  = 4'd0; //reset state
    localparam a_8  = 4'd1;
    localparam a_7  = 4'd2;
    localparam a_6  = 4'd3;
    localparam a_5  = 4'd4;
    localparam a_4  = 4'd5;
    localparam a_3  = 4'd6;
    localparam a_2  = 4'd7;
    localparam a_1  = 4'd8;
    localparam a_0  = 4'd9;

    reg [STATE_BITS-1:0] state, next_state;

    always @(posedge clk) begin
        if (rst) begin
            state <= a_9;
            a_done <= 1'b0;
        end else begin
            state <= next_state;
            a_done <= a_done_wire;
        end
    end

    // Combinational: next state logic and outputs (Moore)
    always @* begin
        // default values (important to avoid inferred latches)
        next_state = state;
        out_num = 'd0;
        outer_max_idx_wire = 7'd0;
        a_done_wire = 1'b0;
        case (state)
            
            a_9: begin
                mux_sel = 4'd9;
                if(start) begin
                    if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                        next_state = a_9;
                        out_num = 'd9;
                        outer_max_idx_wire = in_enc_outp;
                        a_done_wire = 1'b1;
                    end else begin
                        next_state = a_8;
                    end
                end else begin
                    next_state = a_9;
                end
            end

            a_8: begin
                mux_sel = 4'd8;
                if(in_last_index_num >'d8) begin
                    next_state = a_8;
                    out_num = in_last_index_num;
                    outer_max_idx_wire = in_lower_bound -1;
                    a_done_wire = 1'b1;
                end else if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                    next_state = a_8;
                    out_num = 'd8;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_7;
                end
            end

            a_7: begin
                mux_sel = 4'd7;
                if(in_last_index_num >'d7) begin
                    next_state = a_7;
                    out_num = in_last_index_num;
                    outer_max_idx_wire = in_lower_bound -1;
                    a_done_wire = 1'b1;
                end else if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                    next_state = a_7;
                    out_num = 'd7;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_6;
                end
            end

            a_6: begin
                mux_sel = 4'd6;
                if(in_last_index_num >'d6) begin
                    next_state = a_6;
                    out_num = in_last_index_num;
                    outer_max_idx_wire = in_lower_bound -1;
                    a_done_wire = 1'b1;
                end else if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                    next_state = a_6;
                    out_num = 'd6;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_5;
                end
            end

            a_5: begin
                mux_sel = 4'd5;
                if(in_last_index_num >'d5) begin
                    next_state = a_5;
                    out_num = in_last_index_num;
                    outer_max_idx_wire = in_lower_bound -1;
                    a_done_wire = 1'b1;
                end else if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                    next_state = a_5;
                    out_num = 'd5;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_4;
                end
            end

            a_4: begin
                mux_sel = 4'd4;
                if(in_last_index_num >'d4) begin
                        next_state = a_4;
                        out_num = in_last_index_num;
                        outer_max_idx_wire = in_lower_bound -1;
                        a_done_wire = 1'b1;
                end else if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                    next_state = a_4;
                    out_num = 'd4;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_3;
                end
            end

            a_3: begin
                mux_sel = 4'd3;
                if(in_last_index_num >'d3) begin
                    next_state = a_3;
                    out_num = in_last_index_num;
                    outer_max_idx_wire = in_lower_bound -1;
                    a_done_wire = 1'b1;
                end else if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                    next_state = a_3;
                    out_num = 'd3;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_2;
                end
            end

            a_2: begin
                mux_sel = 4'd2;
                if(in_last_index_num >'d2) begin
                        next_state = a_2;
                        out_num = in_last_index_num;
                        outer_max_idx_wire = in_lower_bound -1;
                        a_done_wire = 1'b1;
                end else if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                    next_state = a_2;
                    out_num = 'd2;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_1;
                end
            end

            a_1: begin
                mux_sel = 4'd1;
                if(in_last_index_num >'d1) begin
                    next_state = a_1;
                    out_num = in_last_index_num;
                    outer_max_idx_wire = in_lower_bound -1;
                    a_done_wire = 1'b1;
                end else if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                    next_state = a_1;
                    out_num = 'd1;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_0;
                end
            end

            a_0: begin
                mux_sel = 4'd0;
                if(in_last_index_num >'d0) begin
                    next_state = a_0;
                    out_num = in_last_index_num;
                    outer_max_idx_wire = in_lower_bound -1;
                    a_done_wire = 1'b1;
                end else if (in_enc_valid && in_enc_outp>=in_lower_bound-1) begin
                    next_state = a_0;
                    out_num = 'd0;
                    outer_max_idx_wire = in_enc_outp;
                    a_done_wire = 1'b1;
                end else begin
                    next_state = a_0;
                end
            end
        endcase
    end
endmodule