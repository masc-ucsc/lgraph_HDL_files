module top();
wire clk;
wire [3:0] count;
wire enable;
wire reset;
  	 
// Connect the clk generator
clkGen clkGen(.clk (clk));
  	
// Connect the DUT
counter dut(
.clk    (clk),
.reset  (reset),
.enable (enable),
.count  (count)
);

// Connect the Monitor/Checker
counterMonitor monitor(
.clk    (clk),
.reset  (reset),
.enable (enable),
.count  (count)
);

// Connect the Test Generator
counterTestGen test(
.clk    (clk),
.reset  (reset),
.enable (enable),
.count  (count)
);
	
endmodule
