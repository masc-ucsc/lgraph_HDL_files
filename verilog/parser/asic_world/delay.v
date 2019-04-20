module delay();
 reg in; 
 wire rise_delay, fall_delay, all_delay; 
  
 initial begin 
  $monitor (
    "Time=%g in=%b rise_delay=%b fall_delay=%b all_delay=%b", 
    $time, in, rise_delay, fall_delay, all_delay);
  in = 0; 
  #10 in = 1; 
  #10 in = 0; 
  #20 $finish; 
 end 
  
 buf #(1,0)U_rise (rise_delay,in); 
 buf #(0,1)U_fall (fall_delay,in); 
 buf #1 U_all (all_delay,in); 
  
endmodule  
