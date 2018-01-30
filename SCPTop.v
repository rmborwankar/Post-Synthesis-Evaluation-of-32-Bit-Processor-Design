
module SCPTop ( clk, reset, DataIn, IOout );
  input [7:0] DataIn;
  output [7:0] IOout;
  input clk, reset;
  wire   AddSub, LoadAcc, AcSel, Rd, Wr, IOMemSel, Shift, n1;
  wire   [7:0] IM_Dbus;
  wire   [7:0] DM_Outbus;
  wire   [2:0] opCode;
  wire   [4:0] IM_Abus;
  wire   [4:0] DM_Abus;
  wire   [7:0] DM_Inbus;

  SCPDatapath_n8 datapath ( .clk(clk), .reset(reset), .start(1'b1), .AddSub(
        AddSub), .LoadAcc(LoadAcc), .AcSel(AcSel), .rd(Rd), .wr(Wr), 
        .IOMemSel(IOMemSel), .Shift(Shift), .IM_Dbus(IM_Dbus), .DataIn(DataIn), 
        .DM_Doutbus(DM_Outbus), .opCode(opCode), .IM_Abus(IM_Abus), .DM_Abus(
        DM_Abus), .DM_Dinbus(DM_Inbus), .IOout(IOout) );
  SCPController controller ( .clk(clk), .opCode(opCode), .AddSub(AddSub), 
        .LoadAcc(LoadAcc), .AcSel(AcSel), .Rd(Rd), .Wr(Wr), .IOMemSel(IOMemSel), .Shift(Shift) );
  InstructionMem iM ( .addrBus(IM_Abus), .dataBus(IM_Dbus) );
  DataMem_n8 dM ( .AddrBus(DM_Abus), .Rd(n1), .Wr(Wr), .LoadAcc(LoadAcc), 
        .DataInBus(DM_Inbus), .DataOutBus(DM_Outbus) );
  DELLN2X2 U1 ( .INP(Rd), .Z(n1) );
endmodule

