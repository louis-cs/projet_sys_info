////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.87xd
//  \   \         Application: netgen
//  /   /         Filename: compteur_map.v
// /___/   /\     Timestamp: Wed Mar 27 10:36:40 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf compteur.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim compteur_map.ncd compteur_map.v 
// Device	: 6slx16csg324-3 (PRODUCTION 1.21 2012-01-07)
// Input file	: compteur_map.ncd
// Output file	: /home/mhiri/Documents/git_projects/projet_sys_info/TD_vhdl/TD1/netgen/map/compteur_map.v
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
  initial $sdf_annotate("netgen/map/compteur_map.sdf");
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \CK_BUFGP/BUFG  (
    .I(\CK_BUFGP/IBUFG_0 ),
    .O(CK_BUFGP)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 1'b0 ))
  C_3 (
    .CE(_n0025_inv),
    .CLK(CK_BUFGP),
    .I(Mcount_C4),
    .O(C[3]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 64'hCCCCF00FCCCCF00F ))
  \Mcount_C_lut<3>  (
    .ADR0(1'b1),
    .ADR1(Din_3_IBUF_0),
    .ADR2(SENS_IBUF_0),
    .ADR3(C[3]),
    .ADR4(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 32'h0000FF00 ))
  Mcount_C_mand_2 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(C[3]),
    .ADR4(LOAD_IBUF_0),
    .O(Mcount_C_mand3)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 1'b0 ))
  C_2 (
    .CE(_n0025_inv),
    .CLK(CK_BUFGP),
    .I(Mcount_C3),
    .O(C[2]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X10Y2" ))
  \Mcount_C_cy<3>  (
    .CI(1'b0),
    .CYINIT(Mcount_C),
    .CO({Mcount_C_cy[3], \NLW_Mcount_C_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_C_cy<3>_CO[1]_UNCONNECTED , \NLW_Mcount_C_cy<3>_CO[0]_UNCONNECTED }),
    .DI({Mcount_C_mand3, Mcount_C_mand2, Mcount_C_mand1, Mcount_C_mand_15}),
    .O({Mcount_C4, Mcount_C3, Mcount_C2, Mcount_C1_27}),
    .S({Mcount_C_lut[3], Mcount_C_lut[2], Mcount_C_lut[1], Mcount_C_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 64'hCCCCF00FCCCCF00F ))
  \Mcount_C_lut<2>  (
    .ADR0(1'b1),
    .ADR1(Din_2_IBUF_0),
    .ADR2(SENS_IBUF_0),
    .ADR3(C[2]),
    .ADR4(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 32'h0000FF00 ))
  Mcount_C_mand_1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(C[2]),
    .ADR4(LOAD_IBUF_0),
    .O(Mcount_C_mand2)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 1'b0 ))
  C_1 (
    .CE(_n0025_inv),
    .CLK(CK_BUFGP),
    .I(Mcount_C2),
    .O(C[1]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 64'hCCCCF00FCCCCF00F ))
  \Mcount_C_lut<1>  (
    .ADR0(1'b1),
    .ADR1(Din_1_IBUF_0),
    .ADR2(SENS_IBUF_0),
    .ADR3(C[1]),
    .ADR4(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 32'h0000FF00 ))
  Mcount_C_mand_0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(C[1]),
    .ADR4(LOAD_IBUF_0),
    .O(Mcount_C_mand1)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 1'b0 ))
  C_0 (
    .CE(_n0025_inv),
    .CLK(CK_BUFGP),
    .I(Mcount_C1_27),
    .O(C[0]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 64'hCCCC0FF0CCCC0FF0 ))
  \Mcount_C_lut<0>  (
    .ADR0(1'b1),
    .ADR1(Din_0_IBUF_0),
    .ADR2(SENS_IBUF_0),
    .ADR3(C[0]),
    .ADR4(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 32'h0000FF00 ))
  Mcount_C_mand (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(C[0]),
    .ADR4(LOAD_IBUF_0),
    .O(Mcount_C_mand_15)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 1'b0 ))
  C_7 (
    .CE(_n0025_inv),
    .CLK(CK_BUFGP),
    .I(Mcount_C8),
    .O(C[7]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 64'hF0F0F0F0FF0000FF ))
  \Mcount_C_lut<7>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(Din_7_IBUF_0),
    .ADR3(C[7]),
    .ADR4(SENS_IBUF_0),
    .ADR5(LOAD_IBUF_0),
    .O(Mcount_C_lut[7])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 1'b0 ))
  C_6 (
    .CE(_n0025_inv),
    .CLK(CK_BUFGP),
    .I(Mcount_C7),
    .O(C[6]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X10Y3" ))
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
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 64'hCCCCF00FCCCCF00F ))
  \Mcount_C_lut<6>  (
    .ADR0(1'b1),
    .ADR1(Din_6_IBUF_0),
    .ADR2(SENS_IBUF_0),
    .ADR3(C[6]),
    .ADR4(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 32'h0000FF00 ))
  Mcount_C_mand_5 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(C[6]),
    .ADR4(LOAD_IBUF_0),
    .O(Mcount_C_mand6)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 1'b0 ))
  C_5 (
    .CE(_n0025_inv),
    .CLK(CK_BUFGP),
    .I(Mcount_C6),
    .O(C[5]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 64'hCCCCF00FCCCCF00F ))
  \Mcount_C_lut<5>  (
    .ADR0(1'b1),
    .ADR1(Din_5_IBUF_0),
    .ADR2(SENS_IBUF_0),
    .ADR3(C[5]),
    .ADR4(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 32'h0000FF00 ))
  Mcount_C_mand_4 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(C[5]),
    .ADR4(LOAD_IBUF_0),
    .O(Mcount_C_mand5)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 1'b0 ))
  C_4 (
    .CE(_n0025_inv),
    .CLK(CK_BUFGP),
    .I(Mcount_C5),
    .O(C[4]),
    .SRST(RST_inv),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 64'hCCCCF00FCCCCF00F ))
  \Mcount_C_lut<4>  (
    .ADR0(1'b1),
    .ADR1(Din_4_IBUF_0),
    .ADR2(SENS_IBUF_0),
    .ADR3(C[4]),
    .ADR4(LOAD_IBUF_0),
    .ADR5(1'b1),
    .O(Mcount_C_lut[4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 32'h0000FF00 ))
  Mcount_C_mand_3 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(C[4]),
    .ADR4(LOAD_IBUF_0),
    .O(Mcount_C_mand4)
  );
  X_OPAD #(
    .LOC ( "PAD175" ))
  \Dout<4>  (
    .PAD(Dout[4])
  );
  X_OBUF #(
    .LOC ( "PAD175" ))
  Dout_4_OBUF (
    .I(C[4]),
    .O(Dout[4])
  );
  X_OPAD #(
    .LOC ( "PAD176" ))
  \Dout<5>  (
    .PAD(Dout[5])
  );
  X_OBUF #(
    .LOC ( "PAD176" ))
  Dout_5_OBUF (
    .I(C[5]),
    .O(Dout[5])
  );
  X_OPAD #(
    .LOC ( "PAD179" ))
  \Dout<6>  (
    .PAD(Dout[6])
  );
  X_OBUF #(
    .LOC ( "PAD179" ))
  Dout_6_OBUF (
    .I(C[6]),
    .O(Dout[6])
  );
  X_OPAD #(
    .LOC ( "PAD180" ))
  \Dout<7>  (
    .PAD(Dout[7])
  );
  X_OBUF #(
    .LOC ( "PAD180" ))
  Dout_7_OBUF (
    .I(C[7]),
    .O(Dout[7])
  );
  X_IPAD #(
    .LOC ( "PAD216" ))
  CK_45 (
    .PAD(CK)
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \CK_BUFGP/IBUFG  (
    .O(\CK_BUFGP/IBUFG_90 ),
    .I(CK)
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \ProtoComp6.IMUX  (
    .I(\CK_BUFGP/IBUFG_90 ),
    .O(\CK_BUFGP/IBUFG_0 )
  );
  X_IPAD #(
    .LOC ( "PAD173" ))
  LOAD_49 (
    .PAD(LOAD)
  );
  X_BUF #(
    .LOC ( "PAD173" ))
  LOAD_IBUF (
    .O(LOAD_IBUF_93),
    .I(LOAD)
  );
  X_BUF #(
    .LOC ( "PAD173" ))
  \ProtoComp6.IMUX.1  (
    .I(LOAD_IBUF_93),
    .O(LOAD_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD157" ))
  EN_53 (
    .PAD(EN)
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  EN_IBUF (
    .O(EN_IBUF_96),
    .I(EN)
  );
  X_BUF #(
    .LOC ( "PAD157" ))
  \ProtoComp6.IMUX.2  (
    .I(EN_IBUF_96),
    .O(EN_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD158" ))
  SENS_57 (
    .PAD(SENS)
  );
  X_BUF #(
    .LOC ( "PAD158" ))
  SENS_IBUF (
    .O(SENS_IBUF_99),
    .I(SENS)
  );
  X_BUF #(
    .LOC ( "PAD158" ))
  \ProtoComp6.IMUX.3  (
    .I(SENS_IBUF_99),
    .O(SENS_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD170" ))
  RST_62 (
    .PAD(RST)
  );
  X_BUF #(
    .LOC ( "PAD170" ))
  RST_IBUF (
    .O(RST_inv_non_inverted),
    .I(RST)
  );
  X_BUF #(
    .LOC ( "PAD170" ))
  \ProtoComp7.IMUX  (
    .I(\ProtoComp7.IINV.OUT ),
    .O(RST_inv)
  );
  X_INV #(
    .LOC ( "PAD170" ))
  \ProtoComp7.IINV  (
    .I(RST_inv_non_inverted),
    .O(\ProtoComp7.IINV.OUT )
  );
  X_IPAD #(
    .LOC ( "PAD159" ))
  \Din<0>  (
    .PAD(Din[0])
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  Din_0_IBUF (
    .O(Din_0_IBUF_106),
    .I(Din[0])
  );
  X_BUF #(
    .LOC ( "PAD159" ))
  \ProtoComp6.IMUX.4  (
    .I(Din_0_IBUF_106),
    .O(Din_0_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD160" ))
  \Din<1>  (
    .PAD(Din[1])
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  Din_1_IBUF (
    .O(Din_1_IBUF_109),
    .I(Din[1])
  );
  X_BUF #(
    .LOC ( "PAD160" ))
  \ProtoComp6.IMUX.5  (
    .I(Din_1_IBUF_109),
    .O(Din_1_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD161" ))
  \Din<2>  (
    .PAD(Din[2])
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  Din_2_IBUF (
    .O(Din_2_IBUF_112),
    .I(Din[2])
  );
  X_BUF #(
    .LOC ( "PAD161" ))
  \ProtoComp6.IMUX.6  (
    .I(Din_2_IBUF_112),
    .O(Din_2_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD162" ))
  \Din<3>  (
    .PAD(Din[3])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  Din_3_IBUF (
    .O(Din_3_IBUF_115),
    .I(Din[3])
  );
  X_BUF #(
    .LOC ( "PAD162" ))
  \ProtoComp6.IMUX.7  (
    .I(Din_3_IBUF_115),
    .O(Din_3_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD163" ))
  \Din<4>  (
    .PAD(Din[4])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  Din_4_IBUF (
    .O(Din_4_IBUF_118),
    .I(Din[4])
  );
  X_BUF #(
    .LOC ( "PAD163" ))
  \ProtoComp6.IMUX.8  (
    .I(Din_4_IBUF_118),
    .O(Din_4_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD171" ))
  \Dout<0>  (
    .PAD(Dout[0])
  );
  X_OBUF #(
    .LOC ( "PAD171" ))
  Dout_0_OBUF (
    .I(C[0]),
    .O(Dout[0])
  );
  X_IPAD #(
    .LOC ( "PAD164" ))
  \Din<5>  (
    .PAD(Din[5])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  Din_5_IBUF (
    .O(Din_5_IBUF_123),
    .I(Din[5])
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \ProtoComp6.IMUX.9  (
    .I(Din_5_IBUF_123),
    .O(Din_5_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD172" ))
  \Dout<1>  (
    .PAD(Dout[1])
  );
  X_OBUF #(
    .LOC ( "PAD172" ))
  Dout_1_OBUF (
    .I(C[1]),
    .O(Dout[1])
  );
  X_IPAD #(
    .LOC ( "PAD167" ))
  \Din<6>  (
    .PAD(Din[6])
  );
  X_BUF #(
    .LOC ( "PAD167" ))
  Din_6_IBUF (
    .O(Din_6_IBUF_128),
    .I(Din[6])
  );
  X_BUF #(
    .LOC ( "PAD167" ))
  \ProtoComp6.IMUX.10  (
    .I(Din_6_IBUF_128),
    .O(Din_6_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD169" ))
  \Dout<2>  (
    .PAD(Dout[2])
  );
  X_OBUF #(
    .LOC ( "PAD169" ))
  Dout_2_OBUF (
    .I(C[2]),
    .O(Dout[2])
  );
  X_IPAD #(
    .LOC ( "PAD168" ))
  \Din<7>  (
    .PAD(Din[7])
  );
  X_BUF #(
    .LOC ( "PAD168" ))
  Din_7_IBUF (
    .O(Din_7_IBUF_133),
    .I(Din[7])
  );
  X_BUF #(
    .LOC ( "PAD168" ))
  \ProtoComp6.IMUX.11  (
    .I(Din_7_IBUF_133),
    .O(Din_7_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD174" ))
  \Dout<3>  (
    .PAD(Dout[3])
  );
  X_OBUF #(
    .LOC ( "PAD174" ))
  Dout_3_OBUF (
    .I(C[3]),
    .O(Dout[3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y2" ),
    .INIT ( 64'h000000000000FFFF ))
  Mcount_C1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(LOAD_IBUF_0),
    .ADR5(SENS_IBUF_0),
    .O(Mcount_C)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y2" ),
    .INIT ( 64'hFFFFFFFF0000FFFF ))
  _n0025_inv1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(EN_IBUF_0),
    .ADR5(LOAD_IBUF_0),
    .O(_n0025_inv)
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

