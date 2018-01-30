
module ALU_n8_DW01_add_1 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;

  OAI21X1 U2 ( .IN1(A[6]), .IN2(B[6]), .IN3(n17), .QN(n15) );
  DELLN2X2 U3 ( .INP(A[6]), .Z(n1) );
  AND2X1 U4 ( .IN1(n41), .IN2(n40), .Q(SUM[0]) );
  OR2X4 U5 ( .IN1(n1), .IN2(B[6]), .Q(n18) );
  NAND2X0 U6 ( .IN1(n18), .IN2(n17), .QN(n3) );
  NAND2X0 U7 ( .IN1(n24), .IN2(n25), .QN(n22) );
  NAND2X0 U8 ( .IN1(n26), .IN2(n27), .QN(n25) );
  NAND2X0 U9 ( .IN1(n28), .IN2(n29), .QN(n26) );
  NAND2X0 U10 ( .IN1(n30), .IN2(n31), .QN(n29) );
  NAND2X0 U11 ( .IN1(n36), .IN2(n37), .QN(n34) );
  XNOR2X1 U12 ( .IN1(n4), .IN2(n16), .Q(SUM[7]) );
  NAND2X0 U13 ( .IN1(n14), .IN2(n12), .QN(n4) );
  AND2X1 U14 ( .IN1(n13), .IN2(n18), .Q(n19) );
  XNOR2X1 U15 ( .IN1(n34), .IN2(n5), .Q(SUM[2]) );
  NAND2X0 U16 ( .IN1(n32), .IN2(n35), .QN(n5) );
  XNOR2X1 U17 ( .IN1(n30), .IN2(n6), .Q(SUM[3]) );
  NAND2X0 U18 ( .IN1(n28), .IN2(n31), .QN(n6) );
  XNOR2X1 U19 ( .IN1(n26), .IN2(n7), .Q(SUM[4]) );
  NAND2X0 U20 ( .IN1(n24), .IN2(n27), .QN(n7) );
  XNOR2X1 U21 ( .IN1(n38), .IN2(n8), .Q(SUM[1]) );
  NAND2X0 U22 ( .IN1(n36), .IN2(n39), .QN(n8) );
  XNOR2X1 U23 ( .IN1(n22), .IN2(n9), .Q(SUM[5]) );
  NAND2X0 U24 ( .IN1(n20), .IN2(n23), .QN(n9) );
  AND2X1 U25 ( .IN1(n11), .IN2(n12), .Q(SUM[8]) );
  NAND2X0 U26 ( .IN1(n20), .IN2(n21), .QN(n17) );
  NAND2X0 U27 ( .IN1(n22), .IN2(n23), .QN(n21) );
  NAND2X1 U28 ( .IN1(n32), .IN2(n33), .QN(n30) );
  NAND2X1 U29 ( .IN1(n34), .IN2(n35), .QN(n33) );
  INVX0 U30 ( .INP(n40), .ZN(n38) );
  NAND2X0 U31 ( .IN1(n38), .IN2(n39), .QN(n37) );
  OR2X1 U32 ( .IN1(B[5]), .IN2(A[5]), .Q(n23) );
  OR2X1 U33 ( .IN1(B[4]), .IN2(A[4]), .Q(n27) );
  OR2X1 U34 ( .IN1(B[3]), .IN2(A[3]), .Q(n31) );
  OR2X1 U35 ( .IN1(B[2]), .IN2(A[2]), .Q(n35) );
  OR2X1 U36 ( .IN1(B[1]), .IN2(A[1]), .Q(n39) );
  NAND2X0 U37 ( .IN1(B[7]), .IN2(A[7]), .QN(n14) );
  OR2X1 U38 ( .IN1(B[7]), .IN2(A[7]), .Q(n12) );
  INVX0 U39 ( .INP(A[0]), .ZN(n43) );
  NAND2X0 U40 ( .IN1(B[5]), .IN2(A[5]), .QN(n20) );
  NAND2X0 U41 ( .IN1(B[2]), .IN2(A[2]), .QN(n32) );
  NAND2X0 U42 ( .IN1(B[4]), .IN2(A[4]), .QN(n24) );
  NAND2X1 U43 ( .IN1(n42), .IN2(n43), .QN(n41) );
  NAND2X0 U44 ( .IN1(n3), .IN2(n13), .QN(n16) );
  NAND2X0 U45 ( .IN1(B[3]), .IN2(A[3]), .QN(n28) );
  NAND2X0 U46 ( .IN1(B[1]), .IN2(A[1]), .QN(n36) );
  NAND2X0 U47 ( .IN1(B[6]), .IN2(A[6]), .QN(n13) );
  INVX0 U48 ( .INP(B[0]), .ZN(n42) );
  NAND2X0 U49 ( .IN1(B[0]), .IN2(A[0]), .QN(n40) );
  NAND3X0 U50 ( .IN1(n15), .IN2(n14), .IN3(n13), .QN(n11) );
  XOR2X1 U51 ( .IN1(n17), .IN2(n19), .Q(SUM[6]) );
endmodule

