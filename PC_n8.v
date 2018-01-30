
module PC_n8 ( In, reset, start, clk, Out );
  input [4:0] In;
  output [4:0] Out;
  input reset, start, clk;
  wire   N2, N3, N4, N5, N6, \add_14_aco/carry[4] , \add_14_aco/carry[3] ,
         \add_14_aco/carry[2] , \mult_add_14_aco/B[0] , n1, n2, n3, n4, n5;

  DFFX1 \Out_reg[4]  ( .D(N6), .CLK(clk), .Q(Out[4]) );
  DFFX1 \Out_reg[3]  ( .D(N5), .CLK(clk), .Q(Out[3]) );
  DFFX1 \Out_reg[2]  ( .D(N4), .CLK(clk), .Q(Out[2]) );
  DFFX1 \Out_reg[1]  ( .D(N3), .CLK(clk), .Q(Out[1]) );
  DFFX1 \Out_reg[0]  ( .D(N2), .CLK(clk), .Q(Out[0]) );
  HADDX1 \add_14_aco/U1_1_1  ( .A0(n4), .B0(n5), .C1(\add_14_aco/carry[2] ), 
        .SO(N3) );
  HADDX1 \add_14_aco/U1_1_2  ( .A0(n3), .B0(\add_14_aco/carry[2] ), .C1(
        \add_14_aco/carry[3] ), .SO(N4) );
  HADDX1 \add_14_aco/U1_1_3  ( .A0(n2), .B0(\add_14_aco/carry[3] ), .C1(
        \add_14_aco/carry[4] ), .SO(N5) );
  AND2X4 U3 ( .IN1(\mult_add_14_aco/B[0] ), .IN2(In[4]), .Q(n1) );
  INVX0 U4 ( .INP(n5), .ZN(N2) );
  AND2X1 U5 ( .IN1(In[3]), .IN2(\mult_add_14_aco/B[0] ), .Q(n2) );
  AND2X1 U6 ( .IN1(In[2]), .IN2(\mult_add_14_aco/B[0] ), .Q(n3) );
  AND2X1 U7 ( .IN1(In[1]), .IN2(\mult_add_14_aco/B[0] ), .Q(n4) );
  AND2X1 U8 ( .IN1(In[0]), .IN2(\mult_add_14_aco/B[0] ), .Q(n5) );
  INVX0 U9 ( .INP(reset), .ZN(\mult_add_14_aco/B[0] ) );
  XOR2X1 U10 ( .IN1(\add_14_aco/carry[4] ), .IN2(n1), .Q(N6) );
endmodule

