
module fsm_1101(input x, clk, reset, output reg y);

reg [1:0] p_st,n_st;
parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

always@(posedge clk or posedge reset)
begin
if(reset)
p_st <= S0;
else
p_st <= n_st;
end

always@(p_st or x)
begin
case(p_st)
S0:begin
    if(x) 
    	begin 
    	n_st = S1;
    	end
    else  
    	begin 
    	n_st = S0; 
    	end
   end

S1:begin
    if(x) begin n_st = S2;  end
    else  begin n_st = S0;  end
   end
    
S2:begin
    if(x) begin n_st = S2; end
    else  begin n_st = S3; end
   end
    
S3:begin
    if(x) begin n_st = S1; end
    else  begin n_st = S0; end
   end

default: n_st = S0;
endcase
end

always@(p_st or x)
begin 
case(p_st)
S0:y=0;
S1:y=0;
S2:y=0;
S3:if(x)
	y=1;
   else
	y=0;
default: y=0;
endcase
end
endmodule 


