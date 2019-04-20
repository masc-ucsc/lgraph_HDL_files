module  ram_controller ();//Some ports

// Controller Code
 
ram_sp_sr_sw #(16,8,256)  ram(clk,address,data,cs,we,oe);
 
endmodule
