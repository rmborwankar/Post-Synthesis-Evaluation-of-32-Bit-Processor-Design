
module SCPController ( clk, opCode, start, AddSub, LoadAcc, AcSel, Rd, Wr, 
        IOMemSel, Shift );
  input [2:0] opCode;
  input clk;
  output start, AddSub, LoadAcc, AcSel, Rd, Wr, IOMemSel, Shift;
  wire   N22, n5, n1, n2, n3, n4, n6, n7, n8, n9, n10;
  assign start = 1'b1;
  assign Shift = N22;

  IBUFFX2 U4 ( .INP(n9), .ZN(AddSub) );
  NAND3X1 U5 ( .IN1(n6), .IN2(n1), .IN3(opCode[0]), .QN(n9) );
  DELLN1X2 U6 ( .INP(opCode[2]), .Z(n1) );
  INVX0 U7 ( .INP(n4), .ZN(n2) );
  IBUFFX16 U8 ( .INP(opCode[0]), .ZN(n4) );
  XNOR2X2 U9 ( .IN1(n2), .IN2(n3), .Q(n5) );
  INVX0 U10 ( .INP(n6), .ZN(n3) );
  IBUFFX16 U11 ( .INP(opCode[1]), .ZN(n6) );
  INVX0 U12 ( .INP(n8), .ZN(n10) );
  XNOR2X1 U13 ( .IN1(n1), .IN2(n2), .Q(n8) );
  NOR2X0 U14 ( .IN1(n3), .IN2(n8), .QN(Wr) );
  AO21X1 U15 ( .IN1(opCode[0]), .IN2(opCode[2]), .IN3(opCode[1]), .Q(Rd) );
  NOR2X0 U16 ( .IN1(n1), .IN2(n5), .QN(IOMemSel) );
  NAND2X0 U17 ( .IN1(opCode[1]), .IN2(n1), .QN(n7) );
  NOR2X1 U18 ( .IN1(n4), .IN2(n7), .QN(N22) );
  NAND2X1 U19 ( .IN1(n9), .IN2(n7), .QN(AcSel) );
  AO21X1 U20 ( .IN1(n3), .IN2(n10), .IN3(AddSub), .Q(LoadAcc) );
endmodule

