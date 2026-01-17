`timescale 1ns / 1ps

module tb_puzzle_1;

    reg  [9:0] inp_bin_val;
    reg        R_L;
    reg        clk;
    reg        rst;
    wire [15:0] out_zero_counts;

    // Memory arrays for inputs
    reg        R_L_mem [0:4530];      // holds 1-bit values
    reg [9:0]  val_mem [0:4530];      // holds 10-bit hex values

    integer idx;

    // DUT Instance
    puzzle_1 uut (
        .inp_bin_val(inp_bin_val),
        .R_L(R_L),
        .clk(clk),
        .rst(rst),
        .out_zero_counts(out_zero_counts)
    );

    // Clock generation (100 MHz → 10 ns period)
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;

        // Load files
        $readmemb("direc.mem", R_L_mem);   // 1-bit values per line
        $readmemh("val.mem",  val_mem);    // hex values per line (3 hex digits)

        // Release reset
        #20 rst = 0;

        // Apply values line-by-line
        for (idx = 0; idx < 4531; idx = idx + 1) begin
            R_L        = R_L_mem[idx];
            inp_bin_val = val_mem[idx];    // automatically fits in 10 bits

            #10;  // delay per stimulus
        end
    end

endmodule
