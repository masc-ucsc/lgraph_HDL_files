module test_tri();

tri a;
reg b, c;

assign a = (b) ? c : 1'bz;

initial begin
  $monitor("%g a = %b b = %b c = %b", $time, a, b, c);
  b  = 0;
  c  = 0;
  #1 b = 1;
  #1 b = 0;
  #1 c = 1;
  #1 b = 1;
  #1 b = 0;
  #1 $finish;
end

endmodule
