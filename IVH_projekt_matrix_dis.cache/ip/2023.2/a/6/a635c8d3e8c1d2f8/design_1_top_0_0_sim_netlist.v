// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat May 11 20:50:15 2024
// Host        : LAPTOP-O3BSDE06 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (E,
    Q,
    \bcd_value_reg[0]_0 ,
    D,
    \bcd_value_reg[2]_0 ,
    \bcd_value_reg[2]_1 ,
    \bcd_value_reg[0]_1 ,
    \bcd_value_reg[2]_2 ,
    \bcd_value_reg[2]_3 ,
    \bcd_value_reg[2]_4 ,
    clk,
    \bcd_value_reg[0]_2 ,
    AR);
  output [0:0]E;
  output [0:0]Q;
  output \bcd_value_reg[0]_0 ;
  output [2:0]D;
  output \bcd_value_reg[2]_0 ;
  output \bcd_value_reg[2]_1 ;
  output \bcd_value_reg[0]_1 ;
  output \bcd_value_reg[2]_2 ;
  output \bcd_value_reg[2]_3 ;
  output \bcd_value_reg[2]_4 ;
  input clk;
  input [0:0]\bcd_value_reg[0]_2 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \bcd_value[0]_i_1_n_0 ;
  wire \bcd_value[1]_i_1_n_0 ;
  wire \bcd_value[2]_i_1_n_0 ;
  wire \bcd_value[3]_i_1_n_0 ;
  wire [2:0]bcd_value_reg;
  wire \bcd_value_reg[0]_0 ;
  wire \bcd_value_reg[0]_1 ;
  wire [0:0]\bcd_value_reg[0]_2 ;
  wire \bcd_value_reg[2]_0 ;
  wire \bcd_value_reg[2]_1 ;
  wire \bcd_value_reg[2]_2 ;
  wire \bcd_value_reg[2]_3 ;
  wire \bcd_value_reg[2]_4 ;
  wire carry_i_1_n_0;
  wire \change_digit[0]_i_1_n_0 ;
  wire \change_digit[1]_i_1_n_0 ;
  wire \change_digit[1]_i_2_n_0 ;
  wire \change_digit_reg_n_0_[0] ;
  wire \change_digit_reg_n_0_[1] ;
  wire clk;

  LUT1 #(
    .INIT(2'h1)) 
    \bcd_value[0]_i_1 
       (.I0(bcd_value_reg[0]),
        .O(\bcd_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \bcd_value[1]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(Q),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bcd_value[2]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \bcd_value[3]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(Q),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[0] 
       (.C(clk),
        .CE(\bcd_value_reg[0]_2 ),
        .CLR(AR),
        .D(\bcd_value[0]_i_1_n_0 ),
        .Q(bcd_value_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[1] 
       (.C(clk),
        .CE(\bcd_value_reg[0]_2 ),
        .CLR(AR),
        .D(\bcd_value[1]_i_1_n_0 ),
        .Q(bcd_value_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[2] 
       (.C(clk),
        .CE(\bcd_value_reg[0]_2 ),
        .CLR(AR),
        .D(\bcd_value[2]_i_1_n_0 ),
        .Q(bcd_value_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[3] 
       (.C(clk),
        .CE(\bcd_value_reg[0]_2 ),
        .CLR(AR),
        .D(\bcd_value[3]_i_1_n_0 ),
        .Q(Q));
  LUT3 #(
    .INIT(8'hCA)) 
    carry_i_1
       (.I0(E),
        .I1(\change_digit_reg_n_0_[0] ),
        .I2(\change_digit_reg_n_0_[1] ),
        .O(carry_i_1_n_0));
  FDRE carry_reg
       (.C(clk),
        .CE(1'b1),
        .D(carry_i_1_n_0),
        .Q(E),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \change_digit[0]_i_1 
       (.I0(\change_digit[1]_i_2_n_0 ),
        .I1(\change_digit_reg_n_0_[0] ),
        .I2(\change_digit_reg_n_0_[1] ),
        .I3(\bcd_value_reg[0]_2 ),
        .O(\change_digit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEAF0)) 
    \change_digit[1]_i_1 
       (.I0(\change_digit[1]_i_2_n_0 ),
        .I1(\change_digit_reg_n_0_[0] ),
        .I2(\change_digit_reg_n_0_[1] ),
        .I3(\bcd_value_reg[0]_2 ),
        .O(\change_digit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \change_digit[1]_i_2 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(Q),
        .I3(bcd_value_reg[0]),
        .O(\change_digit[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \change_digit_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\change_digit[0]_i_1_n_0 ),
        .Q(\change_digit_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \change_digit_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\change_digit[1]_i_1_n_0 ),
        .Q(\change_digit_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBCFB)) 
    \first_value[10]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \first_value[12]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hED)) 
    \first_value[14]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \first_value[19]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \first_value[21]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \first_value[23]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \first_value[3]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \first_value[4]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \first_value[5]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \first_value[6]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[2]_3 ));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0
   (Q,
    \bcd_value_reg[0]_0 ,
    D,
    \bcd_value_reg[2]_0 ,
    \bcd_value_reg[2]_1 ,
    \bcd_value_reg[0]_1 ,
    \bcd_value_reg[2]_2 ,
    \bcd_value_reg[2]_3 ,
    \bcd_value_reg[2]_4 ,
    E,
    clk,
    AR);
  output [0:0]Q;
  output \bcd_value_reg[0]_0 ;
  output [2:0]D;
  output \bcd_value_reg[2]_0 ;
  output \bcd_value_reg[2]_1 ;
  output \bcd_value_reg[0]_1 ;
  output \bcd_value_reg[2]_2 ;
  output \bcd_value_reg[2]_3 ;
  output \bcd_value_reg[2]_4 ;
  input [0:0]E;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \bcd_value[0]_i_1__0_n_0 ;
  wire \bcd_value[1]_i_1__0_n_0 ;
  wire \bcd_value[2]_i_1__0_n_0 ;
  wire \bcd_value[3]_i_1__0_n_0 ;
  wire [2:0]bcd_value_reg;
  wire \bcd_value_reg[0]_0 ;
  wire \bcd_value_reg[0]_1 ;
  wire \bcd_value_reg[2]_0 ;
  wire \bcd_value_reg[2]_1 ;
  wire \bcd_value_reg[2]_2 ;
  wire \bcd_value_reg[2]_3 ;
  wire \bcd_value_reg[2]_4 ;
  wire clk;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bcd_value[0]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .O(\bcd_value[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \bcd_value[1]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .I1(Q),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bcd_value[2]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \bcd_value[3]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .I1(Q),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[3]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\bcd_value[0]_i_1__0_n_0 ),
        .Q(bcd_value_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\bcd_value[1]_i_1__0_n_0 ),
        .Q(bcd_value_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\bcd_value[2]_i_1__0_n_0 ),
        .Q(bcd_value_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(\bcd_value[3]_i_1__0_n_0 ),
        .Q(Q));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBCFB)) 
    \second_value[10]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \second_value[12]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hED)) 
    \second_value[14]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \second_value[19]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \second_value[21]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \second_value[23]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \second_value[3]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \second_value[4]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \second_value[5]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \second_value[6]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[2]_3 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim
   (D,
    clk,
    \scol_reg[7] ,
    Q,
    \scol_reg[2] ,
    \scol_reg[4] ,
    E,
    AR);
  output [5:0]D;
  input clk;
  input \scol_reg[7] ;
  input [2:0]Q;
  input [0:0]\scol_reg[2] ;
  input \scol_reg[4] ;
  input [0:0]E;
  input [0:0]AR;

  wire [0:0]AR;
  wire [5:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:3]bcd_value_reg;
  wire [3:3]bcd_value_reg_0;
  wire clk;
  wire cnt1_n_10;
  wire cnt1_n_11;
  wire cnt1_n_2;
  wire cnt1_n_6;
  wire cnt1_n_7;
  wire cnt1_n_8;
  wire cnt1_n_9;
  wire cnt2_n_1;
  wire cnt2_n_10;
  wire cnt2_n_5;
  wire cnt2_n_6;
  wire cnt2_n_7;
  wire cnt2_n_8;
  wire cnt2_n_9;
  wire en_2nd_ctr;
  wire [23:3]first_value;
  wire [23:3]first_value_0;
  wire [6:3]p_1_in;
  wire [6:2]p_2_in;
  wire [7:3]p_3_in;
  wire [6:3]p_5_in;
  wire [6:2]p_6_in;
  wire [7:3]p_7_in;
  wire \scol[2]_i_2_n_0 ;
  wire \scol[3]_i_2_n_0 ;
  wire \scol[3]_i_3_n_0 ;
  wire \scol[4]_i_2_n_0 ;
  wire \scol[5]_i_2_n_0 ;
  wire \scol[5]_i_3_n_0 ;
  wire \scol[6]_i_2_n_0 ;
  wire [0:0]\scol_reg[2] ;
  wire \scol_reg[4] ;
  wire \scol_reg[7] ;
  wire [23:3]second_value;
  wire [23:3]second_value_1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter cnt1
       (.AR(AR),
        .D({first_value_0[23],first_value_0[10],first_value_0[3]}),
        .E(en_2nd_ctr),
        .Q(bcd_value_reg),
        .\bcd_value_reg[0]_0 (cnt1_n_2),
        .\bcd_value_reg[0]_1 (cnt1_n_8),
        .\bcd_value_reg[0]_2 (E),
        .\bcd_value_reg[2]_0 (cnt1_n_6),
        .\bcd_value_reg[2]_1 (cnt1_n_7),
        .\bcd_value_reg[2]_2 (cnt1_n_9),
        .\bcd_value_reg[2]_3 (cnt1_n_10),
        .\bcd_value_reg[2]_4 (cnt1_n_11),
        .clk(clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 cnt2
       (.AR(AR),
        .D({second_value_1[23],second_value_1[10],second_value_1[3]}),
        .E(en_2nd_ctr),
        .Q(bcd_value_reg_0),
        .\bcd_value_reg[0]_0 (cnt2_n_1),
        .\bcd_value_reg[0]_1 (cnt2_n_7),
        .\bcd_value_reg[2]_0 (cnt2_n_5),
        .\bcd_value_reg[2]_1 (cnt2_n_6),
        .\bcd_value_reg[2]_2 (cnt2_n_8),
        .\bcd_value_reg[2]_3 (cnt2_n_9),
        .\bcd_value_reg[2]_4 (cnt2_n_10),
        .clk(clk));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[10]),
        .Q(first_value[10]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt1_n_8),
        .Q(first_value[12]),
        .S(bcd_value_reg));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt1_n_9),
        .Q(first_value[14]),
        .S(bcd_value_reg));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt1_n_11),
        .Q(first_value[19]),
        .S(bcd_value_reg));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt1_n_2),
        .Q(first_value[21]),
        .S(bcd_value_reg));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(first_value[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[23]),
        .Q(first_value[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[3]),
        .Q(first_value[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt1_n_6),
        .Q(first_value[4]),
        .S(bcd_value_reg));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt1_n_7),
        .Q(first_value[5]),
        .S(bcd_value_reg));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt1_n_10),
        .Q(first_value[6]),
        .S(bcd_value_reg));
  LUT6 #(
    .INIT(64'h666AAA6A55555555)) 
    \scol[2]_i_1 
       (.I0(\scol_reg[7] ),
        .I1(\scol_reg[2] ),
        .I2(p_6_in[2]),
        .I3(Q[2]),
        .I4(p_2_in[2]),
        .I5(\scol[2]_i_2_n_0 ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hFB)) 
    \scol[2]_i_2 
       (.I0(Q[0]),
        .I1(p_7_in[6]),
        .I2(Q[1]),
        .O(\scol[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \scol[3]_i_1 
       (.I0(\scol_reg[7] ),
        .I1(\scol[3]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\scol[3]_i_3_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \scol[3]_i_2 
       (.I0(p_7_in[7]),
        .I1(p_7_in[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(p_5_in[3]),
        .O(\scol[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \scol[3]_i_3 
       (.I0(p_3_in[7]),
        .I1(p_3_in[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(p_1_in[3]),
        .O(\scol[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6666666656555666)) 
    \scol[4]_i_1 
       (.I0(\scol_reg[7] ),
        .I1(\scol[4]_i_2_n_0 ),
        .I2(p_1_in[4]),
        .I3(Q[2]),
        .I4(p_5_in[4]),
        .I5(\scol_reg[4] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0E0E0E0202020E02)) 
    \scol[4]_i_2 
       (.I0(p_7_in[6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(p_6_in[4]),
        .I4(Q[2]),
        .I5(p_2_in[4]),
        .O(\scol[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \scol[5]_i_1 
       (.I0(\scol_reg[7] ),
        .I1(\scol[5]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\scol[5]_i_3_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \scol[5]_i_2 
       (.I0(p_7_in[7]),
        .I1(p_7_in[5]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(p_5_in[5]),
        .O(\scol[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \scol[5]_i_3 
       (.I0(p_3_in[7]),
        .I1(p_3_in[5]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(p_1_in[5]),
        .O(\scol[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6666666655566656)) 
    \scol[6]_i_1 
       (.I0(\scol_reg[7] ),
        .I1(\scol[6]_i_2_n_0 ),
        .I2(p_5_in[6]),
        .I3(Q[2]),
        .I4(p_1_in[6]),
        .I5(\scol_reg[4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0E0E0E0202020E02)) 
    \scol[6]_i_2 
       (.I0(p_7_in[6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(p_6_in[6]),
        .I4(Q[2]),
        .I5(p_2_in[6]),
        .O(\scol[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h959595AAAAAA95AA)) 
    \scol[7]_i_2 
       (.I0(\scol_reg[7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_in[7]),
        .I4(Q[2]),
        .I5(p_3_in[7]),
        .O(D[5]));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[3]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[4]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[5]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[6]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[10]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[12]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[14]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[19]),
        .Q(p_3_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[21]),
        .Q(p_3_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[23]),
        .Q(p_3_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[3]),
        .Q(p_5_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[4]),
        .Q(p_5_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[5]),
        .Q(p_5_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[6]),
        .Q(p_5_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[10]),
        .Q(p_6_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[12]),
        .Q(p_6_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[14]),
        .Q(p_6_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[19]),
        .Q(p_7_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[21]),
        .Q(p_7_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[22]),
        .Q(p_7_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[23]),
        .Q(p_7_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[10]),
        .Q(second_value[10]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt2_n_7),
        .Q(second_value[12]),
        .S(bcd_value_reg_0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt2_n_8),
        .Q(second_value[14]),
        .S(bcd_value_reg_0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt2_n_10),
        .Q(second_value[19]),
        .S(bcd_value_reg_0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt2_n_1),
        .Q(second_value[21]),
        .S(bcd_value_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[23]),
        .Q(second_value[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[3]),
        .Q(second_value[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt2_n_5),
        .Q(second_value[4]),
        .S(bcd_value_reg_0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt2_n_6),
        .Q(second_value[5]),
        .S(bcd_value_reg_0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt2_n_9),
        .Q(second_value[6]),
        .S(bcd_value_reg_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    col,
    row);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  output [7:0]col;
  output [7:0]row;

  wire clk;
  wire [6:1]\^col ;
  wire [7:0]row;

  assign col[7] = \^col [1];
  assign col[6:1] = \^col [6:1];
  assign col[0] = \^col [1];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top U0
       (.clk(clk),
        .col({\^col [1],\^col [6:2]}),
        .row(row));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (col,
    row,
    clk);
  output [5:0]col;
  output [7:0]row;
  input clk;

  wire clk;
  wire [14:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire [0:0]cnt_1;
  wire cnt_dis_enable_reg_n_0;
  wire cnt_dis_n_0;
  wire cnt_dis_n_1;
  wire cnt_dis_n_2;
  wire cnt_dis_n_3;
  wire cnt_dis_n_4;
  wire cnt_dis_n_5;
  wire cnt_dis_rst;
  wire cnt_dis_rst_i_1_n_0;
  wire [5:0]col;
  wire [2:0]col_indx;
  wire \col_indx[0]_i_1_n_0 ;
  wire \col_indx[1]_i_1_n_0 ;
  wire \col_indx[2]_i_1_n_0 ;
  wire [14:1]data0;
  wire p_0_in;
  wire [7:0]row;
  wire \scol[6]_i_3_n_0 ;
  wire \scol[7]_i_1_n_0 ;
  wire \scol[7]_i_3_n_0 ;
  wire \scol[7]_i_4_n_0 ;
  wire \scol[7]_i_5_n_0 ;
  wire \scol[7]_i_6_n_0 ;
  wire [24:0]sec_cnt;
  wire sec_cnt0_carry__0_n_0;
  wire sec_cnt0_carry__0_n_1;
  wire sec_cnt0_carry__0_n_2;
  wire sec_cnt0_carry__0_n_3;
  wire sec_cnt0_carry__0_n_4;
  wire sec_cnt0_carry__0_n_5;
  wire sec_cnt0_carry__0_n_6;
  wire sec_cnt0_carry__0_n_7;
  wire sec_cnt0_carry__1_n_0;
  wire sec_cnt0_carry__1_n_1;
  wire sec_cnt0_carry__1_n_2;
  wire sec_cnt0_carry__1_n_3;
  wire sec_cnt0_carry__1_n_4;
  wire sec_cnt0_carry__1_n_5;
  wire sec_cnt0_carry__1_n_6;
  wire sec_cnt0_carry__1_n_7;
  wire sec_cnt0_carry__2_n_0;
  wire sec_cnt0_carry__2_n_1;
  wire sec_cnt0_carry__2_n_2;
  wire sec_cnt0_carry__2_n_3;
  wire sec_cnt0_carry__2_n_4;
  wire sec_cnt0_carry__2_n_5;
  wire sec_cnt0_carry__2_n_6;
  wire sec_cnt0_carry__2_n_7;
  wire sec_cnt0_carry__3_n_0;
  wire sec_cnt0_carry__3_n_1;
  wire sec_cnt0_carry__3_n_2;
  wire sec_cnt0_carry__3_n_3;
  wire sec_cnt0_carry__3_n_4;
  wire sec_cnt0_carry__3_n_5;
  wire sec_cnt0_carry__3_n_6;
  wire sec_cnt0_carry__3_n_7;
  wire sec_cnt0_carry__4_n_1;
  wire sec_cnt0_carry__4_n_2;
  wire sec_cnt0_carry__4_n_3;
  wire sec_cnt0_carry__4_n_4;
  wire sec_cnt0_carry__4_n_5;
  wire sec_cnt0_carry__4_n_6;
  wire sec_cnt0_carry__4_n_7;
  wire sec_cnt0_carry_n_0;
  wire sec_cnt0_carry_n_1;
  wire sec_cnt0_carry_n_2;
  wire sec_cnt0_carry_n_3;
  wire sec_cnt0_carry_n_4;
  wire sec_cnt0_carry_n_5;
  wire sec_cnt0_carry_n_6;
  wire sec_cnt0_carry_n_7;
  wire \sec_cnt[0]_i_1_n_0 ;
  wire \sec_cnt[24]_i_2_n_0 ;
  wire \sec_cnt[24]_i_3_n_0 ;
  wire \sec_cnt[24]_i_4_n_0 ;
  wire \sec_cnt[24]_i_5_n_0 ;
  wire \sec_cnt[24]_i_6_n_0 ;
  wire \sec_cnt[24]_i_7_n_0 ;
  wire [5:0]time_from_start;
  wire \time_from_start[0]_i_1_n_0 ;
  wire \time_from_start[1]_i_1_n_0 ;
  wire \time_from_start[2]_i_1_n_0 ;
  wire \time_from_start[3]_i_1_n_0 ;
  wire \time_from_start[4]_i_1_n_0 ;
  wire \time_from_start[5]_i_2_n_0 ;
  wire time_from_start_0;
  wire [3:1]NLW_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_sec_cnt0_carry__4_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({NLW_cnt0_carry__2_CO_UNCONNECTED[3:1],cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__2_O_UNCONNECTED[3:2],data0[14:13]}),
        .S({1'b0,1'b0,cnt[14:13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[0]_i_1 
       (.I0(\scol[7]_i_3_n_0 ),
        .I1(cnt[0]),
        .O(cnt_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim cnt_dis
       (.AR(cnt_dis_rst),
        .D({cnt_dis_n_0,cnt_dis_n_1,cnt_dis_n_2,cnt_dis_n_3,cnt_dis_n_4,cnt_dis_n_5}),
        .E(cnt_dis_enable_reg_n_0),
        .Q(col_indx),
        .clk(clk),
        .\scol_reg[2] (\col_indx[1]_i_1_n_0 ),
        .\scol_reg[4] (\scol[6]_i_3_n_0 ),
        .\scol_reg[7] (\scol[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    cnt_dis_enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(cnt_dis_enable_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    cnt_dis_rst_i_1
       (.I0(time_from_start[0]),
        .I1(time_from_start[1]),
        .I2(time_from_start[2]),
        .I3(time_from_start[3]),
        .I4(time_from_start[4]),
        .I5(time_from_start[5]),
        .O(cnt_dis_rst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cnt_dis_rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(cnt_dis_rst_i_1_n_0),
        .Q(cnt_dis_rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_1),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(cnt[10]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(cnt[11]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(cnt[12]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(cnt[13]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(cnt[14]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(cnt[1]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(cnt[2]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(cnt[3]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(cnt[4]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(cnt[5]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(cnt[6]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(cnt[7]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(cnt[8]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(cnt[9]),
        .R(\scol[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \col_indx[0]_i_1 
       (.I0(col_indx[0]),
        .O(\col_indx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \col_indx[1]_i_1 
       (.I0(col_indx[0]),
        .I1(col_indx[1]),
        .O(\col_indx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \col_indx[2]_i_1 
       (.I0(col_indx[2]),
        .I1(col_indx[1]),
        .I2(col_indx[0]),
        .O(\col_indx[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_indx_reg[0] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(\col_indx[0]_i_1_n_0 ),
        .Q(col_indx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_indx_reg[1] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(\col_indx[1]_i_1_n_0 ),
        .Q(col_indx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_indx_reg[2] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(\col_indx[2]_i_1_n_0 ),
        .Q(col_indx[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \scol[6]_i_3 
       (.I0(col_indx[0]),
        .I1(col_indx[1]),
        .O(\scol[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \scol[7]_i_1 
       (.I0(\scol[7]_i_3_n_0 ),
        .I1(cnt[0]),
        .O(\scol[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \scol[7]_i_3 
       (.I0(\scol[7]_i_5_n_0 ),
        .I1(cnt[3]),
        .I2(cnt[4]),
        .I3(cnt[5]),
        .I4(cnt[6]),
        .I5(\scol[7]_i_6_n_0 ),
        .O(\scol[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \scol[7]_i_4 
       (.I0(time_from_start[5]),
        .I1(time_from_start[3]),
        .I2(time_from_start[0]),
        .I3(time_from_start[1]),
        .I4(time_from_start[2]),
        .I5(time_from_start[4]),
        .O(\scol[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \scol[7]_i_5 
       (.I0(cnt[8]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[9]),
        .O(\scol[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \scol[7]_i_6 
       (.I0(cnt[13]),
        .I1(cnt[14]),
        .I2(cnt[11]),
        .I3(cnt[12]),
        .I4(cnt[2]),
        .I5(cnt[1]),
        .O(\scol[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[2] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_5),
        .Q(col[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[3] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_4),
        .Q(col[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[4] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_3),
        .Q(col[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[5] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_2),
        .Q(col[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[6] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_1),
        .Q(col[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[7] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_0),
        .Q(col[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry
       (.CI(1'b0),
        .CO({sec_cnt0_carry_n_0,sec_cnt0_carry_n_1,sec_cnt0_carry_n_2,sec_cnt0_carry_n_3}),
        .CYINIT(sec_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sec_cnt0_carry_n_4,sec_cnt0_carry_n_5,sec_cnt0_carry_n_6,sec_cnt0_carry_n_7}),
        .S(sec_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__0
       (.CI(sec_cnt0_carry_n_0),
        .CO({sec_cnt0_carry__0_n_0,sec_cnt0_carry__0_n_1,sec_cnt0_carry__0_n_2,sec_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sec_cnt0_carry__0_n_4,sec_cnt0_carry__0_n_5,sec_cnt0_carry__0_n_6,sec_cnt0_carry__0_n_7}),
        .S(sec_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__1
       (.CI(sec_cnt0_carry__0_n_0),
        .CO({sec_cnt0_carry__1_n_0,sec_cnt0_carry__1_n_1,sec_cnt0_carry__1_n_2,sec_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sec_cnt0_carry__1_n_4,sec_cnt0_carry__1_n_5,sec_cnt0_carry__1_n_6,sec_cnt0_carry__1_n_7}),
        .S(sec_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__2
       (.CI(sec_cnt0_carry__1_n_0),
        .CO({sec_cnt0_carry__2_n_0,sec_cnt0_carry__2_n_1,sec_cnt0_carry__2_n_2,sec_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sec_cnt0_carry__2_n_4,sec_cnt0_carry__2_n_5,sec_cnt0_carry__2_n_6,sec_cnt0_carry__2_n_7}),
        .S(sec_cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__3
       (.CI(sec_cnt0_carry__2_n_0),
        .CO({sec_cnt0_carry__3_n_0,sec_cnt0_carry__3_n_1,sec_cnt0_carry__3_n_2,sec_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sec_cnt0_carry__3_n_4,sec_cnt0_carry__3_n_5,sec_cnt0_carry__3_n_6,sec_cnt0_carry__3_n_7}),
        .S(sec_cnt[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__4
       (.CI(sec_cnt0_carry__3_n_0),
        .CO({NLW_sec_cnt0_carry__4_CO_UNCONNECTED[3],sec_cnt0_carry__4_n_1,sec_cnt0_carry__4_n_2,sec_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sec_cnt0_carry__4_n_4,sec_cnt0_carry__4_n_5,sec_cnt0_carry__4_n_6,sec_cnt0_carry__4_n_7}),
        .S(sec_cnt[24:21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sec_cnt[0]_i_1 
       (.I0(sec_cnt[0]),
        .O(\sec_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \sec_cnt[24]_i_1 
       (.I0(\sec_cnt[24]_i_2_n_0 ),
        .I1(\sec_cnt[24]_i_3_n_0 ),
        .I2(\sec_cnt[24]_i_4_n_0 ),
        .I3(\sec_cnt[24]_i_5_n_0 ),
        .I4(\sec_cnt[24]_i_6_n_0 ),
        .I5(\sec_cnt[24]_i_7_n_0 ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \sec_cnt[24]_i_2 
       (.I0(sec_cnt[23]),
        .I1(sec_cnt[9]),
        .I2(sec_cnt[22]),
        .I3(sec_cnt[20]),
        .O(\sec_cnt[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \sec_cnt[24]_i_3 
       (.I0(sec_cnt[24]),
        .I1(sec_cnt[0]),
        .I2(sec_cnt[16]),
        .I3(sec_cnt[6]),
        .O(\sec_cnt[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[24]_i_4 
       (.I0(sec_cnt[13]),
        .I1(sec_cnt[19]),
        .I2(sec_cnt[12]),
        .O(\sec_cnt[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \sec_cnt[24]_i_5 
       (.I0(sec_cnt[11]),
        .I1(sec_cnt[14]),
        .I2(sec_cnt[18]),
        .I3(sec_cnt[15]),
        .O(\sec_cnt[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \sec_cnt[24]_i_6 
       (.I0(sec_cnt[21]),
        .I1(sec_cnt[1]),
        .I2(sec_cnt[4]),
        .I3(sec_cnt[8]),
        .O(\sec_cnt[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \sec_cnt[24]_i_7 
       (.I0(sec_cnt[3]),
        .I1(sec_cnt[17]),
        .I2(sec_cnt[5]),
        .I3(sec_cnt[2]),
        .I4(sec_cnt[7]),
        .I5(sec_cnt[10]),
        .O(\sec_cnt[24]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sec_cnt[0]_i_1_n_0 ),
        .Q(sec_cnt[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__1_n_6),
        .Q(sec_cnt[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__1_n_5),
        .Q(sec_cnt[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__1_n_4),
        .Q(sec_cnt[12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__2_n_7),
        .Q(sec_cnt[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__2_n_6),
        .Q(sec_cnt[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__2_n_5),
        .Q(sec_cnt[15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__2_n_4),
        .Q(sec_cnt[16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__3_n_7),
        .Q(sec_cnt[17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__3_n_6),
        .Q(sec_cnt[18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__3_n_5),
        .Q(sec_cnt[19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry_n_7),
        .Q(sec_cnt[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__3_n_4),
        .Q(sec_cnt[20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__4_n_7),
        .Q(sec_cnt[21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__4_n_6),
        .Q(sec_cnt[22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__4_n_5),
        .Q(sec_cnt[23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__4_n_4),
        .Q(sec_cnt[24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry_n_6),
        .Q(sec_cnt[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry_n_5),
        .Q(sec_cnt[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry_n_4),
        .Q(sec_cnt[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__0_n_7),
        .Q(sec_cnt[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__0_n_6),
        .Q(sec_cnt[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__0_n_5),
        .Q(sec_cnt[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__0_n_4),
        .Q(sec_cnt[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(sec_cnt0_carry__1_n_7),
        .Q(sec_cnt[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[0] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(row[7]),
        .Q(row[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[1] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(row[0]),
        .Q(row[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[2] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(row[1]),
        .Q(row[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[3] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(row[2]),
        .Q(row[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[4] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(row[3]),
        .Q(row[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[5] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(row[4]),
        .Q(row[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[6] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(row[5]),
        .Q(row[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[7] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(row[6]),
        .Q(row[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_from_start[0]_i_1 
       (.I0(time_from_start[0]),
        .O(\time_from_start[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \time_from_start[1]_i_1 
       (.I0(time_from_start[0]),
        .I1(time_from_start[1]),
        .O(\time_from_start[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \time_from_start[2]_i_1 
       (.I0(time_from_start[2]),
        .I1(time_from_start[1]),
        .I2(time_from_start[0]),
        .O(\time_from_start[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \time_from_start[3]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .O(\time_from_start[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \time_from_start[4]_i_1 
       (.I0(time_from_start[4]),
        .I1(time_from_start[3]),
        .I2(time_from_start[2]),
        .I3(time_from_start[1]),
        .I4(time_from_start[0]),
        .O(\time_from_start[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \time_from_start[5]_i_1 
       (.I0(p_0_in),
        .I1(cnt_dis_rst_i_1_n_0),
        .O(time_from_start_0));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \time_from_start[5]_i_2 
       (.I0(time_from_start[5]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[3]),
        .I5(time_from_start[4]),
        .O(\time_from_start[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[0] 
       (.C(clk),
        .CE(time_from_start_0),
        .D(\time_from_start[0]_i_1_n_0 ),
        .Q(time_from_start[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[1] 
       (.C(clk),
        .CE(time_from_start_0),
        .D(\time_from_start[1]_i_1_n_0 ),
        .Q(time_from_start[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[2] 
       (.C(clk),
        .CE(time_from_start_0),
        .D(\time_from_start[2]_i_1_n_0 ),
        .Q(time_from_start[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[3] 
       (.C(clk),
        .CE(time_from_start_0),
        .D(\time_from_start[3]_i_1_n_0 ),
        .Q(time_from_start[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[4] 
       (.C(clk),
        .CE(time_from_start_0),
        .D(\time_from_start[4]_i_1_n_0 ),
        .Q(time_from_start[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[5] 
       (.C(clk),
        .CE(time_from_start_0),
        .D(\time_from_start[5]_i_2_n_0 ),
        .Q(time_from_start[5]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
