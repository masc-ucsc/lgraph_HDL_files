module counterMonitor (clk, reset, enable, count);
input clk, reset, enable;
input [3:0] count;

wire clk, reset, enable;
wire [3:0] count;

initial $counterMonitor(clk,reset,enable,count);

endmodule
