module secret_number;
parameter my_secret = 0;

initial begin
  $display("My secret number in module is %d", my_secret);
end

endmodule
 
module param_overide_instance_example();

secret_number #(11) U0();
secret_number #(22) U1();
  	 
endmodule
