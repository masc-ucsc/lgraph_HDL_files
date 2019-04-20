module mux_21 (a, b, sel, y);
    input a, b;
    output y;
    input sel;
    wire y[2 : 0];
    wire z[2:0];

    assign y = (sel) ? b : a;
  	  	//comment 
endmodule
