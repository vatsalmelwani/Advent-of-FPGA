`timescale 1ns / 1ps

module tb_top;

    // Parameters
    localparam ROW_SIZE      = 160;
    localparam MODULAR_SIZE  = 32;
    localparam OUTPUT_WIDTH  = 16;
    localparam WORDS_PER_ROW = ROW_SIZE / MODULAR_SIZE;
    localparam NUM_ROWS      = 139;

    // DUT signals
    reg                          clk;
    reg                          reset;
    reg                          enable;
    reg  [MODULAR_SIZE-1:0]     in_data;
    wire [OUTPUT_WIDTH-1:0]     out_sum;
    //wire [MODULAR_SIZE+2-1:0]   out_data;

    // Memory
    reg [ROW_SIZE-1:0] mem [0:NUM_ROWS-1];

    integer row, word;

    // CSV file
    integer csv_f;

    // Clock
    always #5 clk = ~clk;

    // DUT instantiation
    puzzle4_part2 #(
        .ROW_SIZE(139),
        .MODULAR_SIZE(MODULAR_SIZE),
        .OUTPUT_WIDTH(OUTPUT_WIDTH)
    ) dut (
        .clk               (clk),
        .reset             (reset),
        .top_enable            (enable),
        .in_data_top           (in_data),
        .out_sum           (out_sum)
        //.mem_write_data_reg(out_data)
    );

    // Load memory
    initial begin
        $readmemb("padded_inp.mem", mem);
    end

    // ------------------------------------------------------------
    // Open CSV at time 0  (IMPORTANT)
    // ------------------------------------------------------------
//    initial begin
//        csv_f = $fopen("out_data.csv", "w");
//        // optional header, remove if you want pure hex
//        // $fdisplay(csv_f, "out_data_hex");
//    end

    // ------------------------------------------------------------
    // Stimulus
    // ------------------------------------------------------------
    initial begin
        clk     = 0;
        reset   = 1;
        enable  <= 0;
        in_data <= 0;

        #200;
        reset = 0;

        #5;
        enable <= 1;

        for (row = 0; row < NUM_ROWS; row = row + 1) begin
            for (word = 0; word < WORDS_PER_ROW; word = word + 1) begin
                @(posedge clk);
                in_data <= mem[row][ROW_SIZE-1 - word*32 -: 32];
            end
        end

        @(posedge clk);
        in_data <= 0;
    end

    // ------------------------------------------------------------
    // CSV logging (WORKING xsim pattern)
    // ------------------------------------------------------------
//    always @(posedge clk) begin
//        $fdisplay(csv_f, "%09h", out_data);  // 34 bits → 9 hex digits
//    end

endmodule
