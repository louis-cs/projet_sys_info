////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.87xd
//  \   \         Application: netgen
//  /   /         Filename: compteur_timesim.v
// /___/   /\     Timestamp: Thu Mar 28 12:02:39 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf compteur.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim compteur.ncd compteur_timesim.v 
// Device	: 6slx16csg324-3 (PRODUCTION 1.21 2012-01-07)
// Input file	: compteur.ncd
// Output file	: /home/mhiri/Documents/git_projects/projet_sys_info/TD_vhdl/TD1/netgen/par/compteur_timesim.v
// # of Modules	: 1
// Design Name	: compteur
// Xilinx        : /usr/local/insa/Xilinx.ISE/13.4/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module compteur (
  CK, RST, LOAD, SENS, EN, Din, Dout
);
  input CK;
  input RST;
  input LOAD;
  input SENS;
  input EN;
  input [7 : 0] Din;
  output [7 : 0] Dout;
  wire \CK_BUFGP/IBUFG_0 ;
  wire CK_BUFGP;
  wire Mcount_C;
  wire LOAD_IBUF_0;
  wire SENS_IBUF_0;
  wire _n0025_inv;
  wire EN_IBUF_0;
  wire Din_0_IBUF_0;
  wire Din_1_IBUF_0;
  wire Din_2_IBUF_0;
  wire Din_3_IBUF_0;
  wire RST_inv;
  wire Din_4_IBUF_0;
  wire Din_5_IBUF_0;
  wire Din_6_IBUF_0;
  wire Din_7_IBUF_0;
  wire Mcount_C_mand1;
  wire Mcount_C_mand2;
  wire Mcount_C1_27;
  wire Mcount_C2;
  wire Mcount_C3;
  wire Mcount_C4;
  wire Mcount_C_mand_15;
  wire Mcount_C_mand3;
  wire Mcount_C_mand4;
  wire Mcount_C_mand5;
  wire Mcount_C_mand6;
  wire Mcount_C5;
  wire Mcount_C6;
  wire Mcount_C7;
  wire Mcount_C8;
  wire \CK_BUFGP/IBUFG_90 ;
  wire LOAD_IBUF_93;
  wire EN_IBUF_96;
  wire SENS_IBUF_99;
  wire \ProtoComp7.IINV.OUT ;
  wire RST_inv_non_inverted;
  wire Din_0_IBUF_106;
  wire Din_1_IBUF_109;
  wire Din_2_IBUF_112;
  wire Din_3_IBUF_115;
  wire Din_4_IBUF_118;
  wire Din_5_IBUF_123;
  wire Din_6_IBUF_128;
  wire Din_7_IBUF_133;
  wire \NlwBufferSignal_CK_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_C_3/CLK ;
  wire \NlwBufferSignal_C_2/CLK ;
  wire \NlwBufferSignal_C_1/CLK ;
  wire \NlwBufferSignal_C_0/CLK ;
  wire \NlwBufferSignal_C_7/CLK ;
  wire \NlwBufferSignal_C_6/CLK ;
  wire \NlwBufferSignal_C_5/CLK ;
  wire \NlwBufferSignal_C_4/CLK ;
  wire \NlwBufferSignal_Dout_4_OBUF/I ;
  wire \NlwBufferSignal_Dout_5_OBUF/I ;
  wire \NlwBufferSignal_Dout_6_OBUF/I ;
  wire \NlwBufferSignal_Dout_7_OBUF/I ;
  wire \NlwBufferSignal_Dout_0_OBUF/I ;
  wire \NlwBufferSignal_Dout_1_OBUF/I ;
  wire \NlwBufferSignal_Dout_2_OBUF/I ;
  wire \NlwBufferSignal_Dout_3_OBUF/I ;
  wire GND;
  wire \NLW_Mcount_C_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_C_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_C_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_C_xor<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_C_xor<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_C_xor<7>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_C_xor<7>_CO[3]_UNCONNECTED ;
  wire \NLW_Mcount_C_xor<7>_DI[3]_UNCONNECTED ;
  wire [7 : 0] C;
  wire [3 : 3] Mcount_C_cy;
  wire [7 : 0] Mcount_C_lut;
  initial $sdf_annotate("netgen/par/compteur_timesim.sdf");
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y3" ))
  \CK_BUFGP/BUFG  (
    .I(\NlwBufferSignal_CK_BUFGP/BUFG/IN ),
    .O(CK_BUFGP)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 1'b0 ))
  C_3 (
    .CE(_n0025_inv),
    .CLK(\NlwBufferSignal_C_3/CLK ),
    .I(Mcount_C4),
    .O(C[3]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 64'hEE44BB11EE44BB11 ))
  \Mcount_C_lut<3>  (
    .ADR2(1'b1),
    .ADR3(Din_3_IBUF_0),
    .ADR1(SENS_IBUF_0),
    .ADR4(C[3]),
    .ADR0(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 32'h55550000 ))
  Mcount_C_mand_2 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(C[3]),
    .ADR0(LOAD_IBUF_0),
    .O(Mcount_C_mand3)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 1'b0 ))
  C_2 (
    .CE(_n0025_inv),
    .CLK(\NlwBufferSignal_C_2/CLK ),
    .I(Mcount_C3),
    .O(C[2]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y9" ))
  \Mcount_C_cy<3>  (
    .CI(1'b0),
    .CYINIT(Mcount_C),
    .CO({Mcount_C_cy[3], \NLW_Mcount_C_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_C_cy<3>_CO[1]_UNCONNECTED , \NLW_Mcount_C_cy<3>_CO[0]_UNCONNECTED }),
    .DI({Mcount_C_mand3, Mcount_C_mand2, Mcount_C_mand1, Mcount_C_mand_15}),
    .O({Mcount_C4, Mcount_C3, Mcount_C2, Mcount_C1_27}),
    .S({Mcount_C_lut[3], Mcount_C_lut[2], Mcount_C_lut[1], Mcount_C_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 64'hAACCAA33AACCAA33 ))
  \Mcount_C_lut<2>  (
    .ADR2(1'b1),
    .ADR0(Din_2_IBUF_0),
    .ADR1(SENS_IBUF_0),
    .ADR4(C[2]),
    .ADR3(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 32'h00FF0000 ))
  Mcount_C_mand_1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(C[2]),
    .ADR3(LOAD_IBUF_0),
    .O(Mcount_C_mand2)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 1'b0 ))
  C_1 (
    .CE(_n0025_inv),
    .CLK(\NlwBufferSignal_C_1/CLK ),
    .I(Mcount_C2),
    .O(C[1]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 64'hF0AAF055F0AAF055 ))
  \Mcount_C_lut<1>  (
    .ADR1(1'b1),
    .ADR2(Din_1_IBUF_0),
    .ADR0(SENS_IBUF_0),
    .ADR4(C[1]),
    .ADR3(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 32'h00FF0000 ))
  Mcount_C_mand_0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(C[1]),
    .ADR3(LOAD_IBUF_0),
    .O(Mcount_C_mand1)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 1'b0 ))
  C_0 (
    .CE(_n0025_inv),
    .CLK(\NlwBufferSignal_C_0/CLK ),
    .I(Mcount_C1_27),
    .O(C[0]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 64'hAF05FA50AF05FA50 ))
  \Mcount_C_lut<0>  (
    .ADR1(1'b1),
    .ADR3(Din_0_IBUF_0),
    .ADR2(SENS_IBUF_0),
    .ADR4(C[0]),
    .ADR0(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 32'h55550000 ))
  Mcount_C_mand (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(C[0]),
    .ADR0(LOAD_IBUF_0),
    .O(Mcount_C_mand_15)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 1'b0 ))
  C_7 (
    .CE(_n0025_inv),
    .CLK(\NlwBufferSignal_C_7/CLK ),
    .I(Mcount_C8),
    .O(C[7]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hF5A0F5A0A0F5A0F5 ))
  \Mcount_C_lut<7>  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(Din_7_IBUF_0),
    .ADR5(C[7]),
    .ADR3(SENS_IBUF_0),
    .ADR0(LOAD_IBUF_0),
    .O(Mcount_C_lut[7])
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 1'b0 ))
  C_6 (
    .CE(_n0025_inv),
    .CLK(\NlwBufferSignal_C_6/CLK ),
    .I(Mcount_C7),
    .O(C[6]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y10" ))
  \Mcount_C_xor<7>  (
    .CI(Mcount_C_cy[3]),
    .CYINIT(1'b0),
    .CO({\NLW_Mcount_C_xor<7>_CO[3]_UNCONNECTED , \NLW_Mcount_C_xor<7>_CO[2]_UNCONNECTED , \NLW_Mcount_C_xor<7>_CO[1]_UNCONNECTED , 
\NLW_Mcount_C_xor<7>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mcount_C_xor<7>_DI[3]_UNCONNECTED , Mcount_C_mand6, Mcount_C_mand5, Mcount_C_mand4}),
    .O({Mcount_C8, Mcount_C7, Mcount_C6, Mcount_C5}),
    .S({Mcount_C_lut[7], Mcount_C_lut[6], Mcount_C_lut[5], Mcount_C_lut[4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hF0AAF055F0AAF055 ))
  \Mcount_C_lut<6>  (
    .ADR1(1'b1),
    .ADR2(Din_6_IBUF_0),
    .ADR0(SENS_IBUF_0),
    .ADR4(C[6]),
    .ADR3(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 32'h00FF0000 ))
  Mcount_C_mand_5 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(C[6]),
    .ADR3(LOAD_IBUF_0),
    .O(Mcount_C_mand6)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 1'b0 ))
  C_5 (
    .CE(_n0025_inv),
    .CLK(\NlwBufferSignal_C_5/CLK ),
    .I(Mcount_C6),
    .O(C[5]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hF0CCF033F0CCF033 ))
  \Mcount_C_lut<5>  (
    .ADR0(1'b1),
    .ADR2(Din_5_IBUF_0),
    .ADR1(SENS_IBUF_0),
    .ADR4(C[5]),
    .ADR3(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 32'h00FF0000 ))
  Mcount_C_mand_4 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(C[5]),
    .ADR3(LOAD_IBUF_0),
    .O(Mcount_C_mand5)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 1'b0 ))
  C_4 (
    .CE(_n0025_inv),
    .CLK(\NlwBufferSignal_C_4/CLK ),
    .I(Mcount_C5),
    .O(C[4]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hF0CCF033F0CCF033 ))
  \Mcount_C_lut<4>  (
    .ADR0(1'b1),
    .ADR2(Din_4_IBUF_0),
    .ADR1(SENS_IBUF_0),
    .ADR4(C[4]),
    .ADR3(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 32'h00FF0000 ))
  Mcount_C_mand_3 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(C[4]),
    .ADR3(LOAD_IBUF_0),
    .O(Mcount_C_mand4)
  );
  X_OPAD #(
    .LOC ( "PAD139" ))
  \Dout<4>  (
    .PAD(Dout[4])
  );
  X_OBUF #(
    .LOC ( "PAD139" ))
  Dout_4_OBUF (
    .I(\NlwBufferSignal_Dout_4_OBUF/I ),
    .O(Dout[4])
  );
  X_OPAD #(
    .LOC ( "PAD140" ))
  \Dout<5>  (
    .PAD(Dout[5])
  );
  X_OBUF #(
    .LOC ( "PAD140" ))
  Dout_5_OBUF (
    .I(\NlwBufferSignal_Dout_5_OBUF/I ),
    .O(Dout[5])
  );
  X_OPAD #(
    .LOC ( "PAD141" ))
  \Dout<6>  (
    .PAD(Dout[6])
  );
  X_OBUF #(
    .LOC ( "PAD141" ))
  Dout_6_OBUF (
    .I(\NlwBufferSignal_Dout_6_OBUF/I ),
    .O(Dout[6])
  );
  X_OPAD #(
    .LOC ( "PAD142" ))
  \Dout<7>  (
    .PAD(Dout[7])
  );
  X_OBUF #(
    .LOC ( "PAD142" ))
  Dout_7_OBUF (
    .I(\NlwBufferSignal_Dout_7_OBUF/I ),
    .O(Dout[7])
  );
  X_IPAD #(
    .LOC ( "PAD27" ))
  CK_45 (
    .PAD(CK)
  );
  X_BUF #(
    .LOC ( "PAD27" ))
  \CK_BUFGP/IBUFG  (
    .O(\CK_BUFGP/IBUFG_90 ),
    .I(CK)
  );
  X_BUF #(
    .LOC ( "PAD27" ))
  \ProtoComp6.IMUX  (
    .I(\CK_BUFGP/IBUFG_90 ),
    .O(\CK_BUFGP/IBUFG_0 )
  );
  X_IPAD #(
    .LOC ( "PAD2" ))
  LOAD_49 (
    .PAD(LOAD)
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  LOAD_IBUF (
    .O(LOAD_IBUF_93),
    .I(LOAD)
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  \ProtoComp6.IMUX.1  (
    .I(LOAD_IBUF_93),
    .O(LOAD_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD28" ))
  EN_53 (
    .PAD(EN)
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  EN_IBUF (
    .O(EN_IBUF_96),
    .I(EN)
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  \ProtoComp6.IMUX.2  (
    .I(EN_IBUF_96),
    .O(EN_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD30" ))
  SENS_57 (
    .PAD(SENS)
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  SENS_IBUF (
    .O(SENS_IBUF_99),
    .I(SENS)
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \ProtoComp6.IMUX.3  (
    .I(SENS_IBUF_99),
    .O(SENS_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD29" ))
  RST_62 (
    .PAD(RST)
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  RST_IBUF (
    .O(RST_inv_non_inverted),
    .I(RST)
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  \ProtoComp7.IMUX  (
    .I(\ProtoComp7.IINV.OUT ),
    .O(RST_inv)
  );
  X_INV #(
    .LOC ( "PAD29" ))
  \ProtoComp7.IINV  (
    .I(RST_inv_non_inverted),
    .O(\ProtoComp7.IINV.OUT )
  );
  X_IPAD #(
    .LOC ( "PAD154" ))
  \Din<0>  (
    .PAD(Din[0])
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  Din_0_IBUF (
    .O(Din_0_IBUF_106),
    .I(Din[0])
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  \ProtoComp6.IMUX.4  (
    .I(Din_0_IBUF_106),
    .O(Din_0_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD159" ))
  \Din<1>  (
    .PAD(Din[1])
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  Din_1_IBUF (
    .O(Din_1_IBUF_109),
    .I(Din[1])
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  \ProtoComp6.IMUX.5  (
    .I(Din_1_IBUF_109),
    .O(Din_1_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD160" ))
  \Din<2>  (
    .PAD(Din[2])
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  Din_2_IBUF (
    .O(Din_2_IBUF_112),
    .I(Din[2])
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  \ProtoComp6.IMUX.6  (
    .I(Din_2_IBUF_112),
    .O(Din_2_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD161" ))
  \Din<3>  (
    .PAD(Din[3])
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  Din_3_IBUF (
    .O(Din_3_IBUF_115),
    .I(Din[3])
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \ProtoComp6.IMUX.7  (
    .I(Din_3_IBUF_115),
    .O(Din_3_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD162" ))
  \Din<4>  (
    .PAD(Din[4])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  Din_4_IBUF (
    .O(Din_4_IBUF_118),
    .I(Din[4])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  \ProtoComp6.IMUX.8  (
    .I(Din_4_IBUF_118),
    .O(Din_4_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD125" ))
  \Dout<0>  (
    .PAD(Dout[0])
  );
  X_OBUF #(
    .LOC ( "PAD125" ))
  Dout_0_OBUF (
    .I(\NlwBufferSignal_Dout_0_OBUF/I ),
    .O(Dout[0])
  );
  X_IPAD #(
    .LOC ( "PAD163" ))
  \Din<5>  (
    .PAD(Din[5])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  Din_5_IBUF (
    .O(Din_5_IBUF_123),
    .I(Din[5])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \ProtoComp6.IMUX.9  (
    .I(Din_5_IBUF_123),
    .O(Din_5_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD126" ))
  \Dout<1>  (
    .PAD(Dout[1])
  );
  X_OBUF #(
    .LOC ( "PAD126" ))
  Dout_1_OBUF (
    .I(\NlwBufferSignal_Dout_1_OBUF/I ),
    .O(Dout[1])
  );
  X_IPAD #(
    .LOC ( "PAD164" ))
  \Din<6>  (
    .PAD(Din[6])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  Din_6_IBUF (
    .O(Din_6_IBUF_128),
    .I(Din[6])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \ProtoComp6.IMUX.10  (
    .I(Din_6_IBUF_128),
    .O(Din_6_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD129" ))
  \Dout<2>  (
    .PAD(Dout[2])
  );
  X_OBUF #(
    .LOC ( "PAD129" ))
  Dout_2_OBUF (
    .I(\NlwBufferSignal_Dout_2_OBUF/I ),
    .O(Dout[2])
  );
  X_IPAD #(
    .LOC ( "PAD178" ))
  \Din<7>  (
    .PAD(Din[7])
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  Din_7_IBUF (
    .O(Din_7_IBUF_133),
    .I(Din[7])
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  \ProtoComp6.IMUX.11  (
    .I(Din_7_IBUF_133),
    .O(Din_7_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD130" ))
  \Dout<3>  (
    .PAD(Dout[3])
  );
  X_OBUF #(
    .LOC ( "PAD130" ))
  Dout_3_OBUF (
    .I(\NlwBufferSignal_Dout_3_OBUF/I ),
    .O(Dout[3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y41" ),
    .INIT ( 64'hCCCCCCCCFFFFFFFF ))
  _n0025_inv1 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(EN_IBUF_0),
    .ADR1(LOAD_IBUF_0),
    .O(_n0025_inv)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y17" ),
    .INIT ( 64'h000F000F000F000F ))
  Mcount_C1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(LOAD_IBUF_0),
    .ADR2(SENS_IBUF_0),
    .O(Mcount_C)
  );
  X_BUF   \NlwBufferBlock_CK_BUFGP/BUFG/IN  (
    .I(\CK_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_CK_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_C_3/CLK  (
    .I(CK_BUFGP),
    .O(\NlwBufferSignal_C_3/CLK )
  );
  X_BUF   \NlwBufferBlock_C_2/CLK  (
    .I(CK_BUFGP),
    .O(\NlwBufferSignal_C_2/CLK )
  );
  X_BUF   \NlwBufferBlock_C_1/CLK  (
    .I(CK_BUFGP),
    .O(\NlwBufferSignal_C_1/CLK )
  );
  X_BUF   \NlwBufferBlock_C_0/CLK  (
    .I(CK_BUFGP),
    .O(\NlwBufferSignal_C_0/CLK )
  );
  X_BUF   \NlwBufferBlock_C_7/CLK  (
    .I(CK_BUFGP),
    .O(\NlwBufferSignal_C_7/CLK )
  );
  X_BUF   \NlwBufferBlock_C_6/CLK  (
    .I(CK_BUFGP),
    .O(\NlwBufferSignal_C_6/CLK )
  );
  X_BUF   \NlwBufferBlock_C_5/CLK  (
    .I(CK_BUFGP),
    .O(\NlwBufferSignal_C_5/CLK )
  );
  X_BUF   \NlwBufferBlock_C_4/CLK  (
    .I(CK_BUFGP),
    .O(\NlwBufferSignal_C_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Dout_4_OBUF/I  (
    .I(C[4]),
    .O(\NlwBufferSignal_Dout_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Dout_5_OBUF/I  (
    .I(C[5]),
    .O(\NlwBufferSignal_Dout_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Dout_6_OBUF/I  (
    .I(C[6]),
    .O(\NlwBufferSignal_Dout_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Dout_7_OBUF/I  (
    .I(C[7]),
    .O(\NlwBufferSignal_Dout_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Dout_0_OBUF/I  (
    .I(C[0]),
    .O(\NlwBufferSignal_Dout_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Dout_1_OBUF/I  (
    .I(C[1]),
    .O(\NlwBufferSignal_Dout_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Dout_2_OBUF/I  (
    .I(C[2]),
    .O(\NlwBufferSignal_Dout_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Dout_3_OBUF/I  (
    .I(C[3]),
    .O(\NlwBufferSignal_Dout_3_OBUF/I )
  );
  X_ZERO   NlwBlock_compteur_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

