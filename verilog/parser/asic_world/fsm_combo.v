always @ (state or req_0 or req_1 or req_2 or req_3)
begin       
  next_state = 0;
  case(state)
    IDLE : if (req_0 == 1'b1) begin
  	     next_state = GNT0;
           end else if (req_1 == 1'b1) begin
  	     next_state= GNT1;
           end else if (req_2 == 1'b1) begin
  	     next_state= GNT2;
           end else if (req_3 == 1'b1) begin
  	     next_state= GNT3;
	   end else begin
  	     next_state = IDLE;
           end			
    GNT0 : if (req_0 == 1'b0) begin
  	     next_state = IDLE;
           end else begin
	     next_state = GNT0;
	  end
    GNT1 : if (req_1 == 1'b0) begin
  	     next_state = IDLE;
           end else begin
	     next_state = GNT1;
	  end
    GNT2 : if (req_2 == 1'b0) begin
  	     next_state = IDLE;
           end else begin
	     next_state = GNT2;
	  end
    GNT3 : if (req_3 == 1'b0) begin
  	     next_state = IDLE;
           end else begin
	     next_state = GNT3;
	  end
   default : next_state = IDLE;
  endcase
end
