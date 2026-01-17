`timescale 1ns / 1ps

module tb_puzzle_1;

    reg  [9:0]  inp_bin_val;
    reg         R_L;
    reg         clk;
    reg         rst;
    reg         enable;
    wire [15:0] out_zero_counts;

    // Memory arrays
    reg         R_L_mem [0:4530];
    reg [9:0]   val_mem [0:4530];

    integer idx;

    // DUT Instance
    puzzle_1 uut (
        .inp_bin_val(inp_bin_val),
        .R_L(R_L),
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .out_zero_counts(out_zero_counts)
    );

    // Clock: 100 MHz (10 ns)
    always #5 clk = ~clk;

    initial begin
        // -----------------------------
        // Init
        // -----------------------------
        clk = 0;
        rst = 1;
        enable = 0;
        inp_bin_val = 0;
        R_L = 0;

        // Load stimulus files
        $readmemb("direc.mem", R_L_mem);
        $readmemh("val.mem",  val_mem);

        // Hold reset for a few cycles
        repeat (3) @(posedge clk);
        rst = 0;

        // -----------------------------
        // Apply inputs ONCE
        // -----------------------------
        enable = 1;

        for (idx = 0; idx < 4531; idx = idx + 1) begin
            @(posedge clk);
            R_L         <= R_L_mem[idx];
            inp_bin_val <= val_mem[idx];
        end

        // -----------------------------
        // Disable after last input
        // -----------------------------
        @(posedge clk);
        enable <= 0;

        // Optional: let outputs settle
        repeat (10) @(posedge clk);

    end

endmodule
