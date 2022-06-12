module tb;
reg [3:0] inp1, inp2;
reg carryin;
wire carryout;
wire [3:0] sum;

initial
begin
	inp1 = 0;
	inp2 = 0;
	carryin = 0;
end

always
begin
	#10 inp1 = 1;
	#10 inp2 = 0;
	#10 inp1 = 10;
	    inp2 = 20;
	
end

adder4 add4b (inp1, inp2, carryin, carryout, sum);

endmodule;
