function parity;
input [31:0] data;
integer i;
begin
  parity = 0;
  for (i= 0; i < 32; i = i + 1) begin
    parity = parity ^ data[i];
  end
end
endfunction
