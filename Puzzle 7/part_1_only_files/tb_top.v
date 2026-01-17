`timescale 1ns/1ps

module tb_top;

  // -----------------------
  // parameters
  // -----------------------
  localparam ROWS      = 142;
  localparam ROW_WIDTH = 160;
  localparam CHUNK_W   = 32;
  localparam CHUNKS    = ROW_WIDTH / CHUNK_W; // 5

  // -----------------------
  // clock + reset
  // -----------------------
  reg clk;
  reg reset;
  reg enable;

  // -----------------------
  // DUT inputs / outputs
  // -----------------------
  reg  [CHUNK_W-1:0] data;
  wire [6:0]         out_sum;

  // -----------------------
  // memory
  // -----------------------
  reg [ROW_WIDTH-1:0] mem [0:ROWS-1];

  integer row;
  integer chunk;

  // -----------------------
  // DUT instantiation
  // -----------------------
  top dut (
    .clk        (clk),
    .reset      (reset),
    .data       (data),
    .enable      (enable),
    .out_sum (out_sum)
  );

  // -----------------------
  // clock generation
  // -----------------------
  initial begin
    clk = 1'b0;
  end

  always #5 clk = ~clk;

  // -----------------------
  // load memory
  // -----------------------
  initial begin
    $readmemb("padded_inp.mem", mem);
  end

  // -----------------------
  // stimulus
  // -----------------------
  initial begin
    enable = 1'b0;
    reset = 1'b1;
    data  = {CHUNK_W{1'b0}};

    #20;
    reset = 1'b0;

    // stream all rows and chunks
    
    for (row = 0; row < ROWS; row = row + 1) begin
      for (chunk = 0; chunk < CHUNKS; chunk = chunk + 1) begin
        @(posedge clk);
        data <= mem[row][
                  ROW_WIDTH-1 - chunk*CHUNK_W
                  -: CHUNK_W
                ];
        enable <= 1'b1;
      end
    end

    // after all data, hold data at 0 forever
    forever begin
      @(posedge clk);
      data <= {CHUNK_W{1'b0}};
    end
  end

endmodule
