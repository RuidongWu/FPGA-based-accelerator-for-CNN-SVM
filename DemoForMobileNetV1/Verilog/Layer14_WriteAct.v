// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="Layer14_WriteAct,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu15eg-ffvb1156-2-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.243000,HLS_SYN_LAT=8196,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=193,HLS_SYN_LUT=742,HLS_VERSION=2018_3}" *)

module Layer14_WriteAct (
        ap_clk,
        ap_rst_n,
        ActDMA_V_TDATA,
        ActDMA_V_TVALID,
        ActDMA_V_TREADY,
        SyncSig_V,
        SyncSig_V_ap_vld,
        SyncSig_V_ap_ack,
        ActBuf_Data_address0,
        ActBuf_Data_ce0,
        ActBuf_Data_we0,
        ActBuf_Data_d0,
        ActBuf_Data_q0
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst_n;
input  [7:0] ActDMA_V_TDATA;
input   ActDMA_V_TVALID;
output   ActDMA_V_TREADY;
output   SyncSig_V;
output   SyncSig_V_ap_vld;
input   SyncSig_V_ap_ack;
output  [6:0] ActBuf_Data_address0;
output   ActBuf_Data_ce0;
output   ActBuf_Data_we0;
output  [63:0] ActBuf_Data_d0;
input  [63:0] ActBuf_Data_q0;

reg[6:0] ActBuf_Data_address0;
reg ActBuf_Data_ce0;
reg ActBuf_Data_we0;
reg[63:0] ActBuf_Data_d0;

 reg    ap_rst_n_inv;
reg   [7:0] ActDMA_V_0_data_out;
wire    ActDMA_V_0_vld_in;
wire    ActDMA_V_0_vld_out;
wire    ActDMA_V_0_ack_in;
reg    ActDMA_V_0_ack_out;
reg   [7:0] ActDMA_V_0_payload_A;
reg   [7:0] ActDMA_V_0_payload_B;
reg    ActDMA_V_0_sel_rd;
reg    ActDMA_V_0_sel_wr;
wire    ActDMA_V_0_sel;
wire    ActDMA_V_0_load_A;
wire    ActDMA_V_0_load_B;
reg   [1:0] ActDMA_V_0_state;
wire    ActDMA_V_0_state_cmp_full;
reg    SyncSig_V_1_data_reg;
reg    SyncSig_V_1_vld_reg;
reg    SyncSig_V_1_vld_in;
reg    SyncSig_V_1_ack_in;
wire    SyncSig_V_1_ack_out;
reg    ActDMA_V_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_3_fu_327_p2;
wire    ap_CS_fsm_state3;
reg   [0:0] tmp_3_reg_652;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state8;
wire   [0:0] tmp_22_fu_474_p2;
wire    ap_CS_fsm_state9;
reg   [0:0] tmp_22_reg_689;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg    SyncSig_V_blk_n;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
reg   [7:0] reg_289;
reg    ap_block_state2;
reg    ap_block_state8;
reg   [15:0] reg_293;
reg    ap_block_state9;
reg    ap_block_state3;
reg   [15:0] reg_297;
reg   [15:0] reg_301;
reg   [7:0] reg_305;
reg   [7:0] reg_309;
reg    ap_block_state4;
reg    ap_block_state10;
wire   [4:0] t_V_3_fu_466_p3;
reg   [4:0] reg_647;
wire   [4:0] t_V_fu_319_p3;
wire   [6:0] t_V_5_fu_249_p3;
reg    ap_block_state5;
wire   [6:0] t_V_6_fu_627_p3;
reg    ap_block_state11;
wire   [0:0] exitcond3_fu_448_p2;
wire   [9:0] grp_fu_313_p2;
reg   [9:0] reg_693;
reg   [6:0] reg_703;
wire   [6:0] t_V_3_mid_fu_486_p3;
wire   [15:0] tmp_33_fu_499_p1;
reg   [15:0] reg_708;
wire   [15:0] tmp_fu_344_p1;
wire   [0:0] exitcond_fu_635_p2;
wire   [0:0] ap_phi_mux_exitcond1_phi_fu_159_p4;
reg   [0:0] exitcond1_reg_155;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond_flatten_fu_454_p2;
wire   [6:0] ap_phi_mux_t_V_s_phi_fu_171_p4;
reg   [6:0] t_V_s_reg_167;
reg   [4:0] t_V6_reg_179;
reg   [9:0] indvar_flatten5_reg_190;
reg   [0:0] exitcond4_reg_202;
wire   [0:0] exitcond_flatten8_fu_641_p2;
reg   [6:0] t_V_1_reg_214;
reg   [4:0] t_V_2_reg_226;
reg   [9:0] indvar_flatten_reg_237;
wire   [63:0] tmp_6_fu_339_p1;
wire   [63:0] tmp_s_fu_412_p1;
wire   [63:0] tmp_29_fu_494_p1;
wire   [63:0] tmp_62_cast_fu_512_p1;
wire   [63:0] tmp_61_cast_fu_599_p1;
wire   [63:0] tmp_20_fu_387_p5;
wire   [63:0] tmp_4_fu_429_p1;
wire   [63:0] tmp_44_fu_556_p5;
wire   [63:0] tmp_28_fu_616_p1;
wire   [6:0] t_V_27_op_fu_434_p2;
reg   [9:0] grp_fu_313_p0;
wire   [4:0] r_V_fu_460_p2;
wire   [6:0] grp_fu_440_p3;
wire   [15:0] tmp_11_fu_348_p1;
wire   [15:0] tmp_14_fu_357_p1;
wire   [15:0] tmp_16_fu_367_p1;
wire   [15:0] tmp_18_fu_377_p1;
wire   [15:0] tmp_19_fu_381_p2;
wire   [15:0] tmp_17_fu_371_p2;
wire   [15:0] tmp_15_fu_361_p2;
wire   [15:0] tmp_13_fu_352_p2;
wire   [15:0] tmp_9_fu_408_p1;
wire   [15:0] tmp_7_fu_404_p1;
wire   [15:0] tmp_5_fu_400_p1;
wire   [55:0] tmp_2_fu_417_p5;
reg   [0:0] grp_fu_440_p0;
reg   [6:0] grp_fu_440_p2;
wire   [4:0] r_V_1_fu_333_p2;
wire   [7:0] tmp_33_cast_fu_503_p1;
wire   [7:0] tmp_30_fu_506_p2;
wire   [15:0] tmp_34_fu_517_p1;
wire   [15:0] tmp_37_fu_526_p1;
wire   [15:0] tmp_40_fu_536_p1;
wire   [15:0] tmp_42_fu_546_p1;
wire   [15:0] tmp_43_fu_550_p2;
wire   [15:0] tmp_41_fu_540_p2;
wire   [15:0] tmp_39_fu_530_p2;
wire   [15:0] tmp_36_fu_521_p2;
wire   [6:0] tmp_32_fu_581_p3;
wire   [7:0] tmp_30_cast_fu_589_p1;
wire   [7:0] tmp_26_fu_593_p2;
wire   [15:0] tmp_25_fu_577_p1;
wire   [15:0] tmp_24_fu_573_p1;
wire   [15:0] tmp_23_fu_569_p1;
wire   [55:0] tmp_27_fu_604_p5;
wire   [6:0] t_V_33_op_fu_621_p2;
reg   [12:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ActDMA_V_0_sel_rd = 1'b0;
#0 ActDMA_V_0_sel_wr = 1'b0;
#0 ActDMA_V_0_state = 2'd0;
#0 SyncSig_V_1_data_reg = 1'b0;
#0 SyncSig_V_1_vld_reg = 1'b0;
#0 ap_CS_fsm = 13'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ActDMA_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == ActDMA_V_0_ack_out) & (1'b1 == ActDMA_V_0_vld_out))) begin
            ActDMA_V_0_sel_rd <= ~ActDMA_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ActDMA_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == ActDMA_V_0_ack_in) & (1'b1 == ActDMA_V_0_vld_in))) begin
            ActDMA_V_0_sel_wr <= ~ActDMA_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ActDMA_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == ActDMA_V_0_state) & (1'b0 == ActDMA_V_0_vld_in)) | ((2'd3 == ActDMA_V_0_state) & (1'b0 == ActDMA_V_0_vld_in) & (1'b1 == ActDMA_V_0_ack_out)))) begin
            ActDMA_V_0_state <= 2'd2;
        end else if ((((2'd1 == ActDMA_V_0_state) & (1'b0 == ActDMA_V_0_ack_out)) | ((2'd3 == ActDMA_V_0_state) & (1'b0 == ActDMA_V_0_ack_out) & (1'b1 == ActDMA_V_0_vld_in)))) begin
            ActDMA_V_0_state <= 2'd1;
        end else if (((~((1'b0 == ActDMA_V_0_vld_in) & (1'b1 == ActDMA_V_0_ack_out)) & ~((1'b0 == ActDMA_V_0_ack_out) & (1'b1 == ActDMA_V_0_vld_in)) & (2'd3 == ActDMA_V_0_state)) | ((2'd1 == ActDMA_V_0_state) & (1'b1 == ActDMA_V_0_ack_out)) | ((2'd2 == ActDMA_V_0_state) & (1'b1 == ActDMA_V_0_vld_in)))) begin
            ActDMA_V_0_state <= 2'd3;
        end else begin
            ActDMA_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == SyncSig_V_1_vld_reg) & (1'b1 == SyncSig_V_1_vld_in))) begin
        SyncSig_V_1_vld_reg <= 1'b1;
    end else if (((1'b0 == SyncSig_V_1_vld_in) & (1'b1 == SyncSig_V_1_ack_out) & (1'b1 == SyncSig_V_1_vld_reg))) begin
        SyncSig_V_1_vld_reg <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        exitcond1_reg_155 <= exitcond3_fu_448_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        exitcond1_reg_155 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten8_fu_641_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        exitcond4_reg_202 <= exitcond_fu_635_p2;
    end else if (((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state7))) begin
        exitcond4_reg_202 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        indvar_flatten5_reg_190 <= reg_693;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten5_reg_190 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten8_fu_641_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        indvar_flatten_reg_237 <= reg_693;
    end else if (((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state7))) begin
        indvar_flatten_reg_237 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state2))) begin
        reg_647 <= t_V_fu_319_p3;
    end else if ((~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state8))) begin
        reg_647 <= t_V_3_fu_466_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_fu_474_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        reg_703 <= t_V_3_mid_fu_486_p3;
    end else if ((~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        reg_703 <= tmp_6_fu_339_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_fu_474_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        reg_708 <= tmp_29_fu_494_p1;
    end else if ((~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        reg_708 <= tmp_fu_344_p1;
    end else if ((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        reg_708 <= tmp_33_fu_499_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_V6_reg_179 <= reg_647;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        t_V6_reg_179 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten8_fu_641_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        t_V_1_reg_214 <= t_V_6_fu_627_p3;
    end else if (((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state7))) begin
        t_V_1_reg_214 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten8_fu_641_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        t_V_2_reg_226 <= reg_647;
    end else if (((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state7))) begin
        t_V_2_reg_226 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_V_s_reg_167 <= t_V_5_fu_249_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        t_V_s_reg_167 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ActDMA_V_0_load_A)) begin
        ActDMA_V_0_payload_A <= ActDMA_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ActDMA_V_0_load_B)) begin
        ActDMA_V_0_payload_B <= ActDMA_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == SyncSig_V_1_vld_reg) & (1'b1 == SyncSig_V_1_vld_in)) | ((1'b1 == SyncSig_V_1_ack_out) & (1'b1 == SyncSig_V_1_vld_in) & (1'b1 == SyncSig_V_1_vld_reg)))) begin
        SyncSig_V_1_data_reg <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_fu_474_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | (~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_fu_474_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | (~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        reg_289 <= ActDMA_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        reg_293 <= {{ActBuf_Data_q0[31:16]}};
        reg_297 <= {{ActBuf_Data_q0[47:32]}};
        reg_301 <= {{ActBuf_Data_q0[63:48]}};
    end
end

always @ (posedge ap_clk) begin
    if (((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | (~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state9)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        reg_305 <= ActDMA_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state10)) | (~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        reg_309 <= ActDMA_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state8)) | (~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state2)))) begin
        reg_693 <= grp_fu_313_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state8))) begin
        tmp_22_reg_689 <= tmp_22_fu_474_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_3_reg_652 <= tmp_3_fu_327_p2;
    end
end

always @ (*) begin
    if (((tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        ActBuf_Data_address0 = tmp_61_cast_fu_599_p1;
    end else if (((tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        ActBuf_Data_address0 = tmp_62_cast_fu_512_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ActBuf_Data_address0 = tmp_29_fu_494_p1;
    end else if (((tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ActBuf_Data_address0 = tmp_s_fu_412_p1;
    end else if (((tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        ActBuf_Data_address0 = reg_703;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ActBuf_Data_address0 = tmp_6_fu_339_p1;
    end else begin
        ActBuf_Data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state11)) | (~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state11)) | (~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state8)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | (~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state2)))) begin
        ActBuf_Data_ce0 = 1'b1;
    end else begin
        ActBuf_Data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        ActBuf_Data_d0 = tmp_28_fu_616_p1;
    end else if (((tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        ActBuf_Data_d0 = tmp_44_fu_556_p5;
    end else if (((tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ActBuf_Data_d0 = tmp_4_fu_429_p1;
    end else if (((tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        ActBuf_Data_d0 = tmp_20_fu_387_p5;
    end else begin
        ActBuf_Data_d0 = 'bx;
    end
end

always @ (*) begin
    if (((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state11)) | (~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state11)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state5)))) begin
        ActBuf_Data_we0 = 1'b1;
    end else begin
        ActBuf_Data_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state11)) | (~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state10)) | (~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state11)) | (~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | (~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | (~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state9)) | (~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_fu_474_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | (~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_22_fu_474_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | (~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (tmp_3_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ActDMA_V_0_ack_out = 1'b1;
    end else begin
        ActDMA_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ActDMA_V_0_sel)) begin
        ActDMA_V_0_data_out = ActDMA_V_0_payload_B;
    end else begin
        ActDMA_V_0_data_out = ActDMA_V_0_payload_A;
    end
end

always @ (*) begin
    if ((((tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state11)) | ((tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state10)) | ((tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state11)) | ((tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((tmp_22_reg_689 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((tmp_22_reg_689 == 1'd1) & (1'b1 == ap_CS_fsm_state9)) | ((tmp_22_fu_474_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((tmp_3_reg_652 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((tmp_3_reg_652 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((tmp_3_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ActDMA_V_TDATA_blk_n = ActDMA_V_0_state[1'd0];
    end else begin
        ActDMA_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == SyncSig_V_1_vld_reg) | ((1'b1 == SyncSig_V_1_ack_out) & (1'b1 == SyncSig_V_1_vld_reg)))) begin
        SyncSig_V_1_ack_in = 1'b1;
    end else begin
        SyncSig_V_1_ack_in = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state6)))) begin
        SyncSig_V_1_vld_in = 1'b1;
    end else begin
        SyncSig_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        SyncSig_V_blk_n = SyncSig_V_1_ack_in;
    end else begin
        SyncSig_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_313_p0 = indvar_flatten_reg_237;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_313_p0 = indvar_flatten5_reg_190;
    end else begin
        grp_fu_313_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_440_p0 = exitcond1_reg_155;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_440_p0 = ap_phi_mux_exitcond1_phi_fu_159_p4;
    end else begin
        grp_fu_440_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_440_p2 = t_V_s_reg_167;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_440_p2 = ap_phi_mux_t_V_s_phi_fu_171_p4;
    end else begin
        grp_fu_440_p2 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            if ((~(((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~(((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten_fu_454_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            if ((~(((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if ((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if ((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten8_fu_641_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if ((~(((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out))) & (exitcond_flatten8_fu_641_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == SyncSig_V_1_ack_in) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ActDMA_V_0_ack_in = ActDMA_V_0_state[1'd1];

assign ActDMA_V_0_load_A = (~ActDMA_V_0_sel_wr & ActDMA_V_0_state_cmp_full);

assign ActDMA_V_0_load_B = (ActDMA_V_0_state_cmp_full & ActDMA_V_0_sel_wr);

assign ActDMA_V_0_sel = ActDMA_V_0_sel_rd;

assign ActDMA_V_0_state_cmp_full = ((ActDMA_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign ActDMA_V_0_vld_in = ActDMA_V_TVALID;

assign ActDMA_V_0_vld_out = ActDMA_V_0_state[1'd0];

assign ActDMA_V_TREADY = ActDMA_V_0_state[1'd1];

assign SyncSig_V = SyncSig_V_1_data_reg;

assign SyncSig_V_1_ack_out = SyncSig_V_ap_ack;

assign SyncSig_V_ap_vld = SyncSig_V_1_vld_reg;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state10 = (((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out)));
end

always @ (*) begin
    ap_block_state11 = (((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out)));
end

always @ (*) begin
    ap_block_state2 = (((tmp_3_fu_327_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_fu_327_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out)));
end

always @ (*) begin
    ap_block_state3 = (((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out)));
end

always @ (*) begin
    ap_block_state4 = (((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out)));
end

always @ (*) begin
    ap_block_state5 = (((tmp_3_reg_652 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_3_reg_652 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out)));
end

always @ (*) begin
    ap_block_state8 = (((tmp_22_fu_474_p2 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_fu_474_p2 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out)));
end

always @ (*) begin
    ap_block_state9 = (((tmp_22_reg_689 == 1'd0) & (1'b0 == ActDMA_V_0_vld_out)) | ((tmp_22_reg_689 == 1'd1) & (1'b0 == ActDMA_V_0_vld_out)));
end

assign ap_phi_mux_exitcond1_phi_fu_159_p4 = exitcond1_reg_155;

assign ap_phi_mux_t_V_s_phi_fu_171_p4 = t_V_s_reg_167;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign exitcond3_fu_448_p2 = ((t_V_5_fu_249_p3 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_flatten8_fu_641_p2 = ((indvar_flatten_reg_237 == 10'd1023) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_454_p2 = ((indvar_flatten5_reg_190 == 10'd1023) ? 1'b1 : 1'b0);

assign exitcond_fu_635_p2 = ((t_V_6_fu_627_p3 == 7'd64) ? 1'b1 : 1'b0);

assign grp_fu_313_p2 = (grp_fu_313_p0 + 10'd1);

assign grp_fu_440_p3 = ((grp_fu_440_p0[0:0] === 1'b1) ? 7'd0 : grp_fu_440_p2);

assign r_V_1_fu_333_p2 = (t_V_2_reg_226 + 5'd1);

assign r_V_fu_460_p2 = (t_V6_reg_179 + 5'd1);

assign t_V_27_op_fu_434_p2 = (t_V_s_reg_167 + 7'd1);

assign t_V_33_op_fu_621_p2 = (t_V_1_reg_214 + 7'd1);

assign t_V_3_fu_466_p3 = ((exitcond4_reg_202[0:0] === 1'b1) ? r_V_1_fu_333_p2 : t_V_2_reg_226);

assign t_V_3_mid_fu_486_p3 = ((exitcond4_reg_202[0:0] === 1'b1) ? 7'd0 : t_V_1_reg_214);

assign t_V_5_fu_249_p3 = ((exitcond1_reg_155[0:0] === 1'b1) ? 7'd1 : t_V_27_op_fu_434_p2);

assign t_V_6_fu_627_p3 = ((exitcond4_reg_202[0:0] === 1'b1) ? 7'd1 : t_V_33_op_fu_621_p2);

assign t_V_fu_319_p3 = ((exitcond1_reg_155[0:0] === 1'b1) ? r_V_fu_460_p2 : t_V6_reg_179);

assign tmp_11_fu_348_p1 = reg_289;

assign tmp_13_fu_352_p2 = (tmp_11_fu_348_p1 + reg_708);

assign tmp_14_fu_357_p1 = reg_305;

assign tmp_15_fu_361_p2 = (tmp_14_fu_357_p1 + reg_293);

assign tmp_16_fu_367_p1 = reg_309;

assign tmp_17_fu_371_p2 = (tmp_16_fu_367_p1 + reg_297);

assign tmp_18_fu_377_p1 = ActDMA_V_0_data_out;

assign tmp_19_fu_381_p2 = (tmp_18_fu_377_p1 + reg_301);

assign tmp_20_fu_387_p5 = {{{{tmp_19_fu_381_p2}, {tmp_17_fu_371_p2}}, {tmp_15_fu_361_p2}}, {tmp_13_fu_352_p2}};

assign tmp_22_fu_474_p2 = ((t_V_3_fu_466_p3 == 5'd0) ? 1'b1 : 1'b0);

assign tmp_23_fu_569_p1 = reg_289;

assign tmp_24_fu_573_p1 = reg_305;

assign tmp_25_fu_577_p1 = reg_309;

assign tmp_26_fu_593_p2 = (tmp_30_cast_fu_589_p1 + 8'd64);

assign tmp_27_fu_604_p5 = {{{{ActDMA_V_0_data_out}, {tmp_25_fu_577_p1}}, {tmp_24_fu_573_p1}}, {tmp_23_fu_569_p1}};

assign tmp_28_fu_616_p1 = tmp_27_fu_604_p5;

assign tmp_29_fu_494_p1 = t_V_3_mid_fu_486_p3;

assign tmp_2_fu_417_p5 = {{{{ActDMA_V_0_data_out}, {tmp_9_fu_408_p1}}, {tmp_7_fu_404_p1}}, {tmp_5_fu_400_p1}};

assign tmp_30_cast_fu_589_p1 = tmp_32_fu_581_p3;

assign tmp_30_fu_506_p2 = (8'd64 + tmp_33_cast_fu_503_p1);

assign tmp_32_fu_581_p3 = ((exitcond4_reg_202[0:0] === 1'b1) ? 7'd0 : t_V_1_reg_214);

assign tmp_33_cast_fu_503_p1 = reg_703;

assign tmp_33_fu_499_p1 = ActBuf_Data_q0[15:0];

assign tmp_34_fu_517_p1 = reg_289;

assign tmp_36_fu_521_p2 = (reg_708 + tmp_34_fu_517_p1);

assign tmp_37_fu_526_p1 = reg_305;

assign tmp_39_fu_530_p2 = (reg_293 + tmp_37_fu_526_p1);

assign tmp_3_fu_327_p2 = ((t_V_fu_319_p3 == 5'd0) ? 1'b1 : 1'b0);

assign tmp_40_fu_536_p1 = reg_309;

assign tmp_41_fu_540_p2 = (reg_297 + tmp_40_fu_536_p1);

assign tmp_42_fu_546_p1 = ActDMA_V_0_data_out;

assign tmp_43_fu_550_p2 = (reg_301 + tmp_42_fu_546_p1);

assign tmp_44_fu_556_p5 = {{{{tmp_43_fu_550_p2}, {tmp_41_fu_540_p2}}, {tmp_39_fu_530_p2}}, {tmp_36_fu_521_p2}};

assign tmp_4_fu_429_p1 = tmp_2_fu_417_p5;

assign tmp_5_fu_400_p1 = reg_289;

assign tmp_61_cast_fu_599_p1 = tmp_26_fu_593_p2;

assign tmp_62_cast_fu_512_p1 = tmp_30_fu_506_p2;

assign tmp_6_fu_339_p1 = grp_fu_440_p3;

assign tmp_7_fu_404_p1 = reg_305;

assign tmp_9_fu_408_p1 = reg_309;

assign tmp_fu_344_p1 = ActBuf_Data_q0[15:0];

assign tmp_s_fu_412_p1 = grp_fu_440_p3;

endmodule //Layer14_WriteAct
