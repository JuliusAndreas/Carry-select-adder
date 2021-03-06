module tb;
reg [7:0] inp1, inp2;
reg carryin;
wire carryout;
wire [7:0] sum;

initial
begin
	inp1 = 8'b10001011;
	inp2 = 8'b00111010;
	carryin = 0;
//delay is 100 ns
   #100 inp1 = 8'b11100011;
	inp2 = 8'b10010101;
	carryin = 1;
end

CarrySelectAdder add (inp1, inp2, carryin, carryout, sum);

endmodule
