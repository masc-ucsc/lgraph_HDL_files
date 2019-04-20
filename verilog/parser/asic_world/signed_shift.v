module signed_shift();

reg [7:0] unsigned_shift;
reg [7:0] signed_shift;
reg signed [7:0] data = 8'hAA;

initial begin
  unsigned_shift = data >> 4;
  $display ("unsigned shift = %b", unsigned_shift);
  signed_shift = data >>> 4;
  $display ("signed   shift = %b", signed_shift);
  unsigned_shift = data << 1;
  $display ("unsigned shift = %b", unsigned_shift);
  signed_shift = data <<< 1;
  $display ("signed   shift = %b", signed_shift);
  $finish;
end

endmodule
