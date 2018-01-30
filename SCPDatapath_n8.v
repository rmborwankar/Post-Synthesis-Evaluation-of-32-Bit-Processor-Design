
module SCPDatapath_n8 ( clk, reset, start, AddSub, LoadAcc, AcSel, rd, wr, 
        IOMemSel, Shift, IM_Dbus, DataIn, DM_Doutbus, opCode, IM_Abus, DM_Abus, 
        DM_Dinbus, IOout );
  input [7:0] IM_Dbus;
  input [7:0] DataIn;
  input [7:0] DM_Doutbus;
  output [2:0] opCode;
  output [4:0] IM_Abus;
  output [4:0] DM_Abus;
  output [7:0] DM_Dinbus;
  output [7:0] IOout;
  input clk, reset, start, AddSub, LoadAcc, AcSel, rd, wr, IOMemSel, Shift;
  wire   N10, N11, N12, N13, N14, N15, N16, N28, N29, N30, N31, N32, N33, N34,
         N35, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n47;
  wire   [4:0] PcOut;
  wire   [7:0] AcOut;
  wire   [7:0] AluOut;
  assign opCode[0] = N14;
  assign opCode[1] = N15;
  assign opCode[2] = N16;

  LATCHX1 \IM_Abus_reg[4]  ( .CLK(n2), .D(PcOut[4]), .Q(IM_Abus[4]) );
  LATCHX1 \IM_Abus_reg[3]  ( .CLK(n2), .D(PcOut[3]), .Q(IM_Abus[3]) );
  LATCHX1 \IM_Abus_reg[2]  ( .CLK(n2), .D(PcOut[2]), .Q(IM_Abus[2]) );
  LATCHX1 \IM_Abus_reg[1]  ( .CLK(n2), .D(PcOut[1]), .Q(IM_Abus[1]) );
  LATCHX1 \IM_Abus_reg[0]  ( .CLK(n2), .D(PcOut[0]), .Q(IM_Abus[0]) );
  LATCHX1 \DM_Dinbus_reg[7]  ( .CLK(wr), .D(N35), .Q(DM_Dinbus[7]) );
  LATCHX1 \DM_Dinbus_reg[6]  ( .CLK(wr), .D(N34), .Q(DM_Dinbus[6]) );
  LATCHX1 \DM_Dinbus_reg[5]  ( .CLK(wr), .D(N33), .Q(DM_Dinbus[5]) );
  LATCHX1 \DM_Dinbus_reg[4]  ( .CLK(wr), .D(N32), .Q(DM_Dinbus[4]) );
  LATCHX1 \DM_Dinbus_reg[3]  ( .CLK(wr), .D(N31), .Q(DM_Dinbus[3]) );
  LATCHX1 \DM_Dinbus_reg[2]  ( .CLK(wr), .D(N30), .Q(DM_Dinbus[2]) );
  LATCHX1 \DM_Dinbus_reg[1]  ( .CLK(wr), .D(N29), .Q(DM_Dinbus[1]) );
  LATCHX1 \DM_Dinbus_reg[0]  ( .CLK(wr), .D(N28), .Q(DM_Dinbus[0]) );
  AO22X1 U8 ( .IN1(IOMemSel), .IN2(DataIn[7]), .IN3(AcOut[7]), .IN4(n47), .Q(
        N35) );
  PC_n8 pc ( .In({N13, N12, N11, N10, n25}), .reset(n24), .start(start), .clk(
        clk), .Out(PcOut) );
  Accumulator_n8 ac ( .data_in({n9, IOout[6:0]}), .LoadAcc(LoadAcc), .clk(clk), 
        .reset(n24), .data_out(AcOut) );
  ALU_n8 alu ( .A(AcOut), .B(DM_Doutbus), .AddSub(AddSub), .shift(Shift), 
        .AluOut(AluOut) );
  IBUFFX16 U3 ( .INP(AcSel), .ZN(n26) );
  INVX0 U4 ( .INP(IM_Dbus[5]), .ZN(n22) );
  INVX0 U5 ( .INP(IM_Dbus[6]), .ZN(n20) );
  INVX0 U6 ( .INP(IM_Dbus[7]), .ZN(n21) );
  AND2X4 U7 ( .IN1(DM_Doutbus[7]), .IN2(n26), .Q(n1) );
  INVX0 U9 ( .INP(n13), .ZN(n2) );
  INVX0 U10 ( .INP(n13), .ZN(n3) );
  INVX0 U11 ( .INP(n13), .ZN(n23) );
  MUX21X1 U12 ( .IN1(n30), .IN2(n35), .S(IM_Dbus[1]), .Q(DM_Abus[1]) );
  AO21X1 U13 ( .IN1(AcSel), .IN2(AluOut[7]), .IN3(n1), .Q(IOout[7]) );
  INVX0 U14 ( .INP(rd), .ZN(n4) );
  INVX0 U15 ( .INP(n4), .ZN(n5) );
  AND4X1 U16 ( .IN1(n7), .IN2(n3), .IN3(n37), .IN4(n40), .Q(n6) );
  INVX0 U17 ( .INP(n39), .ZN(n7) );
  AO22X2 U18 ( .IN1(n36), .IN2(n14), .IN3(n35), .IN4(IM_Dbus[2]), .Q(
        DM_Abus[2]) );
  OR2X2 U19 ( .IN1(n8), .IN2(n6), .Q(DM_Abus[3]) );
  AOI21X1 U20 ( .IN1(n42), .IN2(n43), .IN3(n40), .QN(n8) );
  DELLN2X2 U21 ( .INP(IOout[7]), .Z(n9) );
  INVX0 U22 ( .INP(rd), .ZN(n10) );
  NAND2X0 U23 ( .IN1(n3), .IN2(n10), .QN(n11) );
  DELLN2X2 U24 ( .INP(AcOut[6]), .Z(n12) );
  NBUFFX2 U25 ( .INP(reset), .Z(n13) );
  NOR2X0 U26 ( .IN1(reset), .IN2(n22), .QN(N14) );
  IBUFFX16 U27 ( .INP(n10), .ZN(n14) );
  MUX21X2 U28 ( .IN1(n29), .IN2(n28), .S(IM_Dbus[0]), .Q(DM_Abus[0]) );
  DELLN2X2 U29 ( .INP(AcOut[4]), .Z(n15) );
  DELLN2X2 U30 ( .INP(AcOut[5]), .Z(n16) );
  DELLN2X2 U31 ( .INP(AcOut[2]), .Z(n17) );
  DELLN2X2 U32 ( .INP(AcOut[3]), .Z(n18) );
  DELLN2X2 U33 ( .INP(AcOut[1]), .Z(n19) );
  NOR2X0 U34 ( .IN1(n20), .IN2(reset), .QN(N15) );
  NOR2X0 U35 ( .IN1(n21), .IN2(reset), .QN(N16) );
  NBUFFX2 U36 ( .INP(n13), .Z(n24) );
  NAND2X0 U37 ( .IN1(IM_Dbus[3]), .IN2(n3), .QN(n41) );
  NAND2X0 U38 ( .IN1(n38), .IN2(n23), .QN(n43) );
  INVX0 U39 ( .INP(n41), .ZN(N12) );
  NOR2X0 U40 ( .IN1(n24), .IN2(n33), .QN(N11) );
  NOR2X0 U41 ( .IN1(n24), .IN2(n32), .QN(N10) );
  INVX0 U42 ( .INP(IOMemSel), .ZN(n47) );
  INVX0 U43 ( .INP(n38), .ZN(n37) );
  NOR2X0 U44 ( .IN1(n24), .IN2(n27), .QN(N13) );
  NAND3X1 U45 ( .IN1(n43), .IN2(n11), .IN3(n41), .QN(n44) );
  AND3X1 U46 ( .IN1(n3), .IN2(n31), .IN3(n5), .Q(n30) );
  NOR2X0 U47 ( .IN1(n33), .IN2(n32), .QN(n34) );
  AND2X1 U48 ( .IN1(IM_Dbus[0]), .IN2(n23), .Q(n25) );
  AO22X1 U49 ( .IN1(DataIn[0]), .IN2(IOMemSel), .IN3(AcOut[0]), .IN4(n47), .Q(
        N28) );
  AO22X1 U50 ( .IN1(DataIn[1]), .IN2(IOMemSel), .IN3(n19), .IN4(n47), .Q(N29)
         );
  AO22X1 U51 ( .IN1(DataIn[2]), .IN2(IOMemSel), .IN3(n17), .IN4(n47), .Q(N30)
         );
  AO22X1 U52 ( .IN1(DataIn[3]), .IN2(IOMemSel), .IN3(n18), .IN4(n47), .Q(N31)
         );
  AO22X1 U53 ( .IN1(DataIn[4]), .IN2(IOMemSel), .IN3(n15), .IN4(n47), .Q(N32)
         );
  AO22X1 U54 ( .IN1(DataIn[5]), .IN2(IOMemSel), .IN3(n16), .IN4(n47), .Q(N33)
         );
  AO22X1 U55 ( .IN1(DataIn[6]), .IN2(IOMemSel), .IN3(n12), .IN4(n47), .Q(N34)
         );
  INVX0 U56 ( .INP(IM_Dbus[2]), .ZN(n33) );
  INVX0 U57 ( .INP(IM_Dbus[1]), .ZN(n32) );
  INVX0 U58 ( .INP(IM_Dbus[3]), .ZN(n40) );
  INVX0 U59 ( .INP(IM_Dbus[0]), .ZN(n31) );
  INVX0 U60 ( .INP(IM_Dbus[4]), .ZN(n27) );
  MUX21X2 U61 ( .IN1(n6), .IN2(n44), .S(IM_Dbus[4]), .Q(DM_Abus[4]) );
  NOR2X0 U62 ( .IN1(n10), .IN2(n24), .QN(n29) );
  NAND2X0 U63 ( .IN1(n3), .IN2(n39), .QN(n42) );
  NOR2X0 U64 ( .IN1(n5), .IN2(n24), .QN(n28) );
  INVX0 U65 ( .INP(rd), .ZN(n39) );
  AO22X1 U66 ( .IN1(DM_Doutbus[0]), .IN2(n26), .IN3(AluOut[0]), .IN4(AcSel), 
        .Q(IOout[0]) );
  AO22X1 U67 ( .IN1(AluOut[1]), .IN2(AcSel), .IN3(DM_Doutbus[1]), .IN4(n26), 
        .Q(IOout[1]) );
  AO22X1 U68 ( .IN1(AluOut[2]), .IN2(AcSel), .IN3(DM_Doutbus[2]), .IN4(n26), 
        .Q(IOout[2]) );
  AO22X1 U69 ( .IN1(AluOut[3]), .IN2(AcSel), .IN3(DM_Doutbus[3]), .IN4(n26), 
        .Q(IOout[3]) );
  AO22X1 U70 ( .IN1(AluOut[4]), .IN2(AcSel), .IN3(DM_Doutbus[4]), .IN4(n26), 
        .Q(IOout[4]) );
  AO22X1 U71 ( .IN1(AluOut[5]), .IN2(AcSel), .IN3(DM_Doutbus[5]), .IN4(n26), 
        .Q(IOout[5]) );
  AO22X1 U72 ( .IN1(AluOut[6]), .IN2(AcSel), .IN3(DM_Doutbus[6]), .IN4(n26), 
        .Q(IOout[6]) );
  AO21X1 U73 ( .IN1(n10), .IN2(n2), .IN3(n25), .Q(n35) );
  NAND3X0 U74 ( .IN1(n32), .IN2(n31), .IN3(n33), .QN(n38) );
  OA21X1 U75 ( .IN1(n37), .IN2(n34), .IN3(n3), .Q(n36) );
endmodule

