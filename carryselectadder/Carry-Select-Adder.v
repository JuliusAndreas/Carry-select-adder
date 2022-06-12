module CarrySelectAdder (inp1, inp2, cin, cout, sum);
input [7:0] inp1, inp2;
input cin;
output cout;
output [7:0] sum;
reg zero = 1'b0;
reg one = 1'b1;
wire c4;
wire [3:0] muxResult;
wire c81;
wire c80;
wire [3:0] mux0Input;
wire [3:0] mux1Input;
assign cout = (c80 | c4) & c81;
assign sum[7:4] = muxResult;
adder4 lowerBitsAdder(inp1[3:0], inp2[3:0], cin, c4, sum[3:0]);
adder4 higherBitsAdderWithCarry0(inp1[7:4], inp2[7:4], zero, c80, mux0Input);
adder4 higherBitsAdderWithCarry1(inp1[7:4], inp2[7:4], one, c81, mux1Input);
mux2_to_1 mux(mux0Input, mux1Input, c4, sum[7:4]);
endmodule

