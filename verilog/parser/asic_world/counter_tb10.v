reg [3:0] count_compare; 

always @ (posedge clk) 
if (reset == 1'b1) begin
  count_compare <= 0; 
end else if ( enable == 1'b1) begin
  count_compare <= count_compare + 1; 
end
