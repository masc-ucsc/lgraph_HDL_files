module  ram_controller ();//Some ports
 
ram_sp_sr_sw #( 
	.DATA_WIDTH(16), 
	.ADDR_WIDTH(8), 
	.RAM_DEPTH(256))  ram(clk,address,data,cs,we,oe);
 
endmodule
