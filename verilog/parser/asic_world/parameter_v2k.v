module parameter_v2k();
parameter D_WIDTH = 4;
parameter A_WIDTH = 9;

reg  [A_WIDTH-1:0] address = 0;
reg  [D_WIDTH-1:0] data_in = 0;
wire [D_WIDTH-1:0] data_out;
reg  rd,wr;

initial begin
  $monitor ("%g addr %d din %h dout %d read %b write %b", 
    $time, address, data_in, data_out, rd, wr);
  rd = 0;
  wr = 0;
  #1 repeat (10) begin
    wr = 1;
    data_in = $random;
    #1 address = address + 1;
  end
  wr = 0;
  address  = 0;
  data_in = 0;
  #1 repeat (10) begin
    rd = 1;
    #1 address = address + 1;
  end
  rd = 0;
  #1 $finish;
end

memory #(.AWIDTH(A_WIDTH),.DWIDTH(D_WIDTH)) U (
  address, data_in, data_out, rd, wr);

endmodule

// Memory model
module memory (address, data_in, data_out, rd, wr);
parameter DWIDTH = 8;
parameter AWIDTH = 8;
parameter DEPTH  = 1 << AWIDTH;

input  [AWIDTH-1:0] address;
input  [DWIDTH-1:0] data_in;
output [DWIDTH-1:0] data_out;
input  rd,wr;

reg [DWIDTH-1:0] mem [0:DEPTH-1];

always @ (*)
  if (wr) mem[address] = data_in;

assign data_out = (rd) ? mem[address] : 0;

endmodule
