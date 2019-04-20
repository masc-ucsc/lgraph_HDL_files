module re_entrant_task();

task automatic print_value;
  input [7:0] value;
  input [7:0] delay;
  begin
    #(delay) $display("%g Passed Value %d Delay %d", $time, value, delay);
  end
endtask

initial begin
  fork 
    #1 print_value (10,7);
    #1 print_value (8,5);
    #1 print_value (4,2);
  join
  #1 $finish;
end

endmodule
