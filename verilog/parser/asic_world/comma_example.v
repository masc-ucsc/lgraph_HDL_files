module comma_example();

reg a, b, c, d, e;
reg [2:0] sum, sum95;

// Verilog 2k example for usage of comma
always @ (a, b, c, d, e)
begin : SUM_V2K
  sum = a + b + c + d + e; 
end

// Verilog 95 example for above code
always @ (a or b or c or d or e)
begin : SUM_V95
  sum95 = a + b + c + d + e; 
end

initial begin
  $monitor ("%g a=%b b=%b c=%b d=%b e=%b sum=%b sum95=%b", 
    $time, a, b, c, d, e, sum, sum95);
  #1 a = 1;
  #1 b = 1;
  #1 c = 1;
  #1 d = 1;
  #1 e = 1;
  #1 $finish;
end

endmodule
