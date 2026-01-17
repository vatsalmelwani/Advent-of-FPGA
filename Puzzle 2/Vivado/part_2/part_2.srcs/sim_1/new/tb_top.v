`timescale 1ns / 1ps

module tb_top;

    localparam IN_WIDTH   = 336;
    localparam OUT_WIDTH  = 64;
    localparam NUM_DIGITS = 100;
    localparam NUM_VECS   = 200;   // how many numbers in .mem file

    // -------------------------------------------------
    // Testbench signals
    // -------------------------------------------------
    reg                     clk;
    reg                     rst;
    reg                     start;
    reg   [IN_WIDTH-1:0]    in_num;

    wire  [OUT_WIDTH-1:0]  out_num;
    wire                    busy;
    wire                    done;

    // -------------------------------------------------
    // Memory to store input numbers
    // -------------------------------------------------
    reg [IN_WIDTH-1:0] mem_in [0:NUM_VECS-1];
    integer idx;
    reg c;

    // -------------------------------------------------
    // DUT
    // -------------------------------------------------
    puzzle3_part2 #(
        .IN_WIDTH(IN_WIDTH),
        .OUT_WIDTH(OUT_WIDTH),
        .NUM_DIGITS(NUM_DIGITS),
        .SELECT_NUM_DIGITS(12)
    ) dut (
        .clk     (clk),
        .rst     (rst),
        .start   (start),
        .in_num  (in_num),
        .out_num (out_num),
        .busy    (busy),
        .done    (done)
    );

    // -------------------------------------------------
    // Clock: 10 ns
    // -------------------------------------------------
    initial clk = 1'b0;
    always #5 clk = ~clk;
    // -------------------------------------------------
    // Load memory
    // -------------------------------------------------
    initial begin
        $readmemh("output.mem", mem_in);  // or $readmemb
    end

    // -------------------------------------------------
    // in_num update logic (flip-flop behavior)
    // -------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            idx    <= 0;
            in_num <= mem_in[0];
            c <= 1'b0;
        end
        else if (idx == NUM_VECS - 1 && done) begin
            in_num <= 'd0;
            c <= 1'b1;
        end
        else if (done && !c) begin
            //idx    <= idx + 1;
            in_num <= mem_in[idx + 1];
        end
        
    end

    // -------------------------------------------------
    // Stimulus
    // -------------------------------------------------
    initial begin
        rst   = 1'b1;
        start = 1'b0;

        #30;
        rst = 1'b0;

        // kick off first transaction
        #20;
        start = 1'b1;
        #15;
        start = 1'b0;

        // no further manual driving needed
    end

endmodule
