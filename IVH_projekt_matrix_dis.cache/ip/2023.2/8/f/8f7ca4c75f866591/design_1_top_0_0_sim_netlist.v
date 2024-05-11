// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat May 11 14:32:48 2024
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
   (carry,
    \bcd_value_reg[0]_0 ,
    bcd_value_reg,
    \bcd_value_reg[1]_0 ,
    clk,
    cnt_dis_enable);
  output carry;
  output \bcd_value_reg[0]_0 ;
  output [3:0]bcd_value_reg;
  output \bcd_value_reg[1]_0 ;
  input clk;
  input cnt_dis_enable;

  wire \bcd_value[0]_i_1_n_0 ;
  wire \bcd_value[1]_i_1_n_0 ;
  wire \bcd_value[2]_i_1_n_0 ;
  wire \bcd_value[3]_i_1_n_0 ;
  wire [3:0]bcd_value_reg;
  wire \bcd_value_reg[0]_0 ;
  wire \bcd_value_reg[1]_0 ;
  wire carry;
  wire carry_i_1_n_0;
  wire clk;
  wire cnt_dis_enable;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_value_reg[0] 
       (.C(clk),
        .CE(cnt_dis_enable),
        .D(\bcd_value[0]_i_1_n_0 ),
        .Q(bcd_value_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_value_reg[1] 
       (.C(clk),
        .CE(cnt_dis_enable),
        .D(\bcd_value[1]_i_1_n_0 ),
        .Q(bcd_value_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_value_reg[2] 
       (.C(clk),
        .CE(cnt_dis_enable),
        .D(\bcd_value[2]_i_1_n_0 ),
        .Q(bcd_value_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_value_reg[3] 
       (.C(clk),
        .CE(cnt_dis_enable),
        .D(\bcd_value[3]_i_1_n_0 ),
        .Q(bcd_value_reg[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    carry_i_1
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[3]),
        .I3(bcd_value_reg[0]),
        .I4(cnt_dis_enable),
        .I5(carry),
        .O(carry_i_1_n_0));
  FDRE carry_reg
       (.C(clk),
        .CE(1'b1),
        .D(carry_i_1_n_0),
        .Q(carry),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \first_value[5]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \first_value[6]_i_1 
       (.I0(bcd_value_reg[1]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0
   (\bcd_value_reg[0]_0 ,
    bcd_value_reg,
    \bcd_value_reg[1]_0 ,
    carry,
    clk);
  output \bcd_value_reg[0]_0 ;
  output [3:0]bcd_value_reg;
  output \bcd_value_reg[1]_0 ;
  input carry;
  input clk;

  wire \bcd_value[0]_i_1__0_n_0 ;
  wire \bcd_value[1]_i_1__0_n_0 ;
  wire \bcd_value[2]_i_1__0_n_0 ;
  wire \bcd_value[3]_i_1__0_n_0 ;
  wire [3:0]bcd_value_reg;
  wire \bcd_value_reg[0]_0 ;
  wire \bcd_value_reg[1]_0 ;
  wire carry;
  wire clk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bcd_value[0]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .O(\bcd_value[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \bcd_value[1]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bcd_value[2]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \bcd_value[3]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(\bcd_value[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_value_reg[0] 
       (.C(clk),
        .CE(carry),
        .D(\bcd_value[0]_i_1__0_n_0 ),
        .Q(bcd_value_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_value_reg[1] 
       (.C(clk),
        .CE(carry),
        .D(\bcd_value[1]_i_1__0_n_0 ),
        .Q(bcd_value_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_value_reg[2] 
       (.C(clk),
        .CE(carry),
        .D(\bcd_value[2]_i_1__0_n_0 ),
        .Q(bcd_value_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_value_reg[3] 
       (.C(clk),
        .CE(carry),
        .D(\bcd_value[3]_i_1__0_n_0 ),
        .Q(bcd_value_reg[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \second_value[5]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \second_value[6]_i_1 
       (.I0(bcd_value_reg[1]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[2]),
        .O(\bcd_value_reg[1]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim
   (D,
    clk,
    Q,
    cnt_dis_enable);
  output [6:0]D;
  input clk;
  input [2:0]Q;
  input cnt_dis_enable;

  wire [6:0]D;
  wire [2:0]Q;
  wire [3:0]bcd_value_reg;
  wire [3:0]bcd_value_reg_0;
  wire carry;
  wire clk;
  wire cnt1_n_1;
  wire cnt1_n_6;
  wire cnt2_n_0;
  wire cnt2_n_5;
  wire cnt_dis_enable;
  wire [7:2]data0;
  wire [6:4]data1;
  wire [6:3]data2;
  wire [7:7]data4;
  wire [7:2]data5;
  wire [6:4]data6;
  wire [23:3]first_value;
  wire \first_value[12]_i_1_n_0 ;
  wire \first_value[14]_i_1_n_0 ;
  wire \first_value[20]_i_1_n_0 ;
  wire \first_value[21]_i_1_n_0 ;
  wire \first_value[22]_i_1_n_0 ;
  wire \first_value[3]_i_1_n_0 ;
  wire [23:18]first_value_0;
  wire \scol[3]_i_2_n_0 ;
  wire \scol[3]_i_3_n_0 ;
  wire \scol[4]_i_2_n_0 ;
  wire \scol[4]_i_3_n_0 ;
  wire \scol[5]_i_2_n_0 ;
  wire \scol[5]_i_3_n_0 ;
  wire \scol[6]_i_2_n_0 ;
  wire \scol[6]_i_3_n_0 ;
  wire \screen_value_reg_n_0_[3] ;
  wire \screen_value_reg_n_0_[5] ;
  wire \screen_value_reg_n_0_[6] ;
  wire [23:3]second_value;
  wire \second_value[12]_i_1_n_0 ;
  wire \second_value[14]_i_1_n_0 ;
  wire \second_value[20]_i_1_n_0 ;
  wire \second_value[21]_i_1_n_0 ;
  wire \second_value[22]_i_1_n_0 ;
  wire \second_value[3]_i_1_n_0 ;
  wire [23:18]second_value_1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter cnt1
       (.bcd_value_reg(bcd_value_reg),
        .\bcd_value_reg[0]_0 (cnt1_n_1),
        .\bcd_value_reg[1]_0 (cnt1_n_6),
        .carry(carry),
        .clk(clk),
        .cnt_dis_enable(cnt_dis_enable));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 cnt2
       (.bcd_value_reg(bcd_value_reg_0),
        .\bcd_value_reg[0]_0 (cnt2_n_0),
        .\bcd_value_reg[1]_0 (cnt2_n_5),
        .carry(carry),
        .clk(clk));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \first_value[12]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(\first_value[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE5)) 
    \first_value[14]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\first_value[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBCFB)) 
    \first_value[18]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(first_value_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \first_value[19]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[0]),
        .O(first_value_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \first_value[20]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\first_value[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \first_value[21]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\first_value[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \first_value[22]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .O(\first_value[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \first_value[23]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .O(first_value_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \first_value[3]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(\first_value[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\first_value[12]_i_1_n_0 ),
        .Q(first_value[12]),
        .S(bcd_value_reg[3]));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\first_value[14]_i_1_n_0 ),
        .Q(first_value[14]),
        .S(bcd_value_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[18]),
        .Q(first_value[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[19]),
        .Q(first_value[19]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\first_value[20]_i_1_n_0 ),
        .Q(first_value[20]),
        .S(bcd_value_reg[3]));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\first_value[21]_i_1_n_0 ),
        .Q(first_value[21]),
        .S(bcd_value_reg[3]));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\first_value[22]_i_1_n_0 ),
        .Q(first_value[22]),
        .S(bcd_value_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[23]),
        .Q(first_value[23]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\first_value[3]_i_1_n_0 ),
        .Q(first_value[3]),
        .S(bcd_value_reg[3]));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt1_n_1),
        .Q(first_value[5]),
        .S(bcd_value_reg[3]));
  FDSE #(
    .INIT(1'b0)) 
    \first_value_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt1_n_6),
        .Q(first_value[6]),
        .S(bcd_value_reg[3]));
  LUT6 #(
    .INIT(64'hB8BBBB33B8888800)) 
    \scol[1]_i_1 
       (.I0(data5[7]),
        .I1(Q[2]),
        .I2(data4),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(data0[7]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hC0B8BB33C0B88800)) 
    \scol[2]_i_1 
       (.I0(data5[2]),
        .I1(Q[2]),
        .I2(data2[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(data0[2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \scol[3]_i_2 
       (.I0(data2[3]),
        .I1(Q[1]),
        .I2(data0[7]),
        .I3(Q[0]),
        .I4(data0[3]),
        .O(\scol[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \scol[3]_i_3 
       (.I0(\screen_value_reg_n_0_[3] ),
        .I1(data5[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(data5[3]),
        .O(\scol[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \scol[4]_i_2 
       (.I0(data2[4]),
        .I1(Q[1]),
        .I2(data1[4]),
        .I3(Q[0]),
        .I4(data0[4]),
        .O(\scol[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \scol[4]_i_3 
       (.I0(data2[4]),
        .I1(data6[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(data5[4]),
        .O(\scol[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \scol[5]_i_2 
       (.I0(data2[5]),
        .I1(Q[1]),
        .I2(data0[7]),
        .I3(Q[0]),
        .I4(data0[5]),
        .O(\scol[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \scol[5]_i_3 
       (.I0(\screen_value_reg_n_0_[5] ),
        .I1(data5[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(data5[5]),
        .O(\scol[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \scol[6]_i_2 
       (.I0(data2[6]),
        .I1(Q[1]),
        .I2(data1[6]),
        .I3(Q[0]),
        .I4(data0[6]),
        .O(\scol[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \scol[6]_i_3 
       (.I0(\screen_value_reg_n_0_[6] ),
        .I1(data6[6]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(data5[6]),
        .O(\scol[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFAFCFA0A0A0C0)) 
    \scol[7]_i_2 
       (.I0(data5[7]),
        .I1(data4),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(data0[7]),
        .O(D[6]));
  MUXF7 \scol_reg[3]_i_1 
       (.I0(\scol[3]_i_2_n_0 ),
        .I1(\scol[3]_i_3_n_0 ),
        .O(D[2]),
        .S(Q[2]));
  MUXF7 \scol_reg[4]_i_1 
       (.I0(\scol[4]_i_2_n_0 ),
        .I1(\scol[4]_i_3_n_0 ),
        .O(D[3]),
        .S(Q[2]));
  MUXF7 \scol_reg[5]_i_1 
       (.I0(\scol[5]_i_2_n_0 ),
        .I1(\scol[5]_i_3_n_0 ),
        .O(D[4]),
        .S(Q[2]));
  MUXF7 \scol_reg[6]_i_1 
       (.I0(\scol[6]_i_2_n_0 ),
        .I1(\scol[6]_i_3_n_0 ),
        .O(D[5]),
        .S(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[12]),
        .Q(data6[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[14]),
        .Q(data6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[18]),
        .Q(data5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[19]),
        .Q(data5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[20]),
        .Q(data5[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[21]),
        .Q(data5[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[22]),
        .Q(data5[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[23]),
        .Q(data5[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(data4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[3]),
        .Q(\screen_value_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[3]),
        .Q(data2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[4]),
        .Q(data2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[5]),
        .Q(data2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[6]),
        .Q(data2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[12]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[14]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[18]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[19]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[5]),
        .Q(\screen_value_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[20]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[21]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[22]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[23]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[6]),
        .Q(\screen_value_reg_n_0_[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \second_value[12]_i_1 
       (.I0(bcd_value_reg_0[0]),
        .I1(bcd_value_reg_0[2]),
        .I2(bcd_value_reg_0[1]),
        .O(\second_value[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE5)) 
    \second_value[14]_i_1 
       (.I0(bcd_value_reg_0[2]),
        .I1(bcd_value_reg_0[1]),
        .I2(bcd_value_reg_0[0]),
        .O(\second_value[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBCFB)) 
    \second_value[18]_i_1 
       (.I0(bcd_value_reg_0[3]),
        .I1(bcd_value_reg_0[2]),
        .I2(bcd_value_reg_0[1]),
        .I3(bcd_value_reg_0[0]),
        .O(second_value_1[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \second_value[19]_i_1 
       (.I0(bcd_value_reg_0[3]),
        .I1(bcd_value_reg_0[1]),
        .I2(bcd_value_reg_0[2]),
        .I3(bcd_value_reg_0[0]),
        .O(second_value_1[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \second_value[20]_i_1 
       (.I0(bcd_value_reg_0[2]),
        .I1(bcd_value_reg_0[1]),
        .I2(bcd_value_reg_0[0]),
        .O(\second_value[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \second_value[21]_i_1 
       (.I0(bcd_value_reg_0[2]),
        .I1(bcd_value_reg_0[1]),
        .I2(bcd_value_reg_0[0]),
        .O(\second_value[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \second_value[22]_i_1 
       (.I0(bcd_value_reg_0[2]),
        .I1(bcd_value_reg_0[0]),
        .I2(bcd_value_reg_0[1]),
        .O(\second_value[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \second_value[23]_i_1 
       (.I0(bcd_value_reg_0[3]),
        .I1(bcd_value_reg_0[2]),
        .I2(bcd_value_reg_0[1]),
        .O(second_value_1[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \second_value[3]_i_1 
       (.I0(bcd_value_reg_0[2]),
        .I1(bcd_value_reg_0[1]),
        .I2(bcd_value_reg_0[0]),
        .O(\second_value[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\second_value[12]_i_1_n_0 ),
        .Q(second_value[12]),
        .S(bcd_value_reg_0[3]));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\second_value[14]_i_1_n_0 ),
        .Q(second_value[14]),
        .S(bcd_value_reg_0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[18]),
        .Q(second_value[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[19]),
        .Q(second_value[19]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\second_value[20]_i_1_n_0 ),
        .Q(second_value[20]),
        .S(bcd_value_reg_0[3]));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\second_value[21]_i_1_n_0 ),
        .Q(second_value[21]),
        .S(bcd_value_reg_0[3]));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\second_value[22]_i_1_n_0 ),
        .Q(second_value[22]),
        .S(bcd_value_reg_0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[23]),
        .Q(second_value[23]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\second_value[3]_i_1_n_0 ),
        .Q(second_value[3]),
        .S(bcd_value_reg_0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(second_value[4]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt2_n_0),
        .Q(second_value[5]),
        .S(bcd_value_reg_0[3]));
  FDSE #(
    .INIT(1'b0)) 
    \second_value_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt2_n_5),
        .Q(second_value[6]),
        .S(bcd_value_reg_0[3]));
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
  wire [7:0]\^col ;
  wire [7:0]row;

  assign col[7:2] = \^col [7:2];
  assign col[1] = \^col [0];
  assign col[0] = \^col [0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top U0
       (.clk(clk),
        .col({\^col [7:2],\^col [0]}),
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
  wire [0:0]cnt_0;
  wire cnt_dis_enable;
  wire cnt_dis_n_0;
  wire cnt_dis_n_1;
  wire cnt_dis_n_2;
  wire cnt_dis_n_3;
  wire cnt_dis_n_4;
  wire cnt_dis_n_5;
  wire cnt_dis_n_6;
  wire [6:0]col;
  wire [2:0]col_indx;
  wire \col_indx[0]_i_1_n_0 ;
  wire \col_indx[1]_i_1_n_0 ;
  wire \col_indx[2]_i_1_n_0 ;
  wire [17:0]p_1_in;
  wire [7:0]row;
  wire \scol[7]_i_1_n_0 ;
  wire \scol[7]_i_3_n_0 ;
  wire \scol[7]_i_4_n_0 ;
  wire \scol[7]_i_5_n_0 ;
  wire [17:0]sec_cnt;
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
  wire sec_cnt0_carry_n_0;
  wire sec_cnt0_carry_n_1;
  wire sec_cnt0_carry_n_2;
  wire sec_cnt0_carry_n_3;
  wire \sec_cnt[17]_i_1_n_0 ;
  wire \sec_cnt[17]_i_2_n_0 ;
  wire \sec_cnt[17]_i_3_n_0 ;
  wire \sec_cnt[17]_i_4_n_0 ;
  wire \sec_cnt[17]_i_5_n_0 ;
  wire [3:1]NLW_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_sec_cnt0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sec_cnt0_carry__3_O_UNCONNECTED;

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
  LUT4 #(
    .INIT(16'h00FE)) 
    \cnt[0]_i_1 
       (.I0(\scol[7]_i_3_n_0 ),
        .I1(\scol[7]_i_4_n_0 ),
        .I2(\scol[7]_i_5_n_0 ),
        .I3(cnt[0]),
        .O(cnt_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim cnt_dis
       (.D({cnt_dis_n_0,cnt_dis_n_1,cnt_dis_n_2,cnt_dis_n_3,cnt_dis_n_4,cnt_dis_n_5,cnt_dis_n_6}),
        .Q(col_indx),
        .clk(clk),
        .cnt_dis_enable(cnt_dis_enable));
  FDRE #(
    .INIT(1'b0)) 
    cnt_dis_enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(\sec_cnt[17]_i_1_n_0 ),
        .Q(cnt_dis_enable),
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
        .D(cnt0_carry__1_n_6),
        .Q(cnt[10]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_5),
        .Q(cnt[11]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_4),
        .Q(cnt[12]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_7),
        .Q(cnt[13]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_6),
        .Q(cnt[14]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_7),
        .Q(cnt[1]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_6),
        .Q(cnt[2]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_5),
        .Q(cnt[3]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_4),
        .Q(cnt[4]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_7),
        .Q(cnt[5]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_6),
        .Q(cnt[6]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_5),
        .Q(cnt[7]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_4),
        .Q(cnt[8]),
        .R(\scol[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_7),
        .Q(cnt[9]),
        .R(\scol[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \col_indx[0]_i_1 
       (.I0(col_indx[0]),
        .O(\col_indx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \col_indx[1]_i_1 
       (.I0(col_indx[0]),
        .I1(col_indx[1]),
        .O(\col_indx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  LUT4 #(
    .INIT(16'h0001)) 
    \scol[7]_i_1 
       (.I0(\scol[7]_i_3_n_0 ),
        .I1(\scol[7]_i_4_n_0 ),
        .I2(\scol[7]_i_5_n_0 ),
        .I3(cnt[0]),
        .O(\scol[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \scol[7]_i_3 
       (.I0(cnt[13]),
        .I1(cnt[14]),
        .I2(cnt[11]),
        .I3(cnt[12]),
        .I4(cnt[2]),
        .I5(cnt[1]),
        .O(\scol[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \scol[7]_i_4 
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .I2(cnt[5]),
        .I3(cnt[6]),
        .O(\scol[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \scol[7]_i_5 
       (.I0(cnt[8]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[9]),
        .O(\scol[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[1] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_6),
        .Q(col[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[2] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_5),
        .Q(col[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[3] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_4),
        .Q(col[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[4] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_3),
        .Q(col[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[5] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_2),
        .Q(col[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[6] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_1),
        .Q(col[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[7] 
       (.C(clk),
        .CE(\scol[7]_i_1_n_0 ),
        .D(cnt_dis_n_0),
        .Q(col[6]),
        .R(1'b0));
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
        .CO(NLW_sec_cnt0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sec_cnt0_carry__3_O_UNCONNECTED[3:1],p_1_in[17]}),
        .S({1'b0,1'b0,1'b0,sec_cnt[17]}));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sec_cnt[0]_i_1 
       (.I0(sec_cnt[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'h0002)) 
    \sec_cnt[17]_i_1 
       (.I0(\sec_cnt[17]_i_2_n_0 ),
        .I1(\sec_cnt[17]_i_3_n_0 ),
        .I2(\sec_cnt[17]_i_4_n_0 ),
        .I3(\sec_cnt[17]_i_5_n_0 ),
        .O(\sec_cnt[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \sec_cnt[17]_i_2 
       (.I0(sec_cnt[4]),
        .I1(sec_cnt[1]),
        .I2(sec_cnt[8]),
        .I3(sec_cnt[6]),
        .I4(sec_cnt[11]),
        .I5(sec_cnt[12]),
        .O(\sec_cnt[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \sec_cnt[17]_i_3 
       (.I0(sec_cnt[2]),
        .I1(sec_cnt[15]),
        .I2(sec_cnt[0]),
        .I3(sec_cnt[10]),
        .O(\sec_cnt[17]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \sec_cnt[17]_i_4 
       (.I0(sec_cnt[14]),
        .I1(sec_cnt[5]),
        .I2(sec_cnt[3]),
        .I3(sec_cnt[7]),
        .O(\sec_cnt[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \sec_cnt[17]_i_5 
       (.I0(sec_cnt[17]),
        .I1(sec_cnt[9]),
        .I2(sec_cnt[16]),
        .I3(sec_cnt[13]),
        .O(\sec_cnt[17]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(sec_cnt[0]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(sec_cnt[10]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(sec_cnt[11]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(sec_cnt[12]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(sec_cnt[13]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(sec_cnt[14]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(sec_cnt[15]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(sec_cnt[16]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(sec_cnt[17]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(sec_cnt[1]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(sec_cnt[2]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(sec_cnt[3]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(sec_cnt[4]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(sec_cnt[5]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(sec_cnt[6]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(sec_cnt[7]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(sec_cnt[8]),
        .R(\sec_cnt[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(sec_cnt[9]),
        .R(\sec_cnt[17]_i_1_n_0 ));
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
