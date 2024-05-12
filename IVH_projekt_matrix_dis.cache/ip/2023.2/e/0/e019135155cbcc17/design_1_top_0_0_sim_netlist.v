// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun May 12 19:55:24 2024
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \bcd_value[1]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(Q),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bcd_value[2]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \change_digit[0]_i_1 
       (.I0(\change_digit[1]_i_2_n_0 ),
        .I1(\change_digit_reg_n_0_[0] ),
        .I2(\change_digit_reg_n_0_[1] ),
        .I3(\bcd_value_reg[0]_2 ),
        .O(\change_digit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEAF0)) 
    \change_digit[1]_i_1 
       (.I0(\change_digit[1]_i_2_n_0 ),
        .I1(\change_digit_reg_n_0_[0] ),
        .I2(\change_digit_reg_n_0_[1] ),
        .I3(\bcd_value_reg[0]_2 ),
        .O(\change_digit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBCFB)) 
    \first_value[10]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \first_value[12]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hED)) 
    \first_value[14]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \first_value[19]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \first_value[21]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \first_value[23]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \first_value[3]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \first_value[4]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \first_value[5]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bcd_value[0]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .O(\bcd_value[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \bcd_value[1]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .I1(Q),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bcd_value[2]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hBCFB)) 
    \second_value[10]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \second_value[12]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hED)) 
    \second_value[14]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \second_value[19]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \second_value[21]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \second_value[23]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \second_value[3]_i_1 
       (.I0(Q),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \second_value[4]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\bcd_value_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \second_value[5]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \second_value[6]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .O(\bcd_value_reg[2]_3 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim
   (\screen_value_reg[63]_0 ,
    Q,
    \screen_value_reg[62]_0 ,
    \screen_value_reg[11]_0 ,
    \screen_value_reg[12]_0 ,
    \screen_value_reg[18]_0 ,
    \screen_value_reg[20]_0 ,
    \screen_value_reg[31]_0 ,
    \screen_value_reg[63]_1 ,
    clk,
    \display_buffer_reg[57] ,
    display_buffer1,
    \display_buffer_reg[57]_0 ,
    E,
    AR);
  output \screen_value_reg[63]_0 ;
  output [14:0]Q;
  output \screen_value_reg[62]_0 ;
  output \screen_value_reg[11]_0 ;
  output \screen_value_reg[12]_0 ;
  output \screen_value_reg[18]_0 ;
  output \screen_value_reg[20]_0 ;
  output \screen_value_reg[31]_0 ;
  output \screen_value_reg[63]_1 ;
  input clk;
  input \display_buffer_reg[57] ;
  input display_buffer1;
  input \display_buffer_reg[57]_0 ;
  input [0:0]E;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [14:0]Q;
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
  wire display_buffer1;
  wire \display_buffer_reg[57] ;
  wire \display_buffer_reg[57]_0 ;
  wire en_2nd_ctr;
  wire [23:3]first_value;
  wire [23:3]first_value_0;
  wire [63:11]screen_value;
  wire \screen_value_reg[11]_0 ;
  wire \screen_value_reg[12]_0 ;
  wire \screen_value_reg[18]_0 ;
  wire \screen_value_reg[20]_0 ;
  wire \screen_value_reg[31]_0 ;
  wire \screen_value_reg[62]_0 ;
  wire \screen_value_reg[63]_0 ;
  wire \screen_value_reg[63]_1 ;
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_buffer[11]_i_1 
       (.I0(screen_value[11]),
        .I1(display_buffer1),
        .I2(\display_buffer_reg[57] ),
        .O(\screen_value_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_buffer[12]_i_1 
       (.I0(screen_value[12]),
        .I1(display_buffer1),
        .I2(\display_buffer_reg[57] ),
        .O(\screen_value_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_buffer[18]_i_1 
       (.I0(screen_value[18]),
        .I1(display_buffer1),
        .I2(\display_buffer_reg[57] ),
        .O(\screen_value_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_buffer[20]_i_1 
       (.I0(screen_value[20]),
        .I1(display_buffer1),
        .I2(\display_buffer_reg[57] ),
        .O(\screen_value_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_buffer[31]_i_1 
       (.I0(Q[5]),
        .I1(display_buffer1),
        .I2(\display_buffer_reg[57] ),
        .O(\screen_value_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \display_buffer[57]_i_1 
       (.I0(\display_buffer_reg[57] ),
        .I1(display_buffer1),
        .I2(screen_value[63]),
        .I3(\display_buffer_reg[57]_0 ),
        .O(\screen_value_reg[63]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \display_buffer[62]_i_1 
       (.I0(\display_buffer_reg[57] ),
        .I1(display_buffer1),
        .I2(screen_value[62]),
        .I3(\display_buffer_reg[57]_0 ),
        .O(\screen_value_reg[62]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \display_buffer[63]_i_2 
       (.I0(screen_value[63]),
        .I1(display_buffer1),
        .I2(\display_buffer_reg[57] ),
        .O(\screen_value_reg[63]_1 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[3]),
        .Q(screen_value[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[4]),
        .Q(screen_value[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[5]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[6]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[10]),
        .Q(screen_value[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[12]),
        .Q(screen_value[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[14]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[19]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[21]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[23]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[3]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[4]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[5]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[6]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[12]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[14]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[19]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[21]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[22]),
        .Q(screen_value[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[23]),
        .Q(screen_value[63]),
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
  wire [7:0]col;
  wire [7:0]row;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top U0
       (.clk(clk),
        .col(col),
        .row(row));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_graphics
   (\screen_buffer_reg[7]_0 ,
    \screen_buffer_reg[55]_0 ,
    \time_from_start_reg[2] ,
    \time_from_start_reg[2]_0 ,
    \time_from_start_reg[2]_1 ,
    \time_from_start_reg[2]_2 ,
    \time_from_start_reg[2]_3 ,
    \time_from_start_reg[2]_4 ,
    \time_from_start_reg[2]_5 ,
    \time_from_start_reg[2]_6 ,
    \time_from_start_reg[2]_7 ,
    D,
    \time_from_start_reg[4] ,
    \time_from_start_reg[4]_0 ,
    \time_from_start_reg[4]_1 ,
    \time_from_start_reg[4]_2 ,
    \time_from_start_reg[4]_3 ,
    \time_from_start_reg[4]_4 ,
    \time_from_start_reg[4]_5 ,
    \time_from_start_reg[4]_6 ,
    \time_from_start_reg[4]_7 ,
    \time_from_start_reg[4]_8 ,
    \time_from_start_reg[4]_9 ,
    \display_buffer_reg[63] ,
    \display_buffer_reg[63]_0 ,
    anim_mode,
    anim_enable,
    time_from_start,
    display_buffer1,
    Q,
    clk);
  output \screen_buffer_reg[7]_0 ;
  output \screen_buffer_reg[55]_0 ;
  output \time_from_start_reg[2] ;
  output \time_from_start_reg[2]_0 ;
  output \time_from_start_reg[2]_1 ;
  output \time_from_start_reg[2]_2 ;
  output \time_from_start_reg[2]_3 ;
  output \time_from_start_reg[2]_4 ;
  output \time_from_start_reg[2]_5 ;
  output \time_from_start_reg[2]_6 ;
  output \time_from_start_reg[2]_7 ;
  output [17:0]D;
  output \time_from_start_reg[4] ;
  output \time_from_start_reg[4]_0 ;
  output \time_from_start_reg[4]_1 ;
  output \time_from_start_reg[4]_2 ;
  output \time_from_start_reg[4]_3 ;
  output \time_from_start_reg[4]_4 ;
  output \time_from_start_reg[4]_5 ;
  output \time_from_start_reg[4]_6 ;
  output \time_from_start_reg[4]_7 ;
  output \time_from_start_reg[4]_8 ;
  output \time_from_start_reg[4]_9 ;
  input \display_buffer_reg[63] ;
  input \display_buffer_reg[63]_0 ;
  input anim_mode;
  input anim_enable;
  input [4:0]time_from_start;
  input display_buffer1;
  input [14:0]Q;
  input clk;

  wire [17:0]D;
  wire [14:0]Q;
  wire \VUT_LOGO[14]_i_1_n_0 ;
  wire \VUT_LOGO[22]_i_1_n_0 ;
  wire \VUT_LOGO[32]_i_1_n_0 ;
  wire \VUT_LOGO[32]_i_2_n_0 ;
  wire \VUT_LOGO[33]_i_1_n_0 ;
  wire \VUT_LOGO[34]_i_1_n_0 ;
  wire \VUT_LOGO[34]_i_2_n_0 ;
  wire \VUT_LOGO[35]_i_1_n_0 ;
  wire \VUT_LOGO[35]_i_2_n_0 ;
  wire \VUT_LOGO[36]_i_1_n_0 ;
  wire \VUT_LOGO[36]_i_2_n_0 ;
  wire \VUT_LOGO[56]_i_1_n_0 ;
  wire \VUT_LOGO[56]_i_2_n_0 ;
  wire \VUT_LOGO[57]_i_1_n_0 ;
  wire \VUT_LOGO[58]_i_1_n_0 ;
  wire \VUT_LOGO[59]_i_1_n_0 ;
  wire \VUT_LOGO[59]_i_2_n_0 ;
  wire \VUT_LOGO[60]_i_1_n_0 ;
  wire \VUT_LOGO[61]_i_1_n_0 ;
  wire \VUT_LOGO[61]_i_2_n_0 ;
  wire \VUT_LOGO[62]_i_1_n_0 ;
  wire \VUT_LOGO[62]_i_2_n_0 ;
  wire \VUT_LOGO[6]_i_1_n_0 ;
  wire \VUT_LOGO_reg_n_0_[14] ;
  wire \VUT_LOGO_reg_n_0_[22] ;
  wire \VUT_LOGO_reg_n_0_[32] ;
  wire \VUT_LOGO_reg_n_0_[33] ;
  wire \VUT_LOGO_reg_n_0_[34] ;
  wire \VUT_LOGO_reg_n_0_[35] ;
  wire \VUT_LOGO_reg_n_0_[36] ;
  wire \VUT_LOGO_reg_n_0_[56] ;
  wire \VUT_LOGO_reg_n_0_[57] ;
  wire \VUT_LOGO_reg_n_0_[58] ;
  wire \VUT_LOGO_reg_n_0_[59] ;
  wire \VUT_LOGO_reg_n_0_[60] ;
  wire \VUT_LOGO_reg_n_0_[61] ;
  wire \VUT_LOGO_reg_n_0_[62] ;
  wire \VUT_LOGO_reg_n_0_[6] ;
  wire anim_enable;
  wire anim_mode;
  wire clear;
  wire clk;
  wire display_buffer1;
  wire \display_buffer_reg[63] ;
  wire \display_buffer_reg[63]_0 ;
  wire \frame_num[0]_i_1_n_0 ;
  wire \frame_num[1]_i_1_n_0 ;
  wire [3:0]frame_num_reg;
  wire [3:2]p_0_in__0;
  wire [62:6]screen_buffer;
  wire \screen_buffer_reg[55]_0 ;
  wire \screen_buffer_reg[7]_0 ;
  wire [4:0]time_from_start;
  wire \time_from_start_reg[2] ;
  wire \time_from_start_reg[2]_0 ;
  wire \time_from_start_reg[2]_1 ;
  wire \time_from_start_reg[2]_2 ;
  wire \time_from_start_reg[2]_3 ;
  wire \time_from_start_reg[2]_4 ;
  wire \time_from_start_reg[2]_5 ;
  wire \time_from_start_reg[2]_6 ;
  wire \time_from_start_reg[2]_7 ;
  wire \time_from_start_reg[4] ;
  wire \time_from_start_reg[4]_0 ;
  wire \time_from_start_reg[4]_1 ;
  wire \time_from_start_reg[4]_2 ;
  wire \time_from_start_reg[4]_3 ;
  wire \time_from_start_reg[4]_4 ;
  wire \time_from_start_reg[4]_5 ;
  wire \time_from_start_reg[4]_6 ;
  wire \time_from_start_reg[4]_7 ;
  wire \time_from_start_reg[4]_8 ;
  wire \time_from_start_reg[4]_9 ;

  LUT6 #(
    .INIT(64'hFFFFFEFF00004000)) 
    \VUT_LOGO[14]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(anim_mode),
        .I4(\VUT_LOGO[36]_i_2_n_0 ),
        .I5(\VUT_LOGO_reg_n_0_[14] ),
        .O(\VUT_LOGO[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00004000)) 
    \VUT_LOGO[22]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[1]),
        .I3(anim_mode),
        .I4(\VUT_LOGO[61]_i_2_n_0 ),
        .I5(\VUT_LOGO_reg_n_0_[22] ),
        .O(\VUT_LOGO[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \VUT_LOGO[32]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(anim_mode),
        .I2(frame_num_reg[3]),
        .I3(anim_enable),
        .I4(\VUT_LOGO[32]_i_2_n_0 ),
        .I5(\VUT_LOGO_reg_n_0_[32] ),
        .O(\VUT_LOGO[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VUT_LOGO[32]_i_2 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[2]),
        .O(\VUT_LOGO[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \VUT_LOGO[33]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(anim_mode),
        .I2(\VUT_LOGO[35]_i_2_n_0 ),
        .I3(frame_num_reg[2]),
        .I4(frame_num_reg[0]),
        .I5(\VUT_LOGO_reg_n_0_[33] ),
        .O(\VUT_LOGO[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00004000)) 
    \VUT_LOGO[34]_i_1 
       (.I0(frame_num_reg[3]),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(anim_mode),
        .I4(\VUT_LOGO[34]_i_2_n_0 ),
        .I5(\VUT_LOGO_reg_n_0_[34] ),
        .O(\VUT_LOGO[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \VUT_LOGO[34]_i_2 
       (.I0(frame_num_reg[2]),
        .I1(anim_enable),
        .O(\VUT_LOGO[34]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \VUT_LOGO[35]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(anim_mode),
        .I2(\VUT_LOGO[35]_i_2_n_0 ),
        .I3(frame_num_reg[1]),
        .I4(frame_num_reg[0]),
        .I5(\VUT_LOGO_reg_n_0_[35] ),
        .O(\VUT_LOGO[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \VUT_LOGO[35]_i_2 
       (.I0(frame_num_reg[3]),
        .I1(anim_enable),
        .O(\VUT_LOGO[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00004000)) 
    \VUT_LOGO[36]_i_1 
       (.I0(frame_num_reg[3]),
        .I1(frame_num_reg[2]),
        .I2(frame_num_reg[0]),
        .I3(anim_mode),
        .I4(\VUT_LOGO[36]_i_2_n_0 ),
        .I5(\VUT_LOGO_reg_n_0_[36] ),
        .O(\VUT_LOGO[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \VUT_LOGO[36]_i_2 
       (.I0(frame_num_reg[1]),
        .I1(anim_enable),
        .O(\VUT_LOGO[36]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \VUT_LOGO[56]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(frame_num_reg[1]),
        .I2(\VUT_LOGO[56]_i_2_n_0 ),
        .I3(\VUT_LOGO_reg_n_0_[56] ),
        .O(\VUT_LOGO[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000440400000000)) 
    \VUT_LOGO[56]_i_2 
       (.I0(frame_num_reg[2]),
        .I1(anim_enable),
        .I2(frame_num_reg[1]),
        .I3(frame_num_reg[0]),
        .I4(frame_num_reg[3]),
        .I5(anim_mode),
        .O(\VUT_LOGO[56]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFAFF00001000)) 
    \VUT_LOGO[57]_i_1 
       (.I0(frame_num_reg[3]),
        .I1(frame_num_reg[2]),
        .I2(frame_num_reg[1]),
        .I3(anim_enable),
        .I4(\VUT_LOGO[59]_i_2_n_0 ),
        .I5(\VUT_LOGO_reg_n_0_[57] ),
        .O(\VUT_LOGO[57]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7B0800)) 
    \VUT_LOGO[58]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(\VUT_LOGO[62]_i_2_n_0 ),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO_reg_n_0_[58] ),
        .O(\VUT_LOGO[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFB00000400)) 
    \VUT_LOGO[59]_i_1 
       (.I0(frame_num_reg[3]),
        .I1(anim_enable),
        .I2(frame_num_reg[1]),
        .I3(frame_num_reg[2]),
        .I4(\VUT_LOGO[59]_i_2_n_0 ),
        .I5(\VUT_LOGO_reg_n_0_[59] ),
        .O(\VUT_LOGO[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \VUT_LOGO[59]_i_2 
       (.I0(frame_num_reg[0]),
        .I1(anim_mode),
        .O(\VUT_LOGO[59]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFD0800)) 
    \VUT_LOGO[60]_i_1 
       (.I0(\VUT_LOGO[62]_i_2_n_0 ),
        .I1(frame_num_reg[2]),
        .I2(frame_num_reg[1]),
        .I3(frame_num_reg[0]),
        .I4(\VUT_LOGO_reg_n_0_[60] ),
        .O(\VUT_LOGO[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00004000)) 
    \VUT_LOGO[61]_i_1 
       (.I0(frame_num_reg[3]),
        .I1(frame_num_reg[2]),
        .I2(frame_num_reg[1]),
        .I3(anim_mode),
        .I4(\VUT_LOGO[61]_i_2_n_0 ),
        .I5(\VUT_LOGO_reg_n_0_[61] ),
        .O(\VUT_LOGO[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \VUT_LOGO[61]_i_2 
       (.I0(frame_num_reg[0]),
        .I1(anim_enable),
        .O(\VUT_LOGO[61]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFD8000)) 
    \VUT_LOGO[62]_i_1 
       (.I0(\VUT_LOGO[62]_i_2_n_0 ),
        .I1(frame_num_reg[2]),
        .I2(frame_num_reg[1]),
        .I3(frame_num_reg[0]),
        .I4(\VUT_LOGO_reg_n_0_[62] ),
        .O(\VUT_LOGO[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \VUT_LOGO[62]_i_2 
       (.I0(frame_num_reg[3]),
        .I1(anim_mode),
        .I2(anim_enable),
        .O(\VUT_LOGO[62]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \VUT_LOGO[6]_i_1 
       (.I0(frame_num_reg[3]),
        .I1(anim_mode),
        .I2(\VUT_LOGO[34]_i_2_n_0 ),
        .I3(frame_num_reg[1]),
        .I4(frame_num_reg[0]),
        .I5(\VUT_LOGO_reg_n_0_[6] ),
        .O(\VUT_LOGO[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[14]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[22]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[32]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[33]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[34]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[35]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[36]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[56]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[57]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[58]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[59]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[60]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[61]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[62]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[6]_i_1_n_0 ),
        .Q(\VUT_LOGO_reg_n_0_[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[13]_i_1 
       (.I0(screen_buffer[14]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[14]_i_1 
       (.I0(screen_buffer[14]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \display_buffer[15]_i_1 
       (.I0(screen_buffer[55]),
        .I1(\display_buffer_reg[63] ),
        .I2(\display_buffer_reg[63]_0 ),
        .O(\screen_buffer_reg[55]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[21]_i_1 
       (.I0(screen_buffer[21]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[5]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[22]_i_1 
       (.I0(screen_buffer[22]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[24]_i_1 
       (.I0(screen_buffer[32]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[5]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[25]_i_1 
       (.I0(screen_buffer[33]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[26]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[34]),
        .O(\time_from_start_reg[4] ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[27]_i_1 
       (.I0(screen_buffer[35]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[3]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[28]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[36]),
        .O(\time_from_start_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[29]_i_1 
       (.I0(screen_buffer[53]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[4]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[32]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[32]),
        .O(\time_from_start_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[33]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[33]),
        .O(\time_from_start_reg[2]_2 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[34]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[34]),
        .O(\time_from_start_reg[2]_3 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[35]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[35]),
        .O(\time_from_start_reg[2]_4 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[36]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[36]),
        .O(\time_from_start_reg[2]_5 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[37]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[53]),
        .O(\time_from_start_reg[2]_6 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[38]_i_2 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[62]),
        .O(\time_from_start_reg[2]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[42]_i_1 
       (.I0(screen_buffer[58]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[10]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[43]_i_1 
       (.I0(screen_buffer[59]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[6]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[44]_i_1 
       (.I0(screen_buffer[60]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[7]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[45]_i_1 
       (.I0(screen_buffer[61]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[8]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[46]_i_1 
       (.I0(screen_buffer[54]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[9]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[49]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[49]),
        .O(\time_from_start_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[50]_i_1 
       (.I0(screen_buffer[50]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[10]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[51]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[51]),
        .O(\time_from_start_reg[4]_2 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[52]_i_1 
       (.I0(screen_buffer[52]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[11]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[53]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[53]),
        .O(\time_from_start_reg[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[54]_i_1 
       (.I0(screen_buffer[54]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[12]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[55]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[55]),
        .O(\time_from_start_reg[4]_4 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[56]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[56]),
        .O(\time_from_start_reg[4]_5 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[57]_i_2 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[57]),
        .O(\time_from_start_reg[4]_6 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[58]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[58]),
        .O(\time_from_start_reg[4]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[59]_i_1 
       (.I0(screen_buffer[59]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[13]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[60]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[60]),
        .O(\time_from_start_reg[4]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[61]_i_1 
       (.I0(screen_buffer[61]),
        .I1(\display_buffer_reg[63] ),
        .I2(display_buffer1),
        .I3(Q[14]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[62]_i_2 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[62]),
        .O(\time_from_start_reg[4]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \display_buffer[63]_i_1 
       (.I0(screen_buffer[7]),
        .I1(\display_buffer_reg[63] ),
        .I2(\display_buffer_reg[63]_0 ),
        .O(\screen_buffer_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[6]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[6]),
        .O(\time_from_start_reg[2] ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[7]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[7]),
        .O(\time_from_start_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \frame_num[0]_i_1 
       (.I0(frame_num_reg[0]),
        .O(\frame_num[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \frame_num[1]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(frame_num_reg[1]),
        .O(\frame_num[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \frame_num[2]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \frame_num[3]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_num_reg[0] 
       (.C(clk),
        .CE(anim_enable),
        .D(\frame_num[0]_i_1_n_0 ),
        .Q(frame_num_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_num_reg[1] 
       (.C(clk),
        .CE(anim_enable),
        .D(\frame_num[1]_i_1_n_0 ),
        .Q(frame_num_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_num_reg[2] 
       (.C(clk),
        .CE(anim_enable),
        .D(p_0_in__0[2]),
        .Q(frame_num_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_num_reg[3] 
       (.C(clk),
        .CE(anim_enable),
        .D(p_0_in__0[3]),
        .Q(frame_num_reg[3]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \screen_buffer[62]_i_1 
       (.I0(anim_mode),
        .O(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[14] ),
        .Q(screen_buffer[14]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[22] ),
        .Q(screen_buffer[21]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[22] ),
        .Q(screen_buffer[22]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[32] ),
        .Q(screen_buffer[32]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[33] ),
        .Q(screen_buffer[33]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[34] ),
        .Q(screen_buffer[34]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[35] ),
        .Q(screen_buffer[35]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[36] ),
        .Q(screen_buffer[36]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[57] ),
        .Q(screen_buffer[49]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[58] ),
        .Q(screen_buffer[50]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[59] ),
        .Q(screen_buffer[51]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[60] ),
        .Q(screen_buffer[52]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[61] ),
        .Q(screen_buffer[53]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[62] ),
        .Q(screen_buffer[54]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(screen_buffer[55]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[56] ),
        .Q(screen_buffer[56]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[57] ),
        .Q(screen_buffer[57]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[58] ),
        .Q(screen_buffer[58]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[59] ),
        .Q(screen_buffer[59]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[60] ),
        .Q(screen_buffer[60]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[61] ),
        .Q(screen_buffer[61]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[62] ),
        .Q(screen_buffer[62]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO_reg_n_0_[6] ),
        .Q(screen_buffer[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(screen_buffer[7]),
        .R(clear));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (col,
    row,
    clk);
  output [7:0]col;
  output [7:0]row;
  input clk;

  wire [22:0]anim_ctr;
  wire anim_ctr0_carry__0_n_0;
  wire anim_ctr0_carry__0_n_1;
  wire anim_ctr0_carry__0_n_2;
  wire anim_ctr0_carry__0_n_3;
  wire anim_ctr0_carry__0_n_4;
  wire anim_ctr0_carry__0_n_5;
  wire anim_ctr0_carry__0_n_6;
  wire anim_ctr0_carry__0_n_7;
  wire anim_ctr0_carry__1_n_0;
  wire anim_ctr0_carry__1_n_1;
  wire anim_ctr0_carry__1_n_2;
  wire anim_ctr0_carry__1_n_3;
  wire anim_ctr0_carry__1_n_4;
  wire anim_ctr0_carry__1_n_5;
  wire anim_ctr0_carry__1_n_6;
  wire anim_ctr0_carry__1_n_7;
  wire anim_ctr0_carry__2_n_0;
  wire anim_ctr0_carry__2_n_1;
  wire anim_ctr0_carry__2_n_2;
  wire anim_ctr0_carry__2_n_3;
  wire anim_ctr0_carry__2_n_4;
  wire anim_ctr0_carry__2_n_5;
  wire anim_ctr0_carry__2_n_6;
  wire anim_ctr0_carry__2_n_7;
  wire anim_ctr0_carry__3_n_0;
  wire anim_ctr0_carry__3_n_1;
  wire anim_ctr0_carry__3_n_2;
  wire anim_ctr0_carry__3_n_3;
  wire anim_ctr0_carry__3_n_4;
  wire anim_ctr0_carry__3_n_5;
  wire anim_ctr0_carry__3_n_6;
  wire anim_ctr0_carry__3_n_7;
  wire anim_ctr0_carry__4_n_3;
  wire anim_ctr0_carry__4_n_6;
  wire anim_ctr0_carry__4_n_7;
  wire anim_ctr0_carry_n_0;
  wire anim_ctr0_carry_n_1;
  wire anim_ctr0_carry_n_2;
  wire anim_ctr0_carry_n_3;
  wire anim_ctr0_carry_n_4;
  wire anim_ctr0_carry_n_5;
  wire anim_ctr0_carry_n_6;
  wire anim_ctr0_carry_n_7;
  wire \anim_ctr[22]_i_1_n_0 ;
  wire \anim_ctr[22]_i_2_n_0 ;
  wire \anim_ctr[22]_i_3_n_0 ;
  wire \anim_ctr[22]_i_4_n_0 ;
  wire \anim_ctr[22]_i_5_n_0 ;
  wire \anim_ctr[22]_i_6_n_0 ;
  wire [0:0]anim_ctr_2;
  wire anim_enable;
  wire anim_mode;
  wire anim_mode_i_1_n_0;
  wire anim_mode_i_2_n_0;
  wire animation_n_0;
  wire animation_n_1;
  wire animation_n_10;
  wire animation_n_11;
  wire animation_n_12;
  wire animation_n_13;
  wire animation_n_14;
  wire animation_n_15;
  wire animation_n_16;
  wire animation_n_17;
  wire animation_n_18;
  wire animation_n_19;
  wire animation_n_2;
  wire animation_n_20;
  wire animation_n_21;
  wire animation_n_22;
  wire animation_n_23;
  wire animation_n_24;
  wire animation_n_25;
  wire animation_n_26;
  wire animation_n_27;
  wire animation_n_28;
  wire animation_n_29;
  wire animation_n_3;
  wire animation_n_30;
  wire animation_n_31;
  wire animation_n_32;
  wire animation_n_33;
  wire animation_n_34;
  wire animation_n_35;
  wire animation_n_36;
  wire animation_n_37;
  wire animation_n_38;
  wire animation_n_39;
  wire animation_n_4;
  wire animation_n_5;
  wire animation_n_6;
  wire animation_n_7;
  wire animation_n_8;
  wire animation_n_9;
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
  wire \cnt[0]_i_2_n_0 ;
  wire [0:0]cnt_0;
  wire cnt_dis_enable_reg_n_0;
  wire cnt_dis_n_0;
  wire cnt_dis_n_16;
  wire cnt_dis_n_17;
  wire cnt_dis_n_18;
  wire cnt_dis_n_19;
  wire cnt_dis_n_20;
  wire cnt_dis_n_21;
  wire cnt_dis_n_22;
  wire cnt_dis_rst;
  wire cnt_dis_rst_i_1_n_0;
  wire [7:0]col;
  wire [2:0]col_indx;
  wire \col_indx[0]_i_1_n_0 ;
  wire \col_indx[1]_i_1_n_0 ;
  wire \col_indx[2]_i_1_n_0 ;
  wire [14:1]data0;
  wire [7:0]data1;
  wire [7:1]data2;
  wire [6:2]data3;
  wire [6:0]data4;
  wire [7:0]data5;
  wire [6:2]data6;
  wire [7:2]data7;
  wire display_buffer;
  wire display_buffer1;
  wire \display_buffer[38]_i_1_n_0 ;
  wire \display_buffer[38]_i_3_n_0 ;
  wire \display_buffer[61]_i_2_n_0 ;
  wire \display_buffer_reg_n_0_[6] ;
  wire \display_buffer_reg_n_0_[7] ;
  wire p_0_in;
  wire [24:0]p_1_in;
  wire [7:0]row;
  wire [7:0]scol;
  wire \scol[0]_i_2_n_0 ;
  wire \scol[1]_i_2_n_0 ;
  wire \scol[1]_i_3_n_0 ;
  wire \scol[2]_i_2_n_0 ;
  wire \scol[2]_i_3_n_0 ;
  wire \scol[3]_i_2_n_0 ;
  wire \scol[3]_i_3_n_0 ;
  wire \scol[4]_i_2_n_0 ;
  wire \scol[4]_i_3_n_0 ;
  wire \scol[5]_i_2_n_0 ;
  wire \scol[5]_i_3_n_0 ;
  wire \scol[6]_i_2_n_0 ;
  wire \scol[6]_i_3_n_0 ;
  wire \scol[7]_i_2_n_0 ;
  wire \scol[7]_i_3_n_0 ;
  wire [61:13]screen_value;
  wire [24:0]sec_cnt;
  wire sec_cnt0_carry__0_n_0;
  wire sec_cnt0_carry__0_n_1;
  wire sec_cnt0_carry__0_n_2;
  wire sec_cnt0_carry__0_n_3;
  wire sec_cnt0_carry__1_n_0;
  wire sec_cnt0_carry__1_n_1;
  wire sec_cnt0_carry__1_n_2;
  wire sec_cnt0_carry__1_n_3;
  wire sec_cnt0_carry__2_n_0;
  wire sec_cnt0_carry__2_n_1;
  wire sec_cnt0_carry__2_n_2;
  wire sec_cnt0_carry__2_n_3;
  wire sec_cnt0_carry__3_n_0;
  wire sec_cnt0_carry__3_n_1;
  wire sec_cnt0_carry__3_n_2;
  wire sec_cnt0_carry__3_n_3;
  wire sec_cnt0_carry__4_n_1;
  wire sec_cnt0_carry__4_n_2;
  wire sec_cnt0_carry__4_n_3;
  wire sec_cnt0_carry_n_0;
  wire sec_cnt0_carry_n_1;
  wire sec_cnt0_carry_n_2;
  wire sec_cnt0_carry_n_3;
  wire \sec_cnt[24]_i_2_n_0 ;
  wire \sec_cnt[24]_i_3_n_0 ;
  wire \sec_cnt[24]_i_4_n_0 ;
  wire \sec_cnt[24]_i_5_n_0 ;
  wire \srow[7]_i_2_n_0 ;
  wire \srow[7]_i_3_n_0 ;
  wire \srow[7]_i_4_n_0 ;
  wire \srow[7]_i_5_n_0 ;
  wire [5:0]time_from_start;
  wire \time_from_start[0]_i_1_n_0 ;
  wire \time_from_start[1]_i_1_n_0 ;
  wire \time_from_start[2]_i_1_n_0 ;
  wire \time_from_start[3]_i_1_n_0 ;
  wire \time_from_start[4]_i_1_n_0 ;
  wire \time_from_start[5]_i_1_n_0 ;
  wire \time_from_start[5]_i_3_n_0 ;
  wire \time_from_start[5]_i_4_n_0 ;
  wire time_from_start_1;
  wire [3:1]NLW_anim_ctr0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_anim_ctr0_carry__4_O_UNCONNECTED;
  wire [3:1]NLW_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_sec_cnt0_carry__4_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 anim_ctr0_carry
       (.CI(1'b0),
        .CO({anim_ctr0_carry_n_0,anim_ctr0_carry_n_1,anim_ctr0_carry_n_2,anim_ctr0_carry_n_3}),
        .CYINIT(anim_ctr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({anim_ctr0_carry_n_4,anim_ctr0_carry_n_5,anim_ctr0_carry_n_6,anim_ctr0_carry_n_7}),
        .S(anim_ctr[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 anim_ctr0_carry__0
       (.CI(anim_ctr0_carry_n_0),
        .CO({anim_ctr0_carry__0_n_0,anim_ctr0_carry__0_n_1,anim_ctr0_carry__0_n_2,anim_ctr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({anim_ctr0_carry__0_n_4,anim_ctr0_carry__0_n_5,anim_ctr0_carry__0_n_6,anim_ctr0_carry__0_n_7}),
        .S(anim_ctr[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 anim_ctr0_carry__1
       (.CI(anim_ctr0_carry__0_n_0),
        .CO({anim_ctr0_carry__1_n_0,anim_ctr0_carry__1_n_1,anim_ctr0_carry__1_n_2,anim_ctr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({anim_ctr0_carry__1_n_4,anim_ctr0_carry__1_n_5,anim_ctr0_carry__1_n_6,anim_ctr0_carry__1_n_7}),
        .S(anim_ctr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 anim_ctr0_carry__2
       (.CI(anim_ctr0_carry__1_n_0),
        .CO({anim_ctr0_carry__2_n_0,anim_ctr0_carry__2_n_1,anim_ctr0_carry__2_n_2,anim_ctr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({anim_ctr0_carry__2_n_4,anim_ctr0_carry__2_n_5,anim_ctr0_carry__2_n_6,anim_ctr0_carry__2_n_7}),
        .S(anim_ctr[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 anim_ctr0_carry__3
       (.CI(anim_ctr0_carry__2_n_0),
        .CO({anim_ctr0_carry__3_n_0,anim_ctr0_carry__3_n_1,anim_ctr0_carry__3_n_2,anim_ctr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({anim_ctr0_carry__3_n_4,anim_ctr0_carry__3_n_5,anim_ctr0_carry__3_n_6,anim_ctr0_carry__3_n_7}),
        .S(anim_ctr[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 anim_ctr0_carry__4
       (.CI(anim_ctr0_carry__3_n_0),
        .CO({NLW_anim_ctr0_carry__4_CO_UNCONNECTED[3:1],anim_ctr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_anim_ctr0_carry__4_O_UNCONNECTED[3:2],anim_ctr0_carry__4_n_6,anim_ctr0_carry__4_n_7}),
        .S({1'b0,1'b0,anim_ctr[22:21]}));
  LUT1 #(
    .INIT(2'h1)) 
    \anim_ctr[0]_i_1 
       (.I0(anim_ctr[0]),
        .O(anim_ctr_2));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \anim_ctr[22]_i_1 
       (.I0(\anim_ctr[22]_i_2_n_0 ),
        .I1(anim_ctr[0]),
        .I2(anim_ctr[21]),
        .I3(anim_ctr[22]),
        .I4(\anim_ctr[22]_i_3_n_0 ),
        .I5(\anim_ctr[22]_i_4_n_0 ),
        .O(\anim_ctr[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \anim_ctr[22]_i_2 
       (.I0(anim_ctr[18]),
        .I1(anim_ctr[17]),
        .I2(anim_ctr[19]),
        .I3(anim_ctr[20]),
        .O(\anim_ctr[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \anim_ctr[22]_i_3 
       (.I0(anim_ctr[12]),
        .I1(anim_ctr[11]),
        .I2(anim_ctr[10]),
        .I3(anim_ctr[9]),
        .I4(\anim_ctr[22]_i_5_n_0 ),
        .O(\anim_ctr[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \anim_ctr[22]_i_4 
       (.I0(anim_ctr[3]),
        .I1(anim_ctr[4]),
        .I2(anim_ctr[1]),
        .I3(anim_ctr[2]),
        .I4(\anim_ctr[22]_i_6_n_0 ),
        .O(\anim_ctr[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \anim_ctr[22]_i_5 
       (.I0(anim_ctr[14]),
        .I1(anim_ctr[13]),
        .I2(anim_ctr[16]),
        .I3(anim_ctr[15]),
        .O(\anim_ctr[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \anim_ctr[22]_i_6 
       (.I0(anim_ctr[5]),
        .I1(anim_ctr[6]),
        .I2(anim_ctr[8]),
        .I3(anim_ctr[7]),
        .O(\anim_ctr[22]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr_2),
        .Q(anim_ctr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__1_n_6),
        .Q(anim_ctr[10]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__1_n_5),
        .Q(anim_ctr[11]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__1_n_4),
        .Q(anim_ctr[12]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__2_n_7),
        .Q(anim_ctr[13]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__2_n_6),
        .Q(anim_ctr[14]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__2_n_5),
        .Q(anim_ctr[15]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__2_n_4),
        .Q(anim_ctr[16]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__3_n_7),
        .Q(anim_ctr[17]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__3_n_6),
        .Q(anim_ctr[18]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__3_n_5),
        .Q(anim_ctr[19]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry_n_7),
        .Q(anim_ctr[1]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__3_n_4),
        .Q(anim_ctr[20]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__4_n_7),
        .Q(anim_ctr[21]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__4_n_6),
        .Q(anim_ctr[22]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry_n_6),
        .Q(anim_ctr[2]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry_n_5),
        .Q(anim_ctr[3]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry_n_4),
        .Q(anim_ctr[4]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__0_n_7),
        .Q(anim_ctr[5]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__0_n_6),
        .Q(anim_ctr[6]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__0_n_5),
        .Q(anim_ctr[7]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__0_n_4),
        .Q(anim_ctr[8]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anim_ctr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(anim_ctr0_carry__1_n_7),
        .Q(anim_ctr[9]),
        .R(\anim_ctr[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    anim_enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(\anim_ctr[22]_i_1_n_0 ),
        .Q(anim_enable),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEE20)) 
    anim_mode_i_1
       (.I0(\display_buffer[61]_i_2_n_0 ),
        .I1(\srow[7]_i_2_n_0 ),
        .I2(anim_mode_i_2_n_0),
        .I3(anim_mode),
        .O(anim_mode_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    anim_mode_i_2
       (.I0(time_from_start[3]),
        .I1(time_from_start[4]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[5]),
        .I5(time_from_start[0]),
        .O(anim_mode_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    anim_mode_reg
       (.C(clk),
        .CE(1'b1),
        .D(anim_mode_i_1_n_0),
        .Q(anim_mode),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_graphics animation
       (.D({animation_n_11,animation_n_12,animation_n_13,animation_n_14,animation_n_15,animation_n_16,animation_n_17,animation_n_18,animation_n_19,animation_n_20,animation_n_21,animation_n_22,animation_n_23,animation_n_24,animation_n_25,animation_n_26,animation_n_27,animation_n_28}),
        .Q({screen_value[61],screen_value[59],screen_value[54],screen_value[52],screen_value[50],screen_value[46:43],screen_value[31],screen_value[29],screen_value[27],screen_value[22],screen_value[14:13]}),
        .anim_enable(anim_enable),
        .anim_mode(anim_mode),
        .clk(clk),
        .display_buffer1(display_buffer1),
        .\display_buffer_reg[63] (\display_buffer[61]_i_2_n_0 ),
        .\display_buffer_reg[63]_0 (\srow[7]_i_2_n_0 ),
        .\screen_buffer_reg[55]_0 (animation_n_1),
        .\screen_buffer_reg[7]_0 (animation_n_0),
        .time_from_start(time_from_start[5:1]),
        .\time_from_start_reg[2] (animation_n_2),
        .\time_from_start_reg[2]_0 (animation_n_3),
        .\time_from_start_reg[2]_1 (animation_n_4),
        .\time_from_start_reg[2]_2 (animation_n_5),
        .\time_from_start_reg[2]_3 (animation_n_6),
        .\time_from_start_reg[2]_4 (animation_n_7),
        .\time_from_start_reg[2]_5 (animation_n_8),
        .\time_from_start_reg[2]_6 (animation_n_9),
        .\time_from_start_reg[2]_7 (animation_n_10),
        .\time_from_start_reg[4] (animation_n_29),
        .\time_from_start_reg[4]_0 (animation_n_30),
        .\time_from_start_reg[4]_1 (animation_n_31),
        .\time_from_start_reg[4]_2 (animation_n_32),
        .\time_from_start_reg[4]_3 (animation_n_33),
        .\time_from_start_reg[4]_4 (animation_n_34),
        .\time_from_start_reg[4]_5 (animation_n_35),
        .\time_from_start_reg[4]_6 (animation_n_36),
        .\time_from_start_reg[4]_7 (animation_n_37),
        .\time_from_start_reg[4]_8 (animation_n_38),
        .\time_from_start_reg[4]_9 (animation_n_39));
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[0]_i_1 
       (.I0(\cnt[0]_i_2_n_0 ),
        .I1(cnt[0]),
        .O(cnt_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \cnt[0]_i_2 
       (.I0(\srow[7]_i_5_n_0 ),
        .I1(cnt[3]),
        .I2(cnt[4]),
        .I3(cnt[5]),
        .I4(cnt[6]),
        .I5(\srow[7]_i_3_n_0 ),
        .O(\cnt[0]_i_2_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim cnt_dis
       (.AR(cnt_dis_rst),
        .E(cnt_dis_enable_reg_n_0),
        .Q({screen_value[61],screen_value[59],screen_value[54],screen_value[52],screen_value[50],screen_value[46:43],screen_value[31],screen_value[29],screen_value[27],screen_value[22],screen_value[14:13]}),
        .clk(clk),
        .display_buffer1(display_buffer1),
        .\display_buffer_reg[57] (\display_buffer[61]_i_2_n_0 ),
        .\display_buffer_reg[57]_0 (\srow[7]_i_2_n_0 ),
        .\screen_value_reg[11]_0 (cnt_dis_n_17),
        .\screen_value_reg[12]_0 (cnt_dis_n_18),
        .\screen_value_reg[18]_0 (cnt_dis_n_19),
        .\screen_value_reg[20]_0 (cnt_dis_n_20),
        .\screen_value_reg[31]_0 (cnt_dis_n_21),
        .\screen_value_reg[62]_0 (cnt_dis_n_16),
        .\screen_value_reg[63]_0 (cnt_dis_n_0),
        .\screen_value_reg[63]_1 (cnt_dis_n_22));
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
       (.I0(time_from_start[4]),
        .I1(time_from_start[1]),
        .I2(time_from_start[2]),
        .I3(time_from_start[3]),
        .I4(time_from_start[0]),
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
        .D(cnt_0),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(cnt[10]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(cnt[11]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(cnt[12]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(cnt[13]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(cnt[14]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(cnt[1]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(cnt[2]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(cnt[3]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(cnt[4]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(cnt[5]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(cnt[6]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(cnt[7]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(cnt[8]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(cnt[9]),
        .R(display_buffer));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \col_indx[0]_i_1 
       (.I0(col_indx[0]),
        .O(\col_indx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \col_indx[1]_i_1 
       (.I0(col_indx[0]),
        .I1(col_indx[1]),
        .O(\col_indx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \col_indx[2]_i_1 
       (.I0(col_indx[2]),
        .I1(col_indx[0]),
        .I2(col_indx[1]),
        .O(\col_indx[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_indx_reg[0] 
       (.C(clk),
        .CE(display_buffer),
        .D(\col_indx[0]_i_1_n_0 ),
        .Q(col_indx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_indx_reg[1] 
       (.C(clk),
        .CE(display_buffer),
        .D(\col_indx[1]_i_1_n_0 ),
        .Q(col_indx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_indx_reg[2] 
       (.C(clk),
        .CE(display_buffer),
        .D(\col_indx[2]_i_1_n_0 ),
        .Q(col_indx[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \display_buffer[38]_i_1 
       (.I0(\display_buffer[38]_i_3_n_0 ),
        .I1(\srow[7]_i_2_n_0 ),
        .O(\display_buffer[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007A780000)) 
    \display_buffer[38]_i_3 
       (.I0(time_from_start[2]),
        .I1(time_from_start[1]),
        .I2(time_from_start[3]),
        .I3(time_from_start[0]),
        .I4(time_from_start[4]),
        .I5(time_from_start[5]),
        .O(\display_buffer[38]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \display_buffer[61]_i_2 
       (.I0(time_from_start[5]),
        .I1(time_from_start[3]),
        .I2(time_from_start[2]),
        .I3(time_from_start[1]),
        .I4(time_from_start[4]),
        .O(\display_buffer[61]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFEAAFAAAFAAA)) 
    \display_buffer[61]_i_3 
       (.I0(time_from_start[5]),
        .I1(time_from_start[1]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(time_from_start[0]),
        .I5(time_from_start[2]),
        .O(display_buffer1));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[10] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_19),
        .Q(data7[2]),
        .S(animation_n_1));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[11] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_17),
        .Q(data7[3]),
        .S(animation_n_1));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[12] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_18),
        .Q(data7[4]),
        .S(animation_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[13] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_28),
        .Q(data7[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[14] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_27),
        .Q(data7[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[15] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_21),
        .Q(data7[7]),
        .S(animation_n_1));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[18] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_19),
        .Q(data6[2]),
        .S(animation_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[20] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_20),
        .Q(data6[4]),
        .S(animation_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[21] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_26),
        .Q(data6[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[22] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_25),
        .Q(data6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[24] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_24),
        .Q(data5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[25] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_23),
        .Q(data5[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[26] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_29),
        .Q(data5[2]),
        .S(cnt_dis_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[27] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_22),
        .Q(data5[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[28] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_30),
        .Q(data5[4]),
        .S(cnt_dis_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[29] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_21),
        .Q(data5[5]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[31] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_21),
        .Q(data5[7]),
        .S(animation_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[32] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_4),
        .Q(data4[0]),
        .S(\display_buffer[38]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[33] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_5),
        .Q(data4[1]),
        .S(\display_buffer[38]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[34] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_6),
        .Q(data4[2]),
        .S(\display_buffer[38]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[35] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_7),
        .Q(data4[3]),
        .S(\display_buffer[38]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[36] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_8),
        .Q(data4[4]),
        .S(\display_buffer[38]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[37] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_9),
        .Q(data4[5]),
        .S(\display_buffer[38]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[38] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_10),
        .Q(data4[6]),
        .S(\display_buffer[38]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[42] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_20),
        .Q(data3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[43] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_19),
        .Q(data3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[44] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_18),
        .Q(data3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[45] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_17),
        .Q(data3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[46] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_16),
        .Q(data3[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[49] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_31),
        .Q(data2[1]),
        .S(cnt_dis_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[50] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_15),
        .Q(data2[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[51] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_32),
        .Q(data2[3]),
        .S(cnt_dis_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[52] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_14),
        .Q(data2[4]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[53] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_33),
        .Q(data2[5]),
        .S(cnt_dis_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[54] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_13),
        .Q(data2[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[55] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_34),
        .Q(data2[7]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[56] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_35),
        .Q(data1[0]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[57] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_36),
        .Q(data1[1]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[58] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_37),
        .Q(data1[2]),
        .S(cnt_dis_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[59] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_12),
        .Q(data1[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[60] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_38),
        .Q(data1[4]),
        .S(cnt_dis_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[61] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_11),
        .Q(data1[5]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[62] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_39),
        .Q(data1[6]),
        .S(cnt_dis_n_16));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[63] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_22),
        .Q(data1[7]),
        .S(animation_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[6] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_2),
        .Q(\display_buffer_reg_n_0_[6] ),
        .S(\display_buffer[38]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[7] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_3),
        .Q(\display_buffer_reg_n_0_[7] ),
        .S(\display_buffer[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \scol[0]_i_1 
       (.I0(\scol[0]_i_2_n_0 ),
        .I1(col_indx[2]),
        .I2(col_indx[1]),
        .I3(data1[0]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(scol[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \scol[0]_i_2 
       (.I0(data5[7]),
        .I1(col_indx[1]),
        .I2(data5[0]),
        .I3(col_indx[0]),
        .I4(data4[0]),
        .O(\scol[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \scol[1]_i_2 
       (.I0(data2[1]),
        .I1(col_indx[1]),
        .I2(data1[1]),
        .I3(col_indx[0]),
        .I4(\display_buffer_reg_n_0_[7] ),
        .O(\scol[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[1]_i_3 
       (.I0(data7[7]),
        .I1(data5[7]),
        .I2(col_indx[1]),
        .I3(data5[1]),
        .I4(col_indx[0]),
        .I5(data4[1]),
        .O(\scol[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[2]_i_2 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(col_indx[1]),
        .I3(data1[2]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[2]_i_3 
       (.I0(data7[2]),
        .I1(data6[2]),
        .I2(col_indx[1]),
        .I3(data5[2]),
        .I4(col_indx[0]),
        .I5(data4[2]),
        .O(\scol[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[3]_i_2 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(col_indx[1]),
        .I3(data1[3]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[3]_i_3 
       (.I0(data7[3]),
        .I1(data5[7]),
        .I2(col_indx[1]),
        .I3(data5[3]),
        .I4(col_indx[0]),
        .I5(data4[3]),
        .O(\scol[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[4]_i_2 
       (.I0(data3[4]),
        .I1(data2[4]),
        .I2(col_indx[1]),
        .I3(data1[4]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[4]_i_3 
       (.I0(data7[4]),
        .I1(data6[4]),
        .I2(col_indx[1]),
        .I3(data5[4]),
        .I4(col_indx[0]),
        .I5(data4[4]),
        .O(\scol[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[5]_i_2 
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(col_indx[1]),
        .I3(data1[5]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[6] ),
        .O(\scol[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[5]_i_3 
       (.I0(data7[5]),
        .I1(data6[5]),
        .I2(col_indx[1]),
        .I3(data5[5]),
        .I4(col_indx[0]),
        .I5(data4[5]),
        .O(\scol[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[6]_i_2 
       (.I0(data3[6]),
        .I1(data2[6]),
        .I2(col_indx[1]),
        .I3(data1[6]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[6] ),
        .O(\scol[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[6]_i_3 
       (.I0(data7[6]),
        .I1(data6[6]),
        .I2(col_indx[1]),
        .I3(data1[6]),
        .I4(col_indx[0]),
        .I5(data4[6]),
        .O(\scol[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \scol[7]_i_2 
       (.I0(data2[7]),
        .I1(col_indx[1]),
        .I2(data1[7]),
        .I3(col_indx[0]),
        .I4(\display_buffer_reg_n_0_[7] ),
        .O(\scol[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \scol[7]_i_3 
       (.I0(data7[7]),
        .I1(col_indx[1]),
        .I2(data5[7]),
        .I3(col_indx[0]),
        .I4(\display_buffer_reg_n_0_[7] ),
        .O(\scol[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[0]),
        .Q(col[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[1]),
        .Q(col[1]),
        .R(1'b0));
  MUXF7 \scol_reg[1]_i_1 
       (.I0(\scol[1]_i_2_n_0 ),
        .I1(\scol[1]_i_3_n_0 ),
        .O(scol[1]),
        .S(col_indx[2]));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[2]),
        .Q(col[2]),
        .R(1'b0));
  MUXF7 \scol_reg[2]_i_1 
       (.I0(\scol[2]_i_2_n_0 ),
        .I1(\scol[2]_i_3_n_0 ),
        .O(scol[2]),
        .S(col_indx[2]));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[3]),
        .Q(col[3]),
        .R(1'b0));
  MUXF7 \scol_reg[3]_i_1 
       (.I0(\scol[3]_i_2_n_0 ),
        .I1(\scol[3]_i_3_n_0 ),
        .O(scol[3]),
        .S(col_indx[2]));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[4]),
        .Q(col[4]),
        .R(1'b0));
  MUXF7 \scol_reg[4]_i_1 
       (.I0(\scol[4]_i_2_n_0 ),
        .I1(\scol[4]_i_3_n_0 ),
        .O(scol[4]),
        .S(col_indx[2]));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[5]),
        .Q(col[5]),
        .R(1'b0));
  MUXF7 \scol_reg[5]_i_1 
       (.I0(\scol[5]_i_2_n_0 ),
        .I1(\scol[5]_i_3_n_0 ),
        .O(scol[5]),
        .S(col_indx[2]));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[6]),
        .Q(col[6]),
        .R(1'b0));
  MUXF7 \scol_reg[6]_i_1 
       (.I0(\scol[6]_i_2_n_0 ),
        .I1(\scol[6]_i_3_n_0 ),
        .O(scol[6]),
        .S(col_indx[2]));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[7]),
        .Q(col[7]),
        .R(1'b0));
  MUXF7 \scol_reg[7]_i_1 
       (.I0(\scol[7]_i_2_n_0 ),
        .I1(\scol[7]_i_3_n_0 ),
        .O(scol[7]),
        .S(col_indx[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry
       (.CI(1'b0),
        .CO({sec_cnt0_carry_n_0,sec_cnt0_carry_n_1,sec_cnt0_carry_n_2,sec_cnt0_carry_n_3}),
        .CYINIT(sec_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(sec_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__0
       (.CI(sec_cnt0_carry_n_0),
        .CO({sec_cnt0_carry__0_n_0,sec_cnt0_carry__0_n_1,sec_cnt0_carry__0_n_2,sec_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(sec_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__1
       (.CI(sec_cnt0_carry__0_n_0),
        .CO({sec_cnt0_carry__1_n_0,sec_cnt0_carry__1_n_1,sec_cnt0_carry__1_n_2,sec_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(sec_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__2
       (.CI(sec_cnt0_carry__1_n_0),
        .CO({sec_cnt0_carry__2_n_0,sec_cnt0_carry__2_n_1,sec_cnt0_carry__2_n_2,sec_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(sec_cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__3
       (.CI(sec_cnt0_carry__2_n_0),
        .CO({sec_cnt0_carry__3_n_0,sec_cnt0_carry__3_n_1,sec_cnt0_carry__3_n_2,sec_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(sec_cnt[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sec_cnt0_carry__4
       (.CI(sec_cnt0_carry__3_n_0),
        .CO({NLW_sec_cnt0_carry__4_CO_UNCONNECTED[3],sec_cnt0_carry__4_n_1,sec_cnt0_carry__4_n_2,sec_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[24:21]),
        .S(sec_cnt[24:21]));
  LUT1 #(
    .INIT(2'h1)) 
    \sec_cnt[0]_i_1 
       (.I0(sec_cnt[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \sec_cnt[24]_i_1 
       (.I0(\sec_cnt[24]_i_2_n_0 ),
        .I1(\sec_cnt[24]_i_3_n_0 ),
        .I2(\sec_cnt[24]_i_4_n_0 ),
        .I3(sec_cnt[0]),
        .I4(\sec_cnt[24]_i_5_n_0 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \sec_cnt[24]_i_2 
       (.I0(sec_cnt[3]),
        .I1(sec_cnt[4]),
        .I2(sec_cnt[1]),
        .I3(sec_cnt[2]),
        .I4(sec_cnt[6]),
        .I5(sec_cnt[5]),
        .O(\sec_cnt[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \sec_cnt[24]_i_3 
       (.I0(sec_cnt[21]),
        .I1(sec_cnt[22]),
        .I2(sec_cnt[19]),
        .I3(sec_cnt[20]),
        .I4(sec_cnt[23]),
        .I5(sec_cnt[24]),
        .O(\sec_cnt[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \sec_cnt[24]_i_4 
       (.I0(sec_cnt[16]),
        .I1(sec_cnt[15]),
        .I2(sec_cnt[13]),
        .I3(sec_cnt[14]),
        .I4(sec_cnt[17]),
        .I5(sec_cnt[18]),
        .O(\sec_cnt[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \sec_cnt[24]_i_5 
       (.I0(sec_cnt[9]),
        .I1(sec_cnt[10]),
        .I2(sec_cnt[7]),
        .I3(sec_cnt[8]),
        .I4(sec_cnt[12]),
        .I5(sec_cnt[11]),
        .O(\sec_cnt[24]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(sec_cnt[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(sec_cnt[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(sec_cnt[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(sec_cnt[12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(sec_cnt[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(sec_cnt[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(sec_cnt[15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(sec_cnt[16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(sec_cnt[17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(sec_cnt[18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(sec_cnt[19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(sec_cnt[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(sec_cnt[20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(sec_cnt[21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(sec_cnt[22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(sec_cnt[23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(sec_cnt[24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(sec_cnt[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(sec_cnt[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(sec_cnt[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(sec_cnt[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(sec_cnt[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(sec_cnt[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(sec_cnt[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(sec_cnt[9]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \srow[7]_i_1 
       (.I0(\srow[7]_i_2_n_0 ),
        .O(display_buffer));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \srow[7]_i_2 
       (.I0(\srow[7]_i_3_n_0 ),
        .I1(\srow[7]_i_4_n_0 ),
        .I2(\srow[7]_i_5_n_0 ),
        .I3(cnt[0]),
        .O(\srow[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \srow[7]_i_3 
       (.I0(cnt[13]),
        .I1(cnt[14]),
        .I2(cnt[11]),
        .I3(cnt[12]),
        .I4(cnt[2]),
        .I5(cnt[1]),
        .O(\srow[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \srow[7]_i_4 
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .I2(cnt[5]),
        .I3(cnt[6]),
        .O(\srow[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \srow[7]_i_5 
       (.I0(cnt[8]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[9]),
        .O(\srow[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[0] 
       (.C(clk),
        .CE(display_buffer),
        .D(row[7]),
        .Q(row[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[1] 
       (.C(clk),
        .CE(display_buffer),
        .D(row[0]),
        .Q(row[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[2] 
       (.C(clk),
        .CE(display_buffer),
        .D(row[1]),
        .Q(row[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[3] 
       (.C(clk),
        .CE(display_buffer),
        .D(row[2]),
        .Q(row[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[4] 
       (.C(clk),
        .CE(display_buffer),
        .D(row[3]),
        .Q(row[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[5] 
       (.C(clk),
        .CE(display_buffer),
        .D(row[4]),
        .Q(row[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[6] 
       (.C(clk),
        .CE(display_buffer),
        .D(row[5]),
        .Q(row[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[7] 
       (.C(clk),
        .CE(display_buffer),
        .D(row[6]),
        .Q(row[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000F7FFFFFF0000)) 
    \time_from_start[0]_i_1 
       (.I0(time_from_start[5]),
        .I1(time_from_start[3]),
        .I2(\time_from_start[5]_i_4_n_0 ),
        .I3(time_from_start[4]),
        .I4(p_0_in),
        .I5(time_from_start[0]),
        .O(\time_from_start[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \time_from_start[1]_i_1 
       (.I0(time_from_start[0]),
        .I1(time_from_start[1]),
        .O(\time_from_start[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \time_from_start[2]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[2]),
        .O(\time_from_start[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \time_from_start[3]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[2]),
        .I2(time_from_start[0]),
        .I3(time_from_start[3]),
        .O(\time_from_start[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \time_from_start[4]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[2]),
        .I2(time_from_start[0]),
        .I3(time_from_start[3]),
        .I4(time_from_start[4]),
        .O(\time_from_start[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \time_from_start[5]_i_1 
       (.I0(time_from_start[4]),
        .I1(\time_from_start[5]_i_4_n_0 ),
        .I2(time_from_start[3]),
        .I3(time_from_start[0]),
        .I4(time_from_start[5]),
        .O(\time_from_start[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \time_from_start[5]_i_2 
       (.I0(p_0_in),
        .I1(time_from_start[4]),
        .I2(\time_from_start[5]_i_4_n_0 ),
        .I3(time_from_start[3]),
        .I4(time_from_start[0]),
        .I5(time_from_start[5]),
        .O(time_from_start_1));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \time_from_start[5]_i_3 
       (.I0(time_from_start[4]),
        .I1(time_from_start[1]),
        .I2(time_from_start[2]),
        .I3(time_from_start[3]),
        .I4(time_from_start[0]),
        .I5(time_from_start[5]),
        .O(\time_from_start[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \time_from_start[5]_i_4 
       (.I0(time_from_start[1]),
        .I1(time_from_start[2]),
        .O(\time_from_start[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\time_from_start[0]_i_1_n_0 ),
        .Q(time_from_start[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[1] 
       (.C(clk),
        .CE(time_from_start_1),
        .D(\time_from_start[1]_i_1_n_0 ),
        .Q(time_from_start[1]),
        .R(\time_from_start[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[2] 
       (.C(clk),
        .CE(time_from_start_1),
        .D(\time_from_start[2]_i_1_n_0 ),
        .Q(time_from_start[2]),
        .R(\time_from_start[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[3] 
       (.C(clk),
        .CE(time_from_start_1),
        .D(\time_from_start[3]_i_1_n_0 ),
        .Q(time_from_start[3]),
        .R(\time_from_start[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[4] 
       (.C(clk),
        .CE(time_from_start_1),
        .D(\time_from_start[4]_i_1_n_0 ),
        .Q(time_from_start[4]),
        .R(\time_from_start[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[5] 
       (.C(clk),
        .CE(time_from_start_1),
        .D(\time_from_start[5]_i_3_n_0 ),
        .Q(time_from_start[5]),
        .R(\time_from_start[5]_i_1_n_0 ));
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
