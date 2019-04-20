module multiple_blocks ();
reg a,b;
reg c,d; 
reg clk,reset;
// Combo Logic
always @ ( c)
begin
  a = c;
end
// Seq Logic
always @ (posedge clk)
if (reset) begin
  b <= 0;
end else begin
  b <= a & d;
end

// Testbench code here
initial begin
  $monitor("TIME = %d CLK = %b C = %b D = %b A = %b B = %b",
    $time, clk,c,d,a,b);
  clk = 0;
  reset = 0;
  c = 0;
  d = 0;
  #2 reset = 1;
  #2 reset = 0;
  #2 c = 1;
  #2 d = 1;
  #2 c = 0;
  #5 $finish;
end
// Clock generator
always 
 #1 clk = ~clk;
    
endmodule
