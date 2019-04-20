module synthesis_compare_xz (a,b);
output a;
input b;
reg a;
  	 
always @ (b)
begin
  if ((b == 1'bz) || (b == 1'bx)) begin
    a = 1;
  end else begin
    a = 0;
  end
end  
  	  	 
endmodule
