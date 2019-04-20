module synthesis_initial(
clk,q,d);
input clk,d;
output q;
reg q;

initial begin
 q <= 0;
end 

always @ (posedge clk)
begin
 q <= d;
end 

endmodule
