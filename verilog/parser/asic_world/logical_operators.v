module logical_operators();

initial begin
  // Logical AND
  $display ("1'b1 && 1'b1 = %b", (1'b1 && 1'b1));
  $display ("1'b1 && 1'b0 = %b", (1'b1 && 1'b0));
  $display ("1'b1 && 1'bx = %b", (1'b1 && 1'bx));
  // Logical OR
  $display ("1'b1 || 1'b0 = %b", (1'b1 || 1'b0));
  $display ("1'b0 || 1'b0 = %b", (1'b0 || 1'b0));
  $display ("1'b0 || 1'bx = %b", (1'b0 || 1'bx));
  // Logical Negation
  $display ("! 1'b1       = %b", (!  1'b1));
  $display ("! 1'b0       = %b", (!  1'b0));
  #10 $finish;
end

endmodule
