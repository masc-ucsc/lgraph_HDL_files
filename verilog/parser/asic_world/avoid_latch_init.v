module avoid_latch_init ();

reg q;
reg enable, d;

always @ (enable or d)
begin
  q = 0;
  if (enable) begin
    q = d;
  end
end

initial begin
  $monitor (" ENABLE = %b  D = %b Q = %b",enable,d,q);
  #1 enable = 0;
  #1 d = 0;
  #1 enable = 1;
  #1 d = 1;
  #1 d = 0;
  #1 d = 1;
  #1 d = 0;
  #1 d = 1;
  #1 enable = 0;
  #1 $finish;
end

endmodule
