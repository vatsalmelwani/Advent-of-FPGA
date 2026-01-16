`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2025 19:52:21
// Design Name: 
// Module Name: mem_element
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


module mem_element#(
    parameter ROW_WIDTH = 34,
    parameter NUM_ROWS = 4
)(
    input       wire                                clk,
    input       wire                                we,
    input       wire    [$clog2(NUM_ROWS)-1:0]      w_addr,
    input       wire    [ROW_WIDTH-1:0]             w_data,
    input       wire    [$clog2(NUM_ROWS)-1:0]      r_addr,
    output      reg     [ROW_WIDTH-1:0]             r_data
    );

    reg [ROW_WIDTH-1:0] mem [0:NUM_ROWS-1];

    always @(posedge clk) begin
        if(we) begin
            mem[w_addr] <= w_data;
        end
        r_data <= mem[r_addr];
    end

    // ONLY FOR DEBUGGING: 
    

    // reg dumped;
    // always @(posedge clk) begin
    //     if(!calc_done) begin
    //         dumped <= 1'b0;
    //     end else if (calc_done && !dumped) begin
    //         $writememh("mem_dump.hex", mem);   // hex
    //         dumped <= 1'b1;
    //         // or
    //         // $writememb("mem_dump.bin", mem); // binary
    //     end
    // end

endmodule