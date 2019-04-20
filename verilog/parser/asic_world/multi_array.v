module multi_array();

reg read_v95, read_multi, read_bit;

// Verilog 1995 and Verilog 2001 allow
// 1 dimensional arrays
reg [7:0] address;
reg [7:0] memory [0:255];
wire [7:0] data_out;

assign data_out = (read_v95) ? memory[address] : 0;

// Verilog 2001 allows multi dimension arrays
reg [7:0] address1, address2;
reg [15:0] array [0:255][0:255];
wire [7:0] data_array = (read_multi) ? array[address1][address2] : 0;

// Verilog 2001 allows bit and part select within arrays
wire [7:0] data_bit = (read_bit) ? array[1][200][12:5] : 8'b0;

// Verilog 2001 allows indexed vector part selects
reg  [31:0] double_word;
reg  [2:0] byte_no;
wire [7:0] pos_offset = double_word[byte_no*8 +:8];
wire [7:0] neg_offset = double_word[byte_no*8 -:8];

initial begin
  // Check bit and part select within array
  #1 array[1][200] = 16'h1234;
  #1 read_bit  = 1;
  #1 array[1][200] = 16'hAAAA;
  // Check indexed vector part selects
  double_word = 32'hDEAD_BEEF;
  #1 byte_no = 2;
  #1 byte_no = 1;
  #1 $finish;
end

always @ (*)
  $display (
   "double_word : %h byte_no : %d pos_offset : %h neg_offset : %h", 
   double_word, byte_no, pos_offset, neg_offset);

always @ (*)
  $display ("array[1][200] : %h read_bit : %b data_bit : %h", 
   array[1][200],read_bit, data_bit);

endmodule
