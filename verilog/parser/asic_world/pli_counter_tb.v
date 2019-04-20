module counter_tb();
 reg enable;
 reg reset;
 reg clk_reg;
 wire clk;
 wire [3:0] count;
  	 
initial begin
  enable = 0;
  clk_reg = 0;
  reset = 0;
  $display("%g , Asserting reset", $time);
  #10 reset = 1;
  #10 reset = 0;
  $display ("%g, Asserting Enable", $time);
  #10 enable = 1;
  #55 enable = 0;
  $display ("%g, Deasserting Enable", $time);
  #1 $display ("%g, Terminating Simulator", $time);
  #1 $finish;
end
	
always begin
  #5 clk_reg = !clk_reg;
end
  	 
assign clk = clk_reg;
	 
initial begin
  $counter_monitor (counter_tb.clk, counter_tb.reset, 
    counter_tb.enable, counter_tb.count);
end
 
counter U(
.clk (clk),
.reset (reset),
.enable (enable),
.count (count)
);
	
endmodule
