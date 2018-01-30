
module ALU_n8 ( A, B, AddSub, shift, AluOut );
  input [7:0] A;
  input [7:0] B;
  output [7:0] AluOut;
  input AddSub, shift;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21, n10, n11, n12, n13, n14, n15, n16, n17, n18, n1, n2,
         n3, n4, n7, n8, n9, n19, n20, n21, n22, n23, n24, n25, n26;

  NOR2X2 U7 ( .IN1(n25), .IN2(shift), .QN(n11) );
  AO222X1 U11 ( .IN1(n11), .IN2(n10), .IN3(n8), .IN4(n12), .IN5(A[5]), .IN6(
        shift), .Q(AluOut[6]) );
  AO22X1 U12 ( .IN1(N11), .IN2(AddSub), .IN3(N20), .IN4(n26), .Q(n10) );
  AO222X1 U13 ( .IN1(n11), .IN2(n12), .IN3(n8), .IN4(n13), .IN5(A[4]), .IN6(
        shift), .Q(AluOut[5]) );
  AO22X1 U14 ( .IN1(N10), .IN2(AddSub), .IN3(N19), .IN4(n26), .Q(n12) );
  AO222X1 U15 ( .IN1(n11), .IN2(n13), .IN3(n8), .IN4(n14), .IN5(A[3]), .IN6(
        shift), .Q(AluOut[4]) );
  AO22X1 U16 ( .IN1(N9), .IN2(AddSub), .IN3(N18), .IN4(n26), .Q(n13) );
  AO222X1 U17 ( .IN1(n11), .IN2(n14), .IN3(n8), .IN4(n15), .IN5(A[2]), .IN6(
        shift), .Q(AluOut[3]) );
  AO22X1 U18 ( .IN1(N8), .IN2(AddSub), .IN3(N17), .IN4(n26), .Q(n14) );
  AO222X1 U19 ( .IN1(n11), .IN2(n15), .IN3(n8), .IN4(n16), .IN5(A[1]), .IN6(
        shift), .Q(AluOut[2]) );
  AO22X1 U20 ( .IN1(N7), .IN2(AddSub), .IN3(N16), .IN4(n26), .Q(n15) );
  AO222X1 U21 ( .IN1(n11), .IN2(n16), .IN3(n8), .IN4(n17), .IN5(A[0]), .IN6(
        shift), .Q(AluOut[1]) );
  AO22X1 U22 ( .IN1(N6), .IN2(AddSub), .IN3(N15), .IN4(n26), .Q(n16) );
  AO22X1 U23 ( .IN1(n11), .IN2(n17), .IN3(n8), .IN4(n18), .Q(AluOut[0]) );
  AO22X1 U24 ( .IN1(N4), .IN2(AddSub), .IN3(N13), .IN4(n26), .Q(n18) );
  AO22X1 U25 ( .IN1(N5), .IN2(AddSub), .IN3(N14), .IN4(n26), .Q(n17) );
  ALU_n8_DW01_sub_1 sub_13 ( .A({1'b0, A[7:1], n2}), .B({1'b0, B}), .CI(1'b0), 
        .DIFF({N21, N20, N19, N18, N17, N16, N15, N14, N13}) );
  ALU_n8_DW01_add_1 add_13 ( .A({1'b0, A[7:1], n2}), .B({1'b0, B}), .CI(1'b0), 
        .SUM({N12, N11, N10, N9, N8, N7, N6, N5, N4}) );
  INVX0 U4 ( .INP(n24), .ZN(n7) );
  INVX0 U5 ( .INP(n11), .ZN(n19) );
  AND3X1 U6 ( .IN1(n21), .IN2(n20), .IN3(n19), .Q(n3) );
  IBUFFX16 U8 ( .INP(shift), .ZN(n24) );
  OR4X1 U9 ( .IN1(n4), .IN2(N21), .IN3(AddSub), .IN4(n7), .Q(n20) );
  DELLN2X2 U10 ( .INP(N12), .Z(n1) );
  INVX0 U26 ( .INP(n10), .ZN(n4) );
  AND2X4 U27 ( .IN1(n25), .IN2(n24), .Q(n8) );
  NAND2X0 U28 ( .IN1(n9), .IN2(n3), .QN(AluOut[7]) );
  DELLN2X2 U29 ( .INP(A[0]), .Z(n2) );
  OR4X1 U30 ( .IN1(N12), .IN2(n26), .IN3(n7), .IN4(n4), .Q(n9) );
  INVX0 U31 ( .INP(AddSub), .ZN(n26) );
  INVX0 U32 ( .INP(n1), .ZN(n22) );
  INVX0 U33 ( .INP(N21), .ZN(n23) );
  NAND2X0 U34 ( .IN1(shift), .IN2(A[6]), .QN(n21) );
  MUX21X1 U35 ( .IN1(n23), .IN2(n22), .S(AddSub), .Q(n25) );
endmodule

