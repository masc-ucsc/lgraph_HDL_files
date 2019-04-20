module counterTestGen (clk, reset, enable, count);
input clk;
output reset, enable;
input [3:0] count;

wire clk;
reg reset, enable;
wire [3:0] count;

initial $counterTestGen(clk,reset,enable,count);

endmodule
