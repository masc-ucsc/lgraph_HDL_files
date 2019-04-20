always @ (posedge clk) 
  if (count_compare != count) begin 
    $display ("DUT Error at time %d", $time); 
    $display (" Expected value %d, Got Value %d", count_compare, count); 
    #5 -> terminate_sim; 
  end 
