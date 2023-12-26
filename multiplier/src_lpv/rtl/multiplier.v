module multiplier(
  input wire [7:0] a,
  input wire [7:0] b,
  input wire clk,
  input wire rst,
  output reg [15:0] product
);

  reg [15:0] partial_products [0:7]; // Array to store partial products
  integer i; // Declare i outside the procedural block

  always @(posedge clk or posedge rst)
    if (rst) begin
      product <= 16'b0;

      // Reset partial products individually
      for (i = 0; i < 8; i = i + 1) begin
        partial_products[i] <= 16'b0;
      end
    end
    else begin
      // Parallel multiplier
      for (i = 0; i < 8; i = i + 1) begin
        partial_products[i] <= a * b[i];
      end

      // Pipeline stage: Accumulate partial products
      for (i = 1; i < 8; i = i + 1) begin
        partial_products[i] <= partial_products[i] + partial_products[i-1];
      end

      // Final result
      product <= partial_products[7];
    end
endmodule

