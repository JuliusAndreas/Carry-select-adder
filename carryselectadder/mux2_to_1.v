module mux2_to_1 (in0, in1, sel, out);

 input [3:0] in0, in1;
 input sel;	
 output [3:0] out;
 assign out = sel ? in1 : in0;

endmodule
