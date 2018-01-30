
module Accumulator_n8 ( data_in, LoadAcc, clk, reset, data_out );
  input [7:0] data_in;
  output [7:0] data_out;
  input LoadAcc, clk, reset;
  wire   n1, n2, n3, n4;

  AO221X1 U6 ( .IN1(data_out[0]), .IN2(n1), .IN3(data_in[0]), .IN4(n2), .IN5(
        reset), .Q(data_out[0]) );
  AO22X1 U7 ( .IN1(data_in[1]), .IN2(n2), .IN3(data_out[1]), .IN4(n1), .Q(
        data_out[1]) );
  AO22X1 U8 ( .IN1(data_in[2]), .IN2(n2), .IN3(data_out[2]), .IN4(n1), .Q(
        data_out[2]) );
  AO22X1 U9 ( .IN1(data_in[3]), .IN2(n2), .IN3(data_out[3]), .IN4(n1), .Q(
        data_out[3]) );
  AO22X1 U10 ( .IN1(data_in[4]), .IN2(n2), .IN3(data_out[4]), .IN4(n1), .Q(
        data_out[4]) );
  AO22X1 U11 ( .IN1(data_in[5]), .IN2(n2), .IN3(data_out[5]), .IN4(n1), .Q(
        data_out[5]) );
  AO22X1 U12 ( .IN1(data_in[6]), .IN2(n2), .IN3(data_out[6]), .IN4(n1), .Q(
        data_out[6]) );
  AO22X1 U13 ( .IN1(data_in[7]), .IN2(n2), .IN3(data_out[7]), .IN4(n1), .Q(
        data_out[7]) );
  INVX0 U3 ( .INP(LoadAcc), .ZN(n3) );
  AND2X2 U4 ( .IN1(LoadAcc), .IN2(n4), .Q(n2) );
  AND2X1 U5 ( .IN1(n4), .IN2(n3), .Q(n1) );
  INVX0 U14 ( .INP(reset), .ZN(n4) );
endmodule

