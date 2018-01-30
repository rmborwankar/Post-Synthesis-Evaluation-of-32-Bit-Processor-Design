
`timescale 1ns / 1ps

///////////////////////////////////////////////////////////
// University: Worcester Polytechnic Institute
// Desription : Testbench for single cycle processor 
// Course : VLSI Design ECE 566/ Fall 2016
////////////////////////////////////////////////////////////

module SCPTest();
parameter n = 32;

reg clk,reset;
reg [n-1:0]  IN;
wire [n-1:0] OUT;

SCPTop #(n)  top(clk,reset,IN,OUT);

always #1 clk = ~clk;

initial begin
clk 	= 1'b0;
reset	= 1'b1;
#3;
reset	= 1'b0;
IN	= 8'b11010110;	// External input
end

endmodule
 