module power_operator();

reg [3:0] base = 2;
reg [5:0] exponent = 1;
reg [31:0] result = 0;

initial begin
  $monitor ("base = %d exponent = %d result = %d", base, exponent, result);
  repeat (10) begin
    #1 exponent = exponent + 1;
  end
  #1 $finish;
end 

always @ (*)
begin
  result = base ** exponent;
end

endmodule
