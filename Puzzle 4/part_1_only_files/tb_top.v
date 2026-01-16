`timescale 1ns / 1ps

module tb_top;

    // Parameters
    localparam ROW_SIZE      = 160;
    localparam MODULAR_SIZE  = 32;
    localparam OUTPUT_WIDTH  = 16;
    localparam WORDS_PER_ROW = ROW_SIZE / MODULAR_SIZE;
    localparam NUM_ROWS      = 139;

    // DUT signals
    reg                         clk;
    reg                         reset;
    reg                         enable;     // <-- NEW
    reg  [MODULAR_SIZE-1:0]    in_data;
    wire [OUTPUT_WIDTH-1:0]    out_sum;

    // Memory
    reg [ROW_SIZE-1:0] mem [0:NUM_ROWS-1];

    integer row, word;

    // Clock
    always #5 clk = ~clk;

    // DUT instantiation
    puzzle4_part1 #(
        .ROW_SIZE(ROW_SIZE),
        .MODULAR_SIZE(MODULAR_SIZE),
        .OUTPUT_WIDTH(OUTPUT_WIDTH)
    ) dut (
        .clk    (clk),
        .reset  (reset),
        .enable (enable),   // <-- CONNECTED
        .in_data(in_data),
        .out_sum(out_sum)
    );

    // Load memory
    initial begin
        $readmemb("padded_inp.mem", mem);
    end

    // Stimulus
    initial begin
        clk     = 0;
        reset   = 1;
        enable  = 0;        // <-- LOW initially
        in_data = 0;

        #200;
        reset = 0;

        // Start streaming
        #5;
        enable <= 1;         // <-- ASSERT ONCE, NEVER CLEAR

        for (row = 0; row < NUM_ROWS; row = row + 1) begin
            for (word = 0; word < WORDS_PER_ROW; word = word + 1) begin
                @(posedge clk);
                in_data <= mem[row][ROW_SIZE-1 - word*32 -: 32];
            end
        end

        // Stop driving data (enable stays high)
        @(posedge clk);
        in_data <= 0;
    end

endmodule
