
module ALU_n8_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62;

  AND3X1 U3 ( .IN1(n12), .IN2(n13), .IN3(n11), .Q(DIFF[8]) );
  NAND2X0 U4 ( .IN1(n28), .IN2(n4), .QN(n1) );
  AND2X1 U5 ( .IN1(n1), .IN2(n2), .Q(n14) );
  OR2X4 U6 ( .IN1(n3), .IN2(n17), .Q(n2) );
  INVX0 U7 ( .INP(n16), .ZN(n3) );
  AND2X1 U8 ( .IN1(n27), .IN2(n16), .Q(n4) );
  IBUFFX16 U9 ( .INP(A[6]), .ZN(n26) );
  AND2X1 U10 ( .IN1(n27), .IN2(n30), .Q(n31) );
  NAND2X0 U11 ( .IN1(n29), .IN2(n30), .QN(n28) );
  NAND2X0 U12 ( .IN1(n17), .IN2(n18), .QN(n16) );
  NAND2X0 U13 ( .IN1(n34), .IN2(n35), .QN(n29) );
  NAND2X0 U14 ( .IN1(n52), .IN2(n53), .QN(n48) );
  NAND2X0 U15 ( .IN1(n54), .IN2(n55), .QN(n53) );
  NAND2X0 U16 ( .IN1(n40), .IN2(n41), .QN(n36) );
  NAND2X0 U17 ( .IN1(n42), .IN2(n43), .QN(n41) );
  NAND2X0 U18 ( .IN1(n58), .IN2(n59), .QN(n54) );
  XNOR2X1 U19 ( .IN1(n5), .IN2(n20), .Q(DIFF[7]) );
  NAND2X1 U20 ( .IN1(n23), .IN2(n24), .QN(n5) );
  XNOR2X1 U21 ( .IN1(n54), .IN2(n6), .Q(DIFF[1]) );
  NAND2X0 U22 ( .IN1(n52), .IN2(n55), .QN(n6) );
  XNOR2X1 U23 ( .IN1(n48), .IN2(n7), .Q(DIFF[2]) );
  NAND2X0 U24 ( .IN1(n46), .IN2(n49), .QN(n7) );
  XNOR2X1 U25 ( .IN1(n42), .IN2(n8), .Q(DIFF[3]) );
  NAND2X0 U26 ( .IN1(n40), .IN2(n43), .QN(n8) );
  XNOR2X1 U27 ( .IN1(n36), .IN2(n9), .Q(DIFF[4]) );
  NAND2X0 U28 ( .IN1(n34), .IN2(n37), .QN(n9) );
  NAND2X0 U29 ( .IN1(B[4]), .IN2(n38), .QN(n37) );
  NAND2X0 U30 ( .IN1(B[3]), .IN2(n44), .QN(n43) );
  NAND2X0 U31 ( .IN1(B[2]), .IN2(n50), .QN(n49) );
  NAND2X0 U32 ( .IN1(B[7]), .IN2(n22), .QN(n17) );
  OR2X1 U33 ( .IN1(n15), .IN2(B[6]), .Q(n11) );
  NAND2X1 U34 ( .IN1(n36), .IN2(n37), .QN(n35) );
  NAND2X1 U35 ( .IN1(n46), .IN2(n47), .QN(n42) );
  NAND2X1 U36 ( .IN1(n48), .IN2(n49), .QN(n47) );
  INVX0 U37 ( .INP(n60), .ZN(n59) );
  INVX0 U38 ( .INP(B[6]), .ZN(n18) );
  NAND2X1 U39 ( .IN1(n17), .IN2(n13), .QN(n20) );
  INVX0 U40 ( .INP(B[4]), .ZN(n39) );
  INVX0 U41 ( .INP(B[5]), .ZN(n33) );
  NAND2X0 U42 ( .IN1(B[5]), .IN2(n32), .QN(n30) );
  INVX0 U43 ( .INP(B[2]), .ZN(n51) );
  INVX0 U44 ( .INP(B[1]), .ZN(n57) );
  INVX0 U45 ( .INP(B[3]), .ZN(n45) );
  NAND2X0 U46 ( .IN1(B[1]), .IN2(n56), .QN(n55) );
  INVX0 U47 ( .INP(A[7]), .ZN(n22) );
  INVX0 U48 ( .INP(B[7]), .ZN(n21) );
  NAND2X0 U49 ( .IN1(B[6]), .IN2(n26), .QN(n25) );
  NAND2X0 U50 ( .IN1(A[5]), .IN2(n33), .QN(n27) );
  NAND2X0 U51 ( .IN1(A[1]), .IN2(n57), .QN(n52) );
  NAND2X0 U52 ( .IN1(A[3]), .IN2(n45), .QN(n40) );
  INVX0 U53 ( .INP(A[3]), .ZN(n44) );
  INVX0 U54 ( .INP(A[1]), .ZN(n56) );
  INVX0 U55 ( .INP(A[0]), .ZN(n62) );
  NAND2X0 U56 ( .IN1(A[2]), .IN2(n51), .QN(n46) );
  INVX0 U57 ( .INP(A[2]), .ZN(n50) );
  NAND2X0 U58 ( .IN1(A[4]), .IN2(n39), .QN(n34) );
  INVX0 U59 ( .INP(A[4]), .ZN(n38) );
  NAND2X0 U60 ( .IN1(n60), .IN2(n58), .QN(DIFF[0]) );
  NAND2X0 U61 ( .IN1(A[0]), .IN2(n61), .QN(n58) );
  NAND2X0 U62 ( .IN1(n19), .IN2(n17), .QN(n15) );
  NAND2X0 U63 ( .IN1(n19), .IN2(n25), .QN(n24) );
  NAND2X1 U64 ( .IN1(n27), .IN2(n28), .QN(n19) );
  NAND2X1 U65 ( .IN1(A[7]), .IN2(n21), .QN(n13) );
  INVX0 U66 ( .INP(A[5]), .ZN(n32) );
  NAND2X0 U67 ( .IN1(n14), .IN2(A[6]), .QN(n12) );
  NAND2X0 U68 ( .IN1(A[6]), .IN2(n18), .QN(n23) );
  NAND2X0 U69 ( .IN1(B[0]), .IN2(n62), .QN(n60) );
  INVX0 U70 ( .INP(B[0]), .ZN(n61) );
  XOR3X1 U71 ( .IN1(n18), .IN2(A[6]), .IN3(n19), .Q(DIFF[6]) );
  XOR2X1 U72 ( .IN1(n29), .IN2(n31), .Q(DIFF[5]) );
endmodule

