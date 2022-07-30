// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Layer4_FC_mac_dsp (
        ap_ready,
        a0,
        a1,
        a2,
        a3,
        b0,
        b1,
        b2,
        b3,
        ap_return
);


output   ap_ready;
input  [15:0] a0;
input  [15:0] a1;
input  [15:0] a2;
input  [15:0] a3;
input  [15:0] b0;
input  [15:0] b1;
input  [15:0] b2;
input  [15:0] b3;
output  [31:0] ap_return;

wire  signed [31:0] grp_fu_133_p3;
wire  signed [31:0] grp_fu_112_p3;
wire  signed [31:0] tmp_5_fu_120_p2;
wire  signed [31:0] tmp_8_fu_127_p2;

Layer4_FC_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
Layer4_FC_mac_mulbkb_U1(
    .din0(b0),
    .din1(a0),
    .din2(tmp_5_fu_120_p2),
    .dout(grp_fu_112_p3)
);

Layer4_FC_mul_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
Layer4_FC_mul_mulcud_U2(
    .din0(b1),
    .din1(a1),
    .dout(tmp_5_fu_120_p2)
);

Layer4_FC_mul_mulcud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
Layer4_FC_mul_mulcud_U3(
    .din0(b2),
    .din1(a2),
    .dout(tmp_8_fu_127_p2)
);

Layer4_FC_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
Layer4_FC_mac_mulbkb_U4(
    .din0(b3),
    .din1(a3),
    .din2(tmp_8_fu_127_p2),
    .dout(grp_fu_133_p3)
);

assign ap_ready = 1'b1;

assign ap_return = ($signed(grp_fu_133_p3) + $signed(grp_fu_112_p3));

endmodule //Layer4_FC_mac_dsp
