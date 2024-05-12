// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun May 12 12:11:50 2024
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
   (\screen_value_reg[11]_0 ,
    \screen_value_reg[12]_0 ,
    \screen_value_reg[13]_0 ,
    \screen_value_reg[14]_0 ,
    \screen_value_reg[18]_0 ,
    \screen_value_reg[20]_0 ,
    \screen_value_reg[22]_0 ,
    \screen_value_reg[27]_0 ,
    \screen_value_reg[29]_0 ,
    \screen_value_reg[31]_0 ,
    \screen_value_reg[43]_0 ,
    \screen_value_reg[44]_0 ,
    \screen_value_reg[45]_0 ,
    \screen_value_reg[46]_0 ,
    \screen_value_reg[50]_0 ,
    \screen_value_reg[52]_0 ,
    \screen_value_reg[54]_0 ,
    \screen_value_reg[59]_0 ,
    \screen_value_reg[61]_0 ,
    \screen_value_reg[62]_0 ,
    \screen_value_reg[63]_0 ,
    clk,
    \display_buffer_reg[11] ,
    E,
    AR);
  output \screen_value_reg[11]_0 ;
  output \screen_value_reg[12]_0 ;
  output \screen_value_reg[13]_0 ;
  output \screen_value_reg[14]_0 ;
  output \screen_value_reg[18]_0 ;
  output \screen_value_reg[20]_0 ;
  output \screen_value_reg[22]_0 ;
  output \screen_value_reg[27]_0 ;
  output \screen_value_reg[29]_0 ;
  output \screen_value_reg[31]_0 ;
  output \screen_value_reg[43]_0 ;
  output \screen_value_reg[44]_0 ;
  output \screen_value_reg[45]_0 ;
  output \screen_value_reg[46]_0 ;
  output \screen_value_reg[50]_0 ;
  output \screen_value_reg[52]_0 ;
  output \screen_value_reg[54]_0 ;
  output \screen_value_reg[59]_0 ;
  output \screen_value_reg[61]_0 ;
  output \screen_value_reg[62]_0 ;
  output \screen_value_reg[63]_0 ;
  input clk;
  input \display_buffer_reg[11] ;
  input [0:0]E;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
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
  wire \display_buffer_reg[11] ;
  wire en_2nd_ctr;
  wire [23:3]first_value;
  wire [23:3]first_value_0;
  wire [63:11]screen_value;
  wire \screen_value_reg[11]_0 ;
  wire \screen_value_reg[12]_0 ;
  wire \screen_value_reg[13]_0 ;
  wire \screen_value_reg[14]_0 ;
  wire \screen_value_reg[18]_0 ;
  wire \screen_value_reg[20]_0 ;
  wire \screen_value_reg[22]_0 ;
  wire \screen_value_reg[27]_0 ;
  wire \screen_value_reg[29]_0 ;
  wire \screen_value_reg[31]_0 ;
  wire \screen_value_reg[43]_0 ;
  wire \screen_value_reg[44]_0 ;
  wire \screen_value_reg[45]_0 ;
  wire \screen_value_reg[46]_0 ;
  wire \screen_value_reg[50]_0 ;
  wire \screen_value_reg[52]_0 ;
  wire \screen_value_reg[54]_0 ;
  wire \screen_value_reg[59]_0 ;
  wire \screen_value_reg[61]_0 ;
  wire \screen_value_reg[62]_0 ;
  wire \screen_value_reg[63]_0 ;
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[11]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[11]),
        .O(\screen_value_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[12]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[12]),
        .O(\screen_value_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[13]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[13]),
        .O(\screen_value_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[14]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[14]),
        .O(\screen_value_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[18]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[18]),
        .O(\screen_value_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[20]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[20]),
        .O(\screen_value_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[22]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[22]),
        .O(\screen_value_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[27]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[27]),
        .O(\screen_value_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[29]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[29]),
        .O(\screen_value_reg[29]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[31]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[31]),
        .O(\screen_value_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[42]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[50]),
        .O(\screen_value_reg[50]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[43]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[43]),
        .O(\screen_value_reg[43]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[44]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[44]),
        .O(\screen_value_reg[44]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[45]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[45]),
        .O(\screen_value_reg[45]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[46]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[46]),
        .O(\screen_value_reg[46]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[52]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[52]),
        .O(\screen_value_reg[52]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[54]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[54]),
        .O(\screen_value_reg[54]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[59]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[59]),
        .O(\screen_value_reg[59]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[61]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[61]),
        .O(\screen_value_reg[61]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[62]_i_1 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[62]),
        .O(\screen_value_reg[62]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \display_buffer[63]_i_2 
       (.I0(\display_buffer_reg[11] ),
        .I1(screen_value[63]),
        .O(\screen_value_reg[63]_0 ));
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
        .Q(screen_value[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[6]),
        .Q(screen_value[14]),
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
        .Q(screen_value[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[19]),
        .Q(screen_value[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[21]),
        .Q(screen_value[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[23]),
        .Q(screen_value[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[3]),
        .Q(screen_value[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[4]),
        .Q(screen_value[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[5]),
        .Q(screen_value[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[6]),
        .Q(screen_value[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[10]),
        .Q(screen_value[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[12]),
        .Q(screen_value[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[14]),
        .Q(screen_value[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[19]),
        .Q(screen_value[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[21]),
        .Q(screen_value[61]),
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
  wire [6:0]\^col ;
  wire [7:0]row;

  assign col[7] = \^col [1];
  assign col[6:0] = \^col [6:0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top U0
       (.clk(clk),
        .col({\^col [1],\^col [6:2],\^col [0]}),
        .row(row));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (col,
    row,
    clk);
  output [6:0]col;
  output [7:0]row;
  input clk;

  wire clk;
  wire [14:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__0_n_4;
  wire cnt0_carry__0_n_5;
  wire cnt0_carry__0_n_6;
  wire cnt0_carry__0_n_7;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__1_n_4;
  wire cnt0_carry__1_n_5;
  wire cnt0_carry__1_n_6;
  wire cnt0_carry__1_n_7;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__2_n_6;
  wire cnt0_carry__2_n_7;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire cnt0_carry_n_4;
  wire cnt0_carry_n_5;
  wire cnt0_carry_n_6;
  wire cnt0_carry_n_7;
  wire [0:0]cnt_1;
  wire cnt_dis_enable_reg_n_0;
  wire cnt_dis_n_0;
  wire cnt_dis_n_1;
  wire cnt_dis_n_10;
  wire cnt_dis_n_11;
  wire cnt_dis_n_12;
  wire cnt_dis_n_13;
  wire cnt_dis_n_14;
  wire cnt_dis_n_15;
  wire cnt_dis_n_16;
  wire cnt_dis_n_17;
  wire cnt_dis_n_18;
  wire cnt_dis_n_19;
  wire cnt_dis_n_2;
  wire cnt_dis_n_20;
  wire cnt_dis_n_3;
  wire cnt_dis_n_4;
  wire cnt_dis_n_5;
  wire cnt_dis_n_6;
  wire cnt_dis_n_7;
  wire cnt_dis_n_8;
  wire cnt_dis_n_9;
  wire cnt_dis_rst;
  wire cnt_dis_rst_i_1_n_0;
  wire [6:0]col;
  wire [2:0]col_indx;
  wire \col_indx[0]_i_1_n_0 ;
  wire \col_indx[1]_i_1_n_0 ;
  wire \col_indx[2]_i_1_n_0 ;
  wire [7:3]data0;
  wire [7:2]data1;
  wire [6:2]data2;
  wire [5:5]data3;
  wire [7:3]data4;
  wire [6:2]data5;
  wire [7:2]data6;
  wire display_buffer;
  wire \display_buffer[37]_i_1_n_0 ;
  wire \display_buffer[63]_i_1_n_0 ;
  wire \display_buffer[7]_i_1_n_0 ;
  wire \display_buffer_reg_n_0_[7] ;
  wire p_0_in;
  wire [24:0]p_1_in;
  wire [7:0]row;
  wire [7:0]scol;
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
  wire [5:0]time_from_start;
  wire \time_from_start[0]_i_1_n_0 ;
  wire \time_from_start[1]_i_1_n_0 ;
  wire \time_from_start[2]_i_1_n_0 ;
  wire \time_from_start[3]_i_1_n_0 ;
  wire \time_from_start[4]_i_1_n_0 ;
  wire \time_from_start[5]_i_1_n_0 ;
  wire \time_from_start[5]_i_3_n_0 ;
  wire \time_from_start[5]_i_4_n_0 ;
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
        .O({cnt0_carry_n_4,cnt0_carry_n_5,cnt0_carry_n_6,cnt0_carry_n_7}),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__0_n_4,cnt0_carry__0_n_5,cnt0_carry__0_n_6,cnt0_carry__0_n_7}),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__1_n_4,cnt0_carry__1_n_5,cnt0_carry__1_n_6,cnt0_carry__1_n_7}),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({NLW_cnt0_carry__2_CO_UNCONNECTED[3:1],cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__2_O_UNCONNECTED[3:2],cnt0_carry__2_n_6,cnt0_carry__2_n_7}),
        .S({1'b0,1'b0,cnt[14:13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[0]_i_1 
       (.I0(\srow[7]_i_2_n_0 ),
        .I1(cnt[0]),
        .O(cnt_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim cnt_dis
       (.AR(cnt_dis_rst),
        .E(cnt_dis_enable_reg_n_0),
        .clk(clk),
        .\display_buffer_reg[11] (\display_buffer[37]_i_1_n_0 ),
        .\screen_value_reg[11]_0 (cnt_dis_n_0),
        .\screen_value_reg[12]_0 (cnt_dis_n_1),
        .\screen_value_reg[13]_0 (cnt_dis_n_2),
        .\screen_value_reg[14]_0 (cnt_dis_n_3),
        .\screen_value_reg[18]_0 (cnt_dis_n_4),
        .\screen_value_reg[20]_0 (cnt_dis_n_5),
        .\screen_value_reg[22]_0 (cnt_dis_n_6),
        .\screen_value_reg[27]_0 (cnt_dis_n_7),
        .\screen_value_reg[29]_0 (cnt_dis_n_8),
        .\screen_value_reg[31]_0 (cnt_dis_n_9),
        .\screen_value_reg[43]_0 (cnt_dis_n_10),
        .\screen_value_reg[44]_0 (cnt_dis_n_11),
        .\screen_value_reg[45]_0 (cnt_dis_n_12),
        .\screen_value_reg[46]_0 (cnt_dis_n_13),
        .\screen_value_reg[50]_0 (cnt_dis_n_14),
        .\screen_value_reg[52]_0 (cnt_dis_n_15),
        .\screen_value_reg[54]_0 (cnt_dis_n_16),
        .\screen_value_reg[59]_0 (cnt_dis_n_17),
        .\screen_value_reg[61]_0 (cnt_dis_n_18),
        .\screen_value_reg[62]_0 (cnt_dis_n_19),
        .\screen_value_reg[63]_0 (cnt_dis_n_20));
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
       (.I0(time_from_start[5]),
        .I1(time_from_start[1]),
        .I2(time_from_start[2]),
        .I3(time_from_start[3]),
        .I4(time_from_start[4]),
        .I5(time_from_start[0]),
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
        .D(cnt0_carry__1_n_6),
        .Q(cnt[10]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_5),
        .Q(cnt[11]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_4),
        .Q(cnt[12]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_7),
        .Q(cnt[13]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_6),
        .Q(cnt[14]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_7),
        .Q(cnt[1]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_6),
        .Q(cnt[2]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_5),
        .Q(cnt[3]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_4),
        .Q(cnt[4]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_7),
        .Q(cnt[5]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_6),
        .Q(cnt[6]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_5),
        .Q(cnt[7]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_4),
        .Q(cnt[8]),
        .R(display_buffer));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_7),
        .Q(cnt[9]),
        .R(display_buffer));
  LUT1 #(
    .INIT(2'h1)) 
    \col_indx[0]_i_1 
       (.I0(col_indx[0]),
        .O(\col_indx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \col_indx[1]_i_1 
       (.I0(col_indx[0]),
        .I1(col_indx[1]),
        .O(\col_indx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
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
  LUT6 #(
    .INIT(64'hFFFFAAAAFAEAAAAA)) 
    \display_buffer[37]_i_1 
       (.I0(time_from_start[5]),
        .I1(time_from_start[1]),
        .I2(time_from_start[2]),
        .I3(time_from_start[0]),
        .I4(time_from_start[4]),
        .I5(time_from_start[3]),
        .O(\display_buffer[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF08)) 
    \display_buffer[63]_i_1 
       (.I0(time_from_start[4]),
        .I1(time_from_start[3]),
        .I2(\time_from_start[5]_i_4_n_0 ),
        .I3(time_from_start[5]),
        .I4(cnt[0]),
        .I5(\srow[7]_i_2_n_0 ),
        .O(\display_buffer[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030C0E0C0)) 
    \display_buffer[7]_i_1 
       (.I0(time_from_start[0]),
        .I1(time_from_start[3]),
        .I2(time_from_start[4]),
        .I3(time_from_start[2]),
        .I4(time_from_start[1]),
        .I5(time_from_start[5]),
        .O(\display_buffer[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[10] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_4),
        .Q(data6[2]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[11] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_0),
        .Q(data6[3]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[12] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_1),
        .Q(data6[4]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[13] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_2),
        .Q(data6[5]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[14] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_3),
        .Q(data6[6]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[15] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_9),
        .Q(data6[7]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[18] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_4),
        .Q(data5[2]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[20] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_5),
        .Q(data5[4]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[22] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_6),
        .Q(data5[6]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[27] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_7),
        .Q(data4[3]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[29] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_8),
        .Q(data4[5]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[31] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_9),
        .Q(data4[7]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[37] 
       (.C(clk),
        .CE(display_buffer),
        .D(\display_buffer[37]_i_1_n_0 ),
        .Q(data3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[42] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_14),
        .Q(data2[2]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[43] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_10),
        .Q(data2[3]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[44] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_11),
        .Q(data2[4]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[45] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_12),
        .Q(data2[5]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[46] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_13),
        .Q(data2[6]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[50] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_14),
        .Q(data1[2]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[52] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_15),
        .Q(data1[4]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[54] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_16),
        .Q(data1[6]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[55] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_20),
        .Q(data1[7]),
        .S(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[59] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_17),
        .Q(data0[3]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[61] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_18),
        .Q(data0[5]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[62] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_19),
        .Q(data0[6]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[63] 
       (.C(clk),
        .CE(display_buffer),
        .D(cnt_dis_n_20),
        .Q(data0[7]),
        .R(\display_buffer[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[7] 
       (.C(clk),
        .CE(display_buffer),
        .D(\display_buffer[7]_i_1_n_0 ),
        .Q(\display_buffer_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBB88BF8FBB88B080)) 
    \scol[0]_i_1 
       (.I0(data4[7]),
        .I1(col_indx[2]),
        .I2(col_indx[1]),
        .I3(data0[7]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(scol[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[2]_i_2 
       (.I0(data2[2]),
        .I1(data1[2]),
        .I2(col_indx[1]),
        .I3(data0[6]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[2]_i_3 
       (.I0(data6[2]),
        .I1(data5[2]),
        .I2(col_indx[1]),
        .I3(data0[6]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[3]_i_2 
       (.I0(data2[3]),
        .I1(data1[7]),
        .I2(col_indx[1]),
        .I3(data0[3]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[3]_i_3 
       (.I0(data6[3]),
        .I1(data4[7]),
        .I2(col_indx[1]),
        .I3(data4[3]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[4]_i_2 
       (.I0(data2[4]),
        .I1(data1[4]),
        .I2(col_indx[1]),
        .I3(data0[6]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[4]_i_3 
       (.I0(data6[4]),
        .I1(data5[4]),
        .I2(col_indx[1]),
        .I3(data0[6]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[5]_i_2 
       (.I0(data2[5]),
        .I1(data1[7]),
        .I2(col_indx[1]),
        .I3(data0[5]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[5]_i_3 
       (.I0(data6[5]),
        .I1(data4[7]),
        .I2(col_indx[1]),
        .I3(data4[5]),
        .I4(col_indx[0]),
        .I5(data3),
        .O(\scol[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[6]_i_2 
       (.I0(data2[6]),
        .I1(data1[6]),
        .I2(col_indx[1]),
        .I3(data0[6]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[6]_i_3 
       (.I0(data6[6]),
        .I1(data5[6]),
        .I2(col_indx[1]),
        .I3(data0[6]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \scol[7]_i_2 
       (.I0(data1[7]),
        .I1(col_indx[1]),
        .I2(data0[7]),
        .I3(col_indx[0]),
        .I4(\display_buffer_reg_n_0_[7] ),
        .O(\scol[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \scol[7]_i_3 
       (.I0(data6[7]),
        .I1(col_indx[1]),
        .I2(data4[7]),
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
    \scol_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[2]),
        .Q(col[1]),
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
        .Q(col[2]),
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
        .Q(col[3]),
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
        .Q(col[4]),
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
        .Q(col[5]),
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
        .Q(col[6]),
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
  LUT2 #(
    .INIT(4'h1)) 
    \srow[7]_i_1 
       (.I0(cnt[0]),
        .I1(\srow[7]_i_2_n_0 ),
        .O(display_buffer));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \srow[7]_i_2 
       (.I0(\srow[7]_i_3_n_0 ),
        .I1(cnt[3]),
        .I2(cnt[4]),
        .I3(cnt[5]),
        .I4(cnt[6]),
        .I5(\srow[7]_i_4_n_0 ),
        .O(\srow[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \srow[7]_i_3 
       (.I0(cnt[8]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[9]),
        .O(\srow[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \srow[7]_i_4 
       (.I0(cnt[13]),
        .I1(cnt[14]),
        .I2(cnt[11]),
        .I3(cnt[12]),
        .I4(cnt[2]),
        .I5(cnt[1]),
        .O(\srow[7]_i_4_n_0 ));
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
       (.I0(time_from_start[4]),
        .I1(time_from_start[3]),
        .I2(\time_from_start[5]_i_4_n_0 ),
        .I3(time_from_start[5]),
        .I4(p_0_in),
        .I5(time_from_start[0]),
        .O(\time_from_start[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \time_from_start[1]_i_1 
       (.I0(time_from_start[0]),
        .I1(time_from_start[1]),
        .O(\time_from_start[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \time_from_start[2]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[2]),
        .O(\time_from_start[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \time_from_start[3]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[2]),
        .I2(time_from_start[0]),
        .I3(time_from_start[3]),
        .O(\time_from_start[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
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
       (.I0(time_from_start[5]),
        .I1(\time_from_start[5]_i_4_n_0 ),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(time_from_start[0]),
        .O(\time_from_start[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \time_from_start[5]_i_2 
       (.I0(p_0_in),
        .I1(time_from_start[5]),
        .I2(\time_from_start[5]_i_4_n_0 ),
        .I3(time_from_start[3]),
        .I4(time_from_start[4]),
        .I5(time_from_start[0]),
        .O(time_from_start_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \time_from_start[5]_i_3 
       (.I0(time_from_start[0]),
        .I1(time_from_start[4]),
        .I2(time_from_start[3]),
        .I3(time_from_start[2]),
        .I4(time_from_start[1]),
        .I5(time_from_start[5]),
        .O(\time_from_start[5]_i_3_n_0 ));
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
        .CE(time_from_start_0),
        .D(\time_from_start[1]_i_1_n_0 ),
        .Q(time_from_start[1]),
        .R(\time_from_start[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[2] 
       (.C(clk),
        .CE(time_from_start_0),
        .D(\time_from_start[2]_i_1_n_0 ),
        .Q(time_from_start[2]),
        .R(\time_from_start[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[3] 
       (.C(clk),
        .CE(time_from_start_0),
        .D(\time_from_start[3]_i_1_n_0 ),
        .Q(time_from_start[3]),
        .R(\time_from_start[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[4] 
       (.C(clk),
        .CE(time_from_start_0),
        .D(\time_from_start[4]_i_1_n_0 ),
        .Q(time_from_start[4]),
        .R(\time_from_start[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_from_start_reg[5] 
       (.C(clk),
        .CE(time_from_start_0),
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
