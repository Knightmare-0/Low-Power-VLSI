module multiplier(
  input wire [7:0] a,
  input wire [7:0] b,
  input wire clk,
  input wire rst,
  output reg [15:0] product
);

  always @(posedge clk, posedge rst)
    if (rst)
    	product <= 16'b0;
    else
    	product <= a * b;
endmodule
