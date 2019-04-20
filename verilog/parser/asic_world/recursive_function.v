module recursuve_function();

function automatic [31:0] calFactorial;
  input [7:0] number;
  begin
    if (number == 1) begin
      calFactorial = 1;
    end else begin
      calFactorial =  number * (calFactorial(number - 1));
    end
  end
endfunction

initial begin
 $display ("Factorial of 1 : %d", calFactorial(1)); 
 $display ("Factorial of 4 : %d", calFactorial(4)); 
 $display ("Factorial of 8 : %d", calFactorial(8)); 
 $display ("Factorial of 16 : %d", calFactorial(16)); 
 $display ("Factorial of 32 : %d", calFactorial(32)); 
 #1 $finish;
end

endmodule
