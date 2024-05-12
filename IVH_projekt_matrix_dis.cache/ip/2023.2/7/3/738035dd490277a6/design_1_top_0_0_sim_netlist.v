// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun May 12 20:12:53 2024
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
    D,
    clk,
    \bcd_value_reg[0]_0 ,
    AR);
  output [0:0]E;
  output [9:0]D;
  input clk;
  input [0:0]\bcd_value_reg[0]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]D;
  wire [0:0]E;
  wire [3:0]bcd_value_reg;
  wire [0:0]\bcd_value_reg[0]_0 ;
  wire carry_i_1_n_0;
  wire \change_digit[0]_i_1_n_0 ;
  wire \change_digit[1]_i_1_n_0 ;
  wire \change_digit[1]_i_2_n_0 ;
  wire \change_digit_reg_n_0_[0] ;
  wire \change_digit_reg_n_0_[1] ;
  wire clk;
  wire [3:0]p_0_in__0;

  LUT1 #(
    .INIT(2'h1)) 
    \bcd_value[0]_i_1 
       (.I0(bcd_value_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \bcd_value[1]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bcd_value[2]_i_1 
       (.I0(bcd_value_reg[1]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h78D0)) 
    \bcd_value[3]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[3]),
        .I3(bcd_value_reg[2]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[0] 
       (.C(clk),
        .CE(\bcd_value_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0[0]),
        .Q(bcd_value_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[1] 
       (.C(clk),
        .CE(\bcd_value_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(bcd_value_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[2] 
       (.C(clk),
        .CE(\bcd_value_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(bcd_value_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[3] 
       (.C(clk),
        .CE(\bcd_value_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(bcd_value_reg[3]));
  LUT3 #(
    .INIT(8'hD8)) 
    carry_i_1
       (.I0(\change_digit_reg_n_0_[1] ),
        .I1(\change_digit_reg_n_0_[0] ),
        .I2(E),
        .O(carry_i_1_n_0));
  FDRE carry_reg
       (.C(clk),
        .CE(1'b1),
        .D(carry_i_1_n_0),
        .Q(E),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000010FF00001000)) 
    \change_digit[0]_i_1 
       (.I0(\change_digit[1]_i_2_n_0 ),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[3]),
        .I3(\bcd_value_reg[0]_0 ),
        .I4(\change_digit_reg_n_0_[1] ),
        .I5(\change_digit_reg_n_0_[0] ),
        .O(\change_digit[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100010FF1000)) 
    \change_digit[1]_i_1 
       (.I0(\change_digit[1]_i_2_n_0 ),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[3]),
        .I3(\bcd_value_reg[0]_0 ),
        .I4(\change_digit_reg_n_0_[1] ),
        .I5(\change_digit_reg_n_0_[0] ),
        .O(\change_digit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \change_digit[1]_i_2 
       (.I0(bcd_value_reg[1]),
        .I1(bcd_value_reg[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBECF)) 
    \first_value[10]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .I3(bcd_value_reg[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hBEFE)) 
    \first_value[12]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFEEF)) 
    \first_value[14]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[0]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \first_value[19]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFBBF)) 
    \first_value[21]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \first_value[23]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[3]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDCD5)) 
    \first_value[3]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF7D)) 
    \first_value[4]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAEEF)) 
    \first_value[5]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[0]),
        .I3(bcd_value_reg[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \first_value[6]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[0]),
        .I3(bcd_value_reg[1]),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0
   (D,
    E,
    clk,
    AR);
  output [9:0]D;
  input [0:0]E;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]D;
  wire [0:0]E;
  wire [3:0]bcd_value_reg;
  wire clk;
  wire [3:0]p_0_in__1;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bcd_value[0]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0FD0)) 
    \bcd_value[1]_i_1__0 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[0]),
        .I3(bcd_value_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bcd_value[2]_i_1__0 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \bcd_value[3]_i_1__0 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[1]),
        .O(p_0_in__1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[0]),
        .Q(bcd_value_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(bcd_value_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(bcd_value_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bcd_value_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(bcd_value_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFD79)) 
    \second_value[10]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBFFA)) 
    \second_value[12]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFEEF)) 
    \second_value[14]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[0]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \second_value[19]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFDDF)) 
    \second_value[21]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \second_value[23]_i_1 
       (.I0(bcd_value_reg[2]),
        .I1(bcd_value_reg[1]),
        .I2(bcd_value_reg[3]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDCD5)) 
    \second_value[3]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[1]),
        .I3(bcd_value_reg[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFF6F)) 
    \second_value[4]_i_1 
       (.I0(bcd_value_reg[1]),
        .I1(bcd_value_reg[2]),
        .I2(bcd_value_reg[0]),
        .I3(bcd_value_reg[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBAFB)) 
    \second_value[5]_i_1 
       (.I0(bcd_value_reg[3]),
        .I1(bcd_value_reg[0]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \second_value[6]_i_1 
       (.I0(bcd_value_reg[0]),
        .I1(bcd_value_reg[3]),
        .I2(bcd_value_reg[2]),
        .I3(bcd_value_reg[1]),
        .O(D[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim
   (\screen_value_reg[63]_0 ,
    Q,
    \screen_value_reg[62]_0 ,
    \screen_value_reg[31]_0 ,
    clk,
    \display_buffer_reg[63] ,
    display_buffer1,
    \display_buffer_reg[63]_0 ,
    E,
    AR);
  output \screen_value_reg[63]_0 ;
  output [17:0]Q;
  output \screen_value_reg[62]_0 ;
  output \screen_value_reg[31]_0 ;
  input clk;
  input \display_buffer_reg[63] ;
  input display_buffer1;
  input \display_buffer_reg[63]_0 ;
  input [0:0]E;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [17:0]Q;
  wire clk;
  wire display_buffer1;
  wire \display_buffer_reg[63] ;
  wire \display_buffer_reg[63]_0 ;
  wire en_2nd_ctr;
  wire [23:3]first_value;
  wire [23:3]first_value_0;
  wire [63:31]screen_value;
  wire \screen_value_reg[31]_0 ;
  wire \screen_value_reg[62]_0 ;
  wire \screen_value_reg[63]_0 ;
  wire [23:3]second_value;
  wire [23:3]second_value_1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter cnt1
       (.AR(AR),
        .D({first_value_0[23],first_value_0[21],first_value_0[19],first_value_0[14],first_value_0[12],first_value_0[10],first_value_0[6:3]}),
        .E(en_2nd_ctr),
        .\bcd_value_reg[0]_0 (E),
        .clk(clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 cnt2
       (.AR(AR),
        .D({second_value_1[23],second_value_1[21],second_value_1[19],second_value_1[14],second_value_1[12],second_value_1[10],second_value_1[6:3]}),
        .E(en_2nd_ctr),
        .clk(clk));
  LUT4 #(
    .INIT(16'h0014)) 
    \display_buffer[31]_i_1 
       (.I0(\display_buffer_reg[63] ),
        .I1(display_buffer1),
        .I2(screen_value[31]),
        .I3(\display_buffer_reg[63]_0 ),
        .O(\screen_value_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \display_buffer[62]_i_1 
       (.I0(\display_buffer_reg[63] ),
        .I1(display_buffer1),
        .I2(screen_value[62]),
        .I3(\display_buffer_reg[63]_0 ),
        .O(\screen_value_reg[62]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \display_buffer[63]_i_1 
       (.I0(\display_buffer_reg[63] ),
        .I1(display_buffer1),
        .I2(screen_value[63]),
        .I3(\display_buffer_reg[63]_0 ),
        .O(\screen_value_reg[63]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[10]),
        .Q(first_value[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[12]),
        .Q(first_value[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[14]),
        .Q(first_value[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[19]),
        .Q(first_value[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[21]),
        .Q(first_value[21]),
        .R(1'b0));
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
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[4]),
        .Q(first_value[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[5]),
        .Q(first_value[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_value_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value_0[6]),
        .Q(first_value[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[3]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[4]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[5]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[6]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[10]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[12]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[14]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[19]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value[21]),
        .Q(Q[8]),
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
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[4]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[5]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[6]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[10]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[12]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[14]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[19]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(first_value[21]),
        .Q(Q[17]),
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
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[12]),
        .Q(second_value[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[14]),
        .Q(second_value[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[19]),
        .Q(second_value[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[21]),
        .Q(second_value[21]),
        .R(1'b0));
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
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[4]),
        .Q(second_value[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[5]),
        .Q(second_value[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(second_value_1[6]),
        .Q(second_value[6]),
        .R(1'b0));
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
   (\time_from_start_reg[2] ,
    \time_from_start_reg[2]_0 ,
    \time_from_start_reg[2]_1 ,
    \time_from_start_reg[2]_2 ,
    \time_from_start_reg[2]_3 ,
    \time_from_start_reg[2]_4 ,
    \time_from_start_reg[2]_5 ,
    \time_from_start_reg[2]_6 ,
    \time_from_start_reg[2]_7 ,
    \time_from_start_reg[2]_8 ,
    \time_from_start_reg[2]_9 ,
    \time_from_start_reg[2]_10 ,
    \time_from_start_reg[2]_11 ,
    \time_from_start_reg[2]_12 ,
    \time_from_start_reg[2]_13 ,
    \time_from_start_reg[2]_14 ,
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
    \time_from_start_reg[4]_10 ,
    \time_from_start_reg[4]_11 ,
    \time_from_start_reg[4]_12 ,
    \time_from_start_reg[4]_13 ,
    \time_from_start_reg[4]_14 ,
    \time_from_start_reg[4]_15 ,
    \time_from_start_reg[4]_16 ,
    \time_from_start_reg[4]_17 ,
    \time_from_start_reg[4]_18 ,
    \time_from_start_reg[4]_19 ,
    \time_from_start_reg[4]_20 ,
    \time_from_start_reg[4]_21 ,
    \time_from_start_reg[4]_22 ,
    \time_from_start_reg[4]_23 ,
    \time_from_start_reg[4]_24 ,
    \time_from_start_reg[4]_25 ,
    \time_from_start_reg[4]_26 ,
    anim_mode,
    E,
    time_from_start,
    \display_buffer_reg[11] ,
    display_buffer1,
    Q,
    clk);
  output \time_from_start_reg[2] ;
  output \time_from_start_reg[2]_0 ;
  output \time_from_start_reg[2]_1 ;
  output \time_from_start_reg[2]_2 ;
  output \time_from_start_reg[2]_3 ;
  output \time_from_start_reg[2]_4 ;
  output \time_from_start_reg[2]_5 ;
  output \time_from_start_reg[2]_6 ;
  output \time_from_start_reg[2]_7 ;
  output \time_from_start_reg[2]_8 ;
  output \time_from_start_reg[2]_9 ;
  output \time_from_start_reg[2]_10 ;
  output \time_from_start_reg[2]_11 ;
  output \time_from_start_reg[2]_12 ;
  output \time_from_start_reg[2]_13 ;
  output \time_from_start_reg[2]_14 ;
  output [19:0]D;
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
  output \time_from_start_reg[4]_10 ;
  output \time_from_start_reg[4]_11 ;
  output \time_from_start_reg[4]_12 ;
  output \time_from_start_reg[4]_13 ;
  output \time_from_start_reg[4]_14 ;
  output \time_from_start_reg[4]_15 ;
  output \time_from_start_reg[4]_16 ;
  output \time_from_start_reg[4]_17 ;
  output \time_from_start_reg[4]_18 ;
  output \time_from_start_reg[4]_19 ;
  output \time_from_start_reg[4]_20 ;
  output \time_from_start_reg[4]_21 ;
  output \time_from_start_reg[4]_22 ;
  output \time_from_start_reg[4]_23 ;
  output \time_from_start_reg[4]_24 ;
  output \time_from_start_reg[4]_25 ;
  output \time_from_start_reg[4]_26 ;
  input anim_mode;
  input [0:0]E;
  input [4:0]time_from_start;
  input \display_buffer_reg[11] ;
  input display_buffer1;
  input [17:0]Q;
  input clk;

  wire [19:0]D;
  wire [0:0]E;
  wire [17:0]Q;
  wire [63:0]VUT_LOGO;
  wire \VUT_LOGO[0]_i_1_n_0 ;
  wire \VUT_LOGO[10]_i_1_n_0 ;
  wire \VUT_LOGO[11]_i_1_n_0 ;
  wire \VUT_LOGO[12]_i_1_n_0 ;
  wire \VUT_LOGO[13]_i_1_n_0 ;
  wire \VUT_LOGO[14]_i_1_n_0 ;
  wire \VUT_LOGO[15]_i_1_n_0 ;
  wire \VUT_LOGO[16]_i_1_n_0 ;
  wire \VUT_LOGO[17]_i_1_n_0 ;
  wire \VUT_LOGO[18]_i_1_n_0 ;
  wire \VUT_LOGO[19]_i_1_n_0 ;
  wire \VUT_LOGO[1]_i_1_n_0 ;
  wire \VUT_LOGO[20]_i_1_n_0 ;
  wire \VUT_LOGO[21]_i_1_n_0 ;
  wire \VUT_LOGO[22]_i_1_n_0 ;
  wire \VUT_LOGO[23]_i_1_n_0 ;
  wire \VUT_LOGO[24]_i_1_n_0 ;
  wire \VUT_LOGO[25]_i_1_n_0 ;
  wire \VUT_LOGO[26]_i_1_n_0 ;
  wire \VUT_LOGO[27]_i_1_n_0 ;
  wire \VUT_LOGO[28]_i_1_n_0 ;
  wire \VUT_LOGO[29]_i_1_n_0 ;
  wire \VUT_LOGO[2]_i_1_n_0 ;
  wire \VUT_LOGO[30]_i_1_n_0 ;
  wire \VUT_LOGO[31]_i_1_n_0 ;
  wire \VUT_LOGO[32]_i_1_n_0 ;
  wire \VUT_LOGO[33]_i_1_n_0 ;
  wire \VUT_LOGO[34]_i_1_n_0 ;
  wire \VUT_LOGO[35]_i_1_n_0 ;
  wire \VUT_LOGO[36]_i_1_n_0 ;
  wire \VUT_LOGO[37]_i_1_n_0 ;
  wire \VUT_LOGO[38]_i_1_n_0 ;
  wire \VUT_LOGO[39]_i_1_n_0 ;
  wire \VUT_LOGO[3]_i_1_n_0 ;
  wire \VUT_LOGO[40]_i_1_n_0 ;
  wire \VUT_LOGO[41]_i_1_n_0 ;
  wire \VUT_LOGO[42]_i_1_n_0 ;
  wire \VUT_LOGO[43]_i_1_n_0 ;
  wire \VUT_LOGO[44]_i_1_n_0 ;
  wire \VUT_LOGO[45]_i_1_n_0 ;
  wire \VUT_LOGO[46]_i_1_n_0 ;
  wire \VUT_LOGO[47]_i_1_n_0 ;
  wire \VUT_LOGO[48]_i_1_n_0 ;
  wire \VUT_LOGO[49]_i_1_n_0 ;
  wire \VUT_LOGO[4]_i_1_n_0 ;
  wire \VUT_LOGO[50]_i_1_n_0 ;
  wire \VUT_LOGO[51]_i_1_n_0 ;
  wire \VUT_LOGO[52]_i_1_n_0 ;
  wire \VUT_LOGO[53]_i_1_n_0 ;
  wire \VUT_LOGO[54]_i_1_n_0 ;
  wire \VUT_LOGO[55]_i_1_n_0 ;
  wire \VUT_LOGO[56]_i_1_n_0 ;
  wire \VUT_LOGO[57]_i_1_n_0 ;
  wire \VUT_LOGO[58]_i_1_n_0 ;
  wire \VUT_LOGO[59]_i_1_n_0 ;
  wire \VUT_LOGO[5]_i_1_n_0 ;
  wire \VUT_LOGO[60]_i_1_n_0 ;
  wire \VUT_LOGO[61]_i_1_n_0 ;
  wire \VUT_LOGO[61]_i_2_n_0 ;
  wire \VUT_LOGO[61]_i_3_n_0 ;
  wire \VUT_LOGO[62]_i_1_n_0 ;
  wire \VUT_LOGO[62]_i_2_n_0 ;
  wire \VUT_LOGO[62]_i_3_n_0 ;
  wire \VUT_LOGO[63]_i_1_n_0 ;
  wire \VUT_LOGO[63]_i_2_n_0 ;
  wire \VUT_LOGO[63]_i_3_n_0 ;
  wire \VUT_LOGO[63]_i_4_n_0 ;
  wire \VUT_LOGO[6]_i_1_n_0 ;
  wire \VUT_LOGO[7]_i_1_n_0 ;
  wire \VUT_LOGO[8]_i_1_n_0 ;
  wire \VUT_LOGO[9]_i_1_n_0 ;
  wire anim_mode;
  wire clear;
  wire clk;
  wire display_buffer1;
  wire \display_buffer_reg[11] ;
  wire \frame_num[0]_i_1_n_0 ;
  wire [4:0]frame_num_reg;
  wire [4:1]p_0_in__2;
  wire [63:0]screen_buffer;
  wire [4:0]time_from_start;
  wire \time_from_start_reg[2] ;
  wire \time_from_start_reg[2]_0 ;
  wire \time_from_start_reg[2]_1 ;
  wire \time_from_start_reg[2]_10 ;
  wire \time_from_start_reg[2]_11 ;
  wire \time_from_start_reg[2]_12 ;
  wire \time_from_start_reg[2]_13 ;
  wire \time_from_start_reg[2]_14 ;
  wire \time_from_start_reg[2]_2 ;
  wire \time_from_start_reg[2]_3 ;
  wire \time_from_start_reg[2]_4 ;
  wire \time_from_start_reg[2]_5 ;
  wire \time_from_start_reg[2]_6 ;
  wire \time_from_start_reg[2]_7 ;
  wire \time_from_start_reg[2]_8 ;
  wire \time_from_start_reg[2]_9 ;
  wire \time_from_start_reg[4] ;
  wire \time_from_start_reg[4]_0 ;
  wire \time_from_start_reg[4]_1 ;
  wire \time_from_start_reg[4]_10 ;
  wire \time_from_start_reg[4]_11 ;
  wire \time_from_start_reg[4]_12 ;
  wire \time_from_start_reg[4]_13 ;
  wire \time_from_start_reg[4]_14 ;
  wire \time_from_start_reg[4]_15 ;
  wire \time_from_start_reg[4]_16 ;
  wire \time_from_start_reg[4]_17 ;
  wire \time_from_start_reg[4]_18 ;
  wire \time_from_start_reg[4]_19 ;
  wire \time_from_start_reg[4]_2 ;
  wire \time_from_start_reg[4]_20 ;
  wire \time_from_start_reg[4]_21 ;
  wire \time_from_start_reg[4]_22 ;
  wire \time_from_start_reg[4]_23 ;
  wire \time_from_start_reg[4]_24 ;
  wire \time_from_start_reg[4]_25 ;
  wire \time_from_start_reg[4]_26 ;
  wire \time_from_start_reg[4]_3 ;
  wire \time_from_start_reg[4]_4 ;
  wire \time_from_start_reg[4]_5 ;
  wire \time_from_start_reg[4]_6 ;
  wire \time_from_start_reg[4]_7 ;
  wire \time_from_start_reg[4]_8 ;
  wire \time_from_start_reg[4]_9 ;

  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[0]_i_1 
       (.I0(VUT_LOGO[0]),
        .O(\VUT_LOGO[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[10]_i_1 
       (.I0(VUT_LOGO[10]),
        .O(\VUT_LOGO[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[11]_i_1 
       (.I0(VUT_LOGO[11]),
        .O(\VUT_LOGO[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[12]_i_1 
       (.I0(VUT_LOGO[12]),
        .O(\VUT_LOGO[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[13]_i_1 
       (.I0(VUT_LOGO[13]),
        .O(\VUT_LOGO[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80400000)) 
    \VUT_LOGO[14]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[14]),
        .O(\VUT_LOGO[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80400000)) 
    \VUT_LOGO[15]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[15]),
        .O(\VUT_LOGO[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[16]_i_1 
       (.I0(VUT_LOGO[16]),
        .O(\VUT_LOGO[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[17]_i_1 
       (.I0(VUT_LOGO[17]),
        .O(\VUT_LOGO[17]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[18]_i_1 
       (.I0(VUT_LOGO[18]),
        .O(\VUT_LOGO[18]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[19]_i_1 
       (.I0(VUT_LOGO[19]),
        .O(\VUT_LOGO[19]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[1]_i_1 
       (.I0(VUT_LOGO[1]),
        .O(\VUT_LOGO[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[20]_i_1 
       (.I0(VUT_LOGO[20]),
        .O(\VUT_LOGO[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[21]_i_1 
       (.I0(VUT_LOGO[21]),
        .O(\VUT_LOGO[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF84000000)) 
    \VUT_LOGO[22]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[22]),
        .O(\VUT_LOGO[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF84000000)) 
    \VUT_LOGO[23]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[23]),
        .O(\VUT_LOGO[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80040000)) 
    \VUT_LOGO[24]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[24]),
        .O(\VUT_LOGO[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80020000)) 
    \VUT_LOGO[25]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[25]),
        .O(\VUT_LOGO[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF90000000)) 
    \VUT_LOGO[26]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[26]),
        .O(\VUT_LOGO[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80100000)) 
    \VUT_LOGO[27]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[27]),
        .O(\VUT_LOGO[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80200000)) 
    \VUT_LOGO[28]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[28]),
        .O(\VUT_LOGO[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[29]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(VUT_LOGO[29]),
        .O(\VUT_LOGO[29]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[2]_i_1 
       (.I0(VUT_LOGO[2]),
        .O(\VUT_LOGO[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[30]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(VUT_LOGO[30]),
        .O(\VUT_LOGO[30]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[31]_i_1 
       (.I0(VUT_LOGO[31]),
        .O(\VUT_LOGO[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80040000)) 
    \VUT_LOGO[32]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[32]),
        .O(\VUT_LOGO[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80020000)) 
    \VUT_LOGO[33]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[33]),
        .O(\VUT_LOGO[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF90000000)) 
    \VUT_LOGO[34]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[34]),
        .O(\VUT_LOGO[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80100000)) 
    \VUT_LOGO[35]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[35]),
        .O(\VUT_LOGO[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF80200000)) 
    \VUT_LOGO[36]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[36]),
        .O(\VUT_LOGO[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[37]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(VUT_LOGO[37]),
        .O(\VUT_LOGO[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[38]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(VUT_LOGO[38]),
        .O(\VUT_LOGO[38]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[39]_i_1 
       (.I0(VUT_LOGO[39]),
        .O(\VUT_LOGO[39]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[3]_i_1 
       (.I0(VUT_LOGO[3]),
        .O(\VUT_LOGO[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FF6FFFF80040000)) 
    \VUT_LOGO[40]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[40]),
        .O(\VUT_LOGO[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFDD80020000)) 
    \VUT_LOGO[41]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[0]),
        .I4(frame_num_reg[1]),
        .I5(VUT_LOGO[41]),
        .O(\VUT_LOGO[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFFFFD80000080)) 
    \VUT_LOGO[42]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[3]),
        .I4(frame_num_reg[2]),
        .I5(VUT_LOGO[42]),
        .O(\VUT_LOGO[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFFFFD80000020)) 
    \VUT_LOGO[43]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[0]),
        .I4(frame_num_reg[1]),
        .I5(VUT_LOGO[43]),
        .O(\VUT_LOGO[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFD80002000)) 
    \VUT_LOGO[44]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[2]),
        .I4(frame_num_reg[3]),
        .I5(VUT_LOGO[44]),
        .O(\VUT_LOGO[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[45]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(VUT_LOGO[45]),
        .O(\VUT_LOGO[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[46]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(VUT_LOGO[46]),
        .O(\VUT_LOGO[46]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[47]_i_1 
       (.I0(VUT_LOGO[47]),
        .O(\VUT_LOGO[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FF6FFFF80040000)) 
    \VUT_LOGO[48]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[48]),
        .O(\VUT_LOGO[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFDD80020000)) 
    \VUT_LOGO[49]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[0]),
        .I4(frame_num_reg[1]),
        .I5(VUT_LOGO[49]),
        .O(\VUT_LOGO[49]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[4]_i_1 
       (.I0(VUT_LOGO[4]),
        .O(\VUT_LOGO[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFFFFD80000080)) 
    \VUT_LOGO[50]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[3]),
        .I4(frame_num_reg[2]),
        .I5(VUT_LOGO[50]),
        .O(\VUT_LOGO[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFFFFD80000020)) 
    \VUT_LOGO[51]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[0]),
        .I4(frame_num_reg[1]),
        .I5(VUT_LOGO[51]),
        .O(\VUT_LOGO[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFD80002000)) 
    \VUT_LOGO[52]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[2]),
        .I4(frame_num_reg[3]),
        .I5(VUT_LOGO[52]),
        .O(\VUT_LOGO[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[53]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(VUT_LOGO[53]),
        .O(\VUT_LOGO[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[54]_i_1 
       (.I0(frame_num_reg[2]),
        .I1(VUT_LOGO[54]),
        .O(\VUT_LOGO[54]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[55]_i_1 
       (.I0(VUT_LOGO[55]),
        .O(\VUT_LOGO[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FF6FFFF80040000)) 
    \VUT_LOGO[56]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[56]),
        .O(\VUT_LOGO[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFDD80020000)) 
    \VUT_LOGO[57]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[0]),
        .I4(frame_num_reg[1]),
        .I5(VUT_LOGO[57]),
        .O(\VUT_LOGO[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFFFFD80000080)) 
    \VUT_LOGO[58]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[3]),
        .I4(frame_num_reg[2]),
        .I5(VUT_LOGO[58]),
        .O(\VUT_LOGO[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FDFFFFD80000020)) 
    \VUT_LOGO[59]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[0]),
        .I4(frame_num_reg[1]),
        .I5(VUT_LOGO[59]),
        .O(\VUT_LOGO[59]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[5]_i_1 
       (.I0(VUT_LOGO[5]),
        .O(\VUT_LOGO[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFD80002000)) 
    \VUT_LOGO[60]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[2]),
        .I4(frame_num_reg[3]),
        .I5(VUT_LOGO[60]),
        .O(\VUT_LOGO[60]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \VUT_LOGO[61]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[3]),
        .I4(frame_num_reg[2]),
        .O(\VUT_LOGO[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h82010000)) 
    \VUT_LOGO[61]_i_2 
       (.I0(frame_num_reg[2]),
        .I1(frame_num_reg[3]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .O(\VUT_LOGO[61]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[61]_i_3 
       (.I0(frame_num_reg[0]),
        .I1(VUT_LOGO[61]),
        .O(\VUT_LOGO[61]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \VUT_LOGO[62]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[2]),
        .I4(frame_num_reg[3]),
        .O(\VUT_LOGO[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC0010000)) 
    \VUT_LOGO[62]_i_2 
       (.I0(frame_num_reg[3]),
        .I1(frame_num_reg[2]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .O(\VUT_LOGO[62]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VUT_LOGO[62]_i_3 
       (.I0(frame_num_reg[2]),
        .I1(VUT_LOGO[62]),
        .O(\VUT_LOGO[62]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \VUT_LOGO[63]_i_1 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[3]),
        .I4(frame_num_reg[2]),
        .O(\VUT_LOGO[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000002)) 
    \VUT_LOGO[63]_i_2 
       (.I0(\VUT_LOGO[63]_i_4_n_0 ),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[3]),
        .I4(frame_num_reg[2]),
        .O(\VUT_LOGO[63]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[63]_i_3 
       (.I0(VUT_LOGO[63]),
        .O(\VUT_LOGO[63]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \VUT_LOGO[63]_i_4 
       (.I0(frame_num_reg[4]),
        .I1(E),
        .I2(anim_mode),
        .O(\VUT_LOGO[63]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF81000000)) 
    \VUT_LOGO[6]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[6]),
        .O(\VUT_LOGO[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFF81000000)) 
    \VUT_LOGO[7]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .I4(\VUT_LOGO[63]_i_4_n_0 ),
        .I5(VUT_LOGO[7]),
        .O(\VUT_LOGO[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[8]_i_1 
       (.I0(VUT_LOGO[8]),
        .O(\VUT_LOGO[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VUT_LOGO[9]_i_1 
       (.I0(VUT_LOGO[9]),
        .O(\VUT_LOGO[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[0] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[0]_i_1_n_0 ),
        .Q(VUT_LOGO[0]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[10] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[10]_i_1_n_0 ),
        .Q(VUT_LOGO[10]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[11] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[11]_i_1_n_0 ),
        .Q(VUT_LOGO[11]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[12] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[12]_i_1_n_0 ),
        .Q(VUT_LOGO[12]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[13] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[13]_i_1_n_0 ),
        .Q(VUT_LOGO[13]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[14]_i_1_n_0 ),
        .Q(VUT_LOGO[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[15]_i_1_n_0 ),
        .Q(VUT_LOGO[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[16] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[16]_i_1_n_0 ),
        .Q(VUT_LOGO[16]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[17] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[17]_i_1_n_0 ),
        .Q(VUT_LOGO[17]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[18] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[18]_i_1_n_0 ),
        .Q(VUT_LOGO[18]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[19] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[19]_i_1_n_0 ),
        .Q(VUT_LOGO[19]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[1] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[1]_i_1_n_0 ),
        .Q(VUT_LOGO[1]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[20] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[20]_i_1_n_0 ),
        .Q(VUT_LOGO[20]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[21] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[21]_i_1_n_0 ),
        .Q(VUT_LOGO[21]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[22]_i_1_n_0 ),
        .Q(VUT_LOGO[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[23]_i_1_n_0 ),
        .Q(VUT_LOGO[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[24]_i_1_n_0 ),
        .Q(VUT_LOGO[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[25]_i_1_n_0 ),
        .Q(VUT_LOGO[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[26]_i_1_n_0 ),
        .Q(VUT_LOGO[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[27]_i_1_n_0 ),
        .Q(VUT_LOGO[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[28]_i_1_n_0 ),
        .Q(VUT_LOGO[28]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[29] 
       (.C(clk),
        .CE(\VUT_LOGO[61]_i_2_n_0 ),
        .D(\VUT_LOGO[29]_i_1_n_0 ),
        .Q(VUT_LOGO[29]),
        .S(\VUT_LOGO[61]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[2] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[2]_i_1_n_0 ),
        .Q(VUT_LOGO[2]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[30] 
       (.C(clk),
        .CE(\VUT_LOGO[62]_i_2_n_0 ),
        .D(\VUT_LOGO[30]_i_1_n_0 ),
        .Q(VUT_LOGO[30]),
        .S(\VUT_LOGO[62]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[31] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[31]_i_1_n_0 ),
        .Q(VUT_LOGO[31]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[32]_i_1_n_0 ),
        .Q(VUT_LOGO[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[33]_i_1_n_0 ),
        .Q(VUT_LOGO[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[34]_i_1_n_0 ),
        .Q(VUT_LOGO[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[35]_i_1_n_0 ),
        .Q(VUT_LOGO[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[36]_i_1_n_0 ),
        .Q(VUT_LOGO[36]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[37] 
       (.C(clk),
        .CE(\VUT_LOGO[61]_i_2_n_0 ),
        .D(\VUT_LOGO[37]_i_1_n_0 ),
        .Q(VUT_LOGO[37]),
        .S(\VUT_LOGO[61]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[38] 
       (.C(clk),
        .CE(\VUT_LOGO[62]_i_2_n_0 ),
        .D(\VUT_LOGO[38]_i_1_n_0 ),
        .Q(VUT_LOGO[38]),
        .S(\VUT_LOGO[62]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[39] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[39]_i_1_n_0 ),
        .Q(VUT_LOGO[39]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[3] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[3]_i_1_n_0 ),
        .Q(VUT_LOGO[3]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[40]_i_1_n_0 ),
        .Q(VUT_LOGO[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[41]_i_1_n_0 ),
        .Q(VUT_LOGO[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[42]_i_1_n_0 ),
        .Q(VUT_LOGO[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[43]_i_1_n_0 ),
        .Q(VUT_LOGO[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[44]_i_1_n_0 ),
        .Q(VUT_LOGO[44]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[45] 
       (.C(clk),
        .CE(\VUT_LOGO[61]_i_2_n_0 ),
        .D(\VUT_LOGO[45]_i_1_n_0 ),
        .Q(VUT_LOGO[45]),
        .S(\VUT_LOGO[61]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[46] 
       (.C(clk),
        .CE(\VUT_LOGO[62]_i_2_n_0 ),
        .D(\VUT_LOGO[46]_i_1_n_0 ),
        .Q(VUT_LOGO[46]),
        .S(\VUT_LOGO[62]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[47] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[47]_i_1_n_0 ),
        .Q(VUT_LOGO[47]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[48]_i_1_n_0 ),
        .Q(VUT_LOGO[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[49]_i_1_n_0 ),
        .Q(VUT_LOGO[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[4] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[4]_i_1_n_0 ),
        .Q(VUT_LOGO[4]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[50]_i_1_n_0 ),
        .Q(VUT_LOGO[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[51]_i_1_n_0 ),
        .Q(VUT_LOGO[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[52]_i_1_n_0 ),
        .Q(VUT_LOGO[52]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[53] 
       (.C(clk),
        .CE(\VUT_LOGO[61]_i_2_n_0 ),
        .D(\VUT_LOGO[53]_i_1_n_0 ),
        .Q(VUT_LOGO[53]),
        .S(\VUT_LOGO[61]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[54] 
       (.C(clk),
        .CE(\VUT_LOGO[62]_i_2_n_0 ),
        .D(\VUT_LOGO[54]_i_1_n_0 ),
        .Q(VUT_LOGO[54]),
        .S(\VUT_LOGO[62]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[55] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[55]_i_1_n_0 ),
        .Q(VUT_LOGO[55]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[56]_i_1_n_0 ),
        .Q(VUT_LOGO[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[57]_i_1_n_0 ),
        .Q(VUT_LOGO[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[58]_i_1_n_0 ),
        .Q(VUT_LOGO[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[59]_i_1_n_0 ),
        .Q(VUT_LOGO[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[5] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[5]_i_1_n_0 ),
        .Q(VUT_LOGO[5]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[60]_i_1_n_0 ),
        .Q(VUT_LOGO[60]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[61] 
       (.C(clk),
        .CE(\VUT_LOGO[61]_i_2_n_0 ),
        .D(\VUT_LOGO[61]_i_3_n_0 ),
        .Q(VUT_LOGO[61]),
        .S(\VUT_LOGO[61]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[62] 
       (.C(clk),
        .CE(\VUT_LOGO[62]_i_2_n_0 ),
        .D(\VUT_LOGO[62]_i_3_n_0 ),
        .Q(VUT_LOGO[62]),
        .S(\VUT_LOGO[62]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[63] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[63]_i_3_n_0 ),
        .Q(VUT_LOGO[63]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[6]_i_1_n_0 ),
        .Q(VUT_LOGO[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\VUT_LOGO[7]_i_1_n_0 ),
        .Q(VUT_LOGO[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[8] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[8]_i_1_n_0 ),
        .Q(VUT_LOGO[8]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VUT_LOGO_reg[9] 
       (.C(clk),
        .CE(\VUT_LOGO[63]_i_2_n_0 ),
        .D(\VUT_LOGO[9]_i_1_n_0 ),
        .Q(VUT_LOGO[9]),
        .R(\VUT_LOGO[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[0]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[0]),
        .O(\time_from_start_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[10]_i_1 
       (.I0(screen_buffer[10]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[4]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[11]_i_1 
       (.I0(screen_buffer[11]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[0]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[12]_i_1 
       (.I0(screen_buffer[12]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[1]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[13]_i_1 
       (.I0(screen_buffer[13]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[2]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[14]_i_1 
       (.I0(screen_buffer[14]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[3]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[15]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[15]),
        .O(\time_from_start_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[16]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[16]),
        .O(\time_from_start_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[17]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[17]),
        .O(\time_from_start_reg[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[18]_i_1 
       (.I0(screen_buffer[18]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[4]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[19]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[19]),
        .O(\time_from_start_reg[4]_4 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[1]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[1]),
        .O(\time_from_start_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[20]_i_1 
       (.I0(screen_buffer[20]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[5]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[21]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[21]),
        .O(\time_from_start_reg[4]_5 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[22]_i_1 
       (.I0(screen_buffer[22]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[6]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[23]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[23]),
        .O(\time_from_start_reg[4]_6 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[24]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[24]),
        .O(\time_from_start_reg[4]_7 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[25]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[25]),
        .O(\time_from_start_reg[4]_8 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[26]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[26]),
        .O(\time_from_start_reg[4]_9 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[27]_i_1 
       (.I0(screen_buffer[27]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[7]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[28]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[28]),
        .O(\time_from_start_reg[4]_10 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[29]_i_1 
       (.I0(screen_buffer[29]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[8]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[2]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[2]),
        .O(\time_from_start_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[30]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[30]),
        .O(\time_from_start_reg[4]_11 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[31]_i_2 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[31]),
        .O(\time_from_start_reg[4]_12 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[32]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[32]),
        .O(\time_from_start_reg[2]_7 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[33]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[33]),
        .O(\time_from_start_reg[2]_8 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[34]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[34]),
        .O(\time_from_start_reg[2]_9 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[35]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[35]),
        .O(\time_from_start_reg[2]_10 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[36]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[36]),
        .O(\time_from_start_reg[2]_11 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[37]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[37]),
        .O(\time_from_start_reg[2]_12 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[38]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[38]),
        .O(\time_from_start_reg[2]_13 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[39]_i_2 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[39]),
        .O(\time_from_start_reg[2]_14 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[3]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[3]),
        .O(\time_from_start_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[40]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[40]),
        .O(\time_from_start_reg[4]_13 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[41]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[41]),
        .O(\time_from_start_reg[4]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[42]_i_1 
       (.I0(screen_buffer[42]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[13]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[43]_i_1 
       (.I0(screen_buffer[43]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[9]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[44]_i_1 
       (.I0(screen_buffer[44]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[10]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[45]_i_1 
       (.I0(screen_buffer[45]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[11]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[46]_i_1 
       (.I0(screen_buffer[46]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[12]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[47]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[47]),
        .O(\time_from_start_reg[4]_15 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[48]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[48]),
        .O(\time_from_start_reg[4]_16 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[49]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[49]),
        .O(\time_from_start_reg[4]_17 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[4]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[4]),
        .O(\time_from_start_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[50]_i_1 
       (.I0(screen_buffer[50]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[13]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[51]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[51]),
        .O(\time_from_start_reg[4]_18 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[52]_i_1 
       (.I0(screen_buffer[52]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[14]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[53]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[53]),
        .O(\time_from_start_reg[4]_19 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[54]_i_1 
       (.I0(screen_buffer[54]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[15]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[55]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[55]),
        .O(\time_from_start_reg[4]_20 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[56]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[56]),
        .O(\time_from_start_reg[4]_21 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[57]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[57]),
        .O(\time_from_start_reg[4]_22 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[58]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[58]),
        .O(\time_from_start_reg[4]_23 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[59]_i_1 
       (.I0(screen_buffer[59]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[16]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[5]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[5]),
        .O(\time_from_start_reg[2]_4 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[60]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[60]),
        .O(\time_from_start_reg[4]_24 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \display_buffer[61]_i_1 
       (.I0(screen_buffer[61]),
        .I1(\display_buffer_reg[11] ),
        .I2(display_buffer1),
        .I3(Q[17]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[62]_i_2 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[62]),
        .O(\time_from_start_reg[4]_25 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[63]_i_2 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[63]),
        .O(\time_from_start_reg[4]_26 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[6]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[6]),
        .O(\time_from_start_reg[2]_5 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \display_buffer[7]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[0]),
        .I2(time_from_start[3]),
        .I3(time_from_start[4]),
        .I4(screen_buffer[7]),
        .O(\time_from_start_reg[2]_6 ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[8]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[8]),
        .O(\time_from_start_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFF800000000000)) 
    \display_buffer[9]_i_1 
       (.I0(time_from_start[3]),
        .I1(time_from_start[0]),
        .I2(time_from_start[1]),
        .I3(time_from_start[2]),
        .I4(time_from_start[4]),
        .I5(screen_buffer[9]),
        .O(\time_from_start_reg[4]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_num[0]_i_1 
       (.I0(frame_num_reg[0]),
        .O(\frame_num[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \frame_num[1]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \frame_num[2]_i_1 
       (.I0(frame_num_reg[0]),
        .I1(frame_num_reg[1]),
        .I2(frame_num_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \frame_num[3]_i_1 
       (.I0(frame_num_reg[1]),
        .I1(frame_num_reg[0]),
        .I2(frame_num_reg[2]),
        .I3(frame_num_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \frame_num[4]_i_1 
       (.I0(frame_num_reg[3]),
        .I1(frame_num_reg[2]),
        .I2(frame_num_reg[0]),
        .I3(frame_num_reg[1]),
        .I4(frame_num_reg[4]),
        .O(p_0_in__2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_num_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\frame_num[0]_i_1_n_0 ),
        .Q(frame_num_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_num_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__2[1]),
        .Q(frame_num_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_num_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__2[2]),
        .Q(frame_num_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_num_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__2[3]),
        .Q(frame_num_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_num_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__2[4]),
        .Q(frame_num_reg[4]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \screen_buffer[63]_i_1 
       (.I0(anim_mode),
        .O(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[0]),
        .Q(screen_buffer[0]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[10]),
        .Q(screen_buffer[10]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[11]),
        .Q(screen_buffer[11]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[12]),
        .Q(screen_buffer[12]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[13]),
        .Q(screen_buffer[13]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[14]),
        .Q(screen_buffer[14]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[15]),
        .Q(screen_buffer[15]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[16]),
        .Q(screen_buffer[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[17]),
        .Q(screen_buffer[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[18]),
        .Q(screen_buffer[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[19]),
        .Q(screen_buffer[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[1]),
        .Q(screen_buffer[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[20]),
        .Q(screen_buffer[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[21]),
        .Q(screen_buffer[21]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[22]),
        .Q(screen_buffer[22]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[23]),
        .Q(screen_buffer[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[24]),
        .Q(screen_buffer[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[25]),
        .Q(screen_buffer[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[26]),
        .Q(screen_buffer[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[27]),
        .Q(screen_buffer[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[28]),
        .Q(screen_buffer[28]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[29]),
        .Q(screen_buffer[29]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[2]),
        .Q(screen_buffer[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[30]),
        .Q(screen_buffer[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[31]),
        .Q(screen_buffer[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[32]),
        .Q(screen_buffer[32]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[33]),
        .Q(screen_buffer[33]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[34]),
        .Q(screen_buffer[34]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[35]),
        .Q(screen_buffer[35]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[36]),
        .Q(screen_buffer[36]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[37]),
        .Q(screen_buffer[37]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[38]),
        .Q(screen_buffer[38]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[39]),
        .Q(screen_buffer[39]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[3]),
        .Q(screen_buffer[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[40]),
        .Q(screen_buffer[40]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[41]),
        .Q(screen_buffer[41]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[42]),
        .Q(screen_buffer[42]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[43]),
        .Q(screen_buffer[43]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[44]),
        .Q(screen_buffer[44]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[45]),
        .Q(screen_buffer[45]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[46]),
        .Q(screen_buffer[46]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[47]),
        .Q(screen_buffer[47]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[48]),
        .Q(screen_buffer[48]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[49]),
        .Q(screen_buffer[49]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[4]),
        .Q(screen_buffer[4]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[50]),
        .Q(screen_buffer[50]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[51]),
        .Q(screen_buffer[51]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[52]),
        .Q(screen_buffer[52]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[53]),
        .Q(screen_buffer[53]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[54]),
        .Q(screen_buffer[54]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[55]),
        .Q(screen_buffer[55]),
        .S(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[56]),
        .Q(screen_buffer[56]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[57]),
        .Q(screen_buffer[57]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[58]),
        .Q(screen_buffer[58]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[59]),
        .Q(screen_buffer[59]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[5]),
        .Q(screen_buffer[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[60]),
        .Q(screen_buffer[60]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[61]),
        .Q(screen_buffer[61]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[62]),
        .Q(screen_buffer[62]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[63]),
        .Q(screen_buffer[63]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[6]),
        .Q(screen_buffer[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[7]),
        .Q(screen_buffer[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[8]),
        .Q(screen_buffer[8]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \screen_buffer_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(VUT_LOGO[9]),
        .Q(screen_buffer[9]),
        .S(clear));
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
  wire animation_n_40;
  wire animation_n_41;
  wire animation_n_42;
  wire animation_n_43;
  wire animation_n_44;
  wire animation_n_45;
  wire animation_n_46;
  wire animation_n_47;
  wire animation_n_48;
  wire animation_n_49;
  wire animation_n_5;
  wire animation_n_50;
  wire animation_n_51;
  wire animation_n_52;
  wire animation_n_53;
  wire animation_n_54;
  wire animation_n_55;
  wire animation_n_56;
  wire animation_n_57;
  wire animation_n_58;
  wire animation_n_59;
  wire animation_n_6;
  wire animation_n_60;
  wire animation_n_61;
  wire animation_n_62;
  wire animation_n_63;
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
  wire cnt_dis_n_19;
  wire cnt_dis_n_20;
  wire cnt_dis_rst;
  wire cnt_dis_rst_i_1_n_0;
  wire [7:0]col;
  wire [2:0]col_indx;
  wire \col_indx[0]_i_1_n_0 ;
  wire \col_indx[1]_i_1_n_0 ;
  wire \col_indx[2]_i_1_n_0 ;
  wire [14:1]data0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data3;
  wire [7:0]data4;
  wire [7:0]data5;
  wire [7:0]data6;
  wire [7:0]data7;
  wire display_buffer;
  wire display_buffer1;
  wire \display_buffer[39]_i_1_n_0 ;
  wire \display_buffer[39]_i_3_n_0 ;
  wire \display_buffer[61]_i_2_n_0 ;
  wire \display_buffer_reg_n_0_[0] ;
  wire \display_buffer_reg_n_0_[1] ;
  wire \display_buffer_reg_n_0_[2] ;
  wire \display_buffer_reg_n_0_[3] ;
  wire \display_buffer_reg_n_0_[4] ;
  wire \display_buffer_reg_n_0_[5] ;
  wire \display_buffer_reg_n_0_[6] ;
  wire \display_buffer_reg_n_0_[7] ;
  wire p_0_in;
  wire [7:0]row;
  wire [7:0]scol;
  wire \scol[0]_i_2_n_0 ;
  wire \scol[0]_i_3_n_0 ;
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
  wire [61:11]screen_value;
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
       (.D({animation_n_16,animation_n_17,animation_n_18,animation_n_19,animation_n_20,animation_n_21,animation_n_22,animation_n_23,animation_n_24,animation_n_25,animation_n_26,animation_n_27,animation_n_28,animation_n_29,animation_n_30,animation_n_31,animation_n_32,animation_n_33,animation_n_34,animation_n_35}),
        .E(anim_enable),
        .Q({screen_value[61],screen_value[59],screen_value[54],screen_value[52],screen_value[50],screen_value[46:43],screen_value[29],screen_value[27],screen_value[22],screen_value[20],screen_value[18],screen_value[14:11]}),
        .anim_mode(anim_mode),
        .clk(clk),
        .display_buffer1(display_buffer1),
        .\display_buffer_reg[11] (\display_buffer[61]_i_2_n_0 ),
        .time_from_start(time_from_start[5:1]),
        .\time_from_start_reg[2] (animation_n_0),
        .\time_from_start_reg[2]_0 (animation_n_1),
        .\time_from_start_reg[2]_1 (animation_n_2),
        .\time_from_start_reg[2]_10 (animation_n_11),
        .\time_from_start_reg[2]_11 (animation_n_12),
        .\time_from_start_reg[2]_12 (animation_n_13),
        .\time_from_start_reg[2]_13 (animation_n_14),
        .\time_from_start_reg[2]_14 (animation_n_15),
        .\time_from_start_reg[2]_2 (animation_n_3),
        .\time_from_start_reg[2]_3 (animation_n_4),
        .\time_from_start_reg[2]_4 (animation_n_5),
        .\time_from_start_reg[2]_5 (animation_n_6),
        .\time_from_start_reg[2]_6 (animation_n_7),
        .\time_from_start_reg[2]_7 (animation_n_8),
        .\time_from_start_reg[2]_8 (animation_n_9),
        .\time_from_start_reg[2]_9 (animation_n_10),
        .\time_from_start_reg[4] (animation_n_36),
        .\time_from_start_reg[4]_0 (animation_n_37),
        .\time_from_start_reg[4]_1 (animation_n_38),
        .\time_from_start_reg[4]_10 (animation_n_47),
        .\time_from_start_reg[4]_11 (animation_n_48),
        .\time_from_start_reg[4]_12 (animation_n_49),
        .\time_from_start_reg[4]_13 (animation_n_50),
        .\time_from_start_reg[4]_14 (animation_n_51),
        .\time_from_start_reg[4]_15 (animation_n_52),
        .\time_from_start_reg[4]_16 (animation_n_53),
        .\time_from_start_reg[4]_17 (animation_n_54),
        .\time_from_start_reg[4]_18 (animation_n_55),
        .\time_from_start_reg[4]_19 (animation_n_56),
        .\time_from_start_reg[4]_2 (animation_n_39),
        .\time_from_start_reg[4]_20 (animation_n_57),
        .\time_from_start_reg[4]_21 (animation_n_58),
        .\time_from_start_reg[4]_22 (animation_n_59),
        .\time_from_start_reg[4]_23 (animation_n_60),
        .\time_from_start_reg[4]_24 (animation_n_61),
        .\time_from_start_reg[4]_25 (animation_n_62),
        .\time_from_start_reg[4]_26 (animation_n_63),
        .\time_from_start_reg[4]_3 (animation_n_40),
        .\time_from_start_reg[4]_4 (animation_n_41),
        .\time_from_start_reg[4]_5 (animation_n_42),
        .\time_from_start_reg[4]_6 (animation_n_43),
        .\time_from_start_reg[4]_7 (animation_n_44),
        .\time_from_start_reg[4]_8 (animation_n_45),
        .\time_from_start_reg[4]_9 (animation_n_46));
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
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
        .Q({screen_value[61],screen_value[59],screen_value[54],screen_value[52],screen_value[50],screen_value[46:43],screen_value[29],screen_value[27],screen_value[22],screen_value[20],screen_value[18],screen_value[14:11]}),
        .clk(clk),
        .display_buffer1(display_buffer1),
        .\display_buffer_reg[63] (\display_buffer[61]_i_2_n_0 ),
        .\display_buffer_reg[63]_0 (\srow[7]_i_2_n_0 ),
        .\screen_value_reg[31]_0 (cnt_dis_n_20),
        .\screen_value_reg[62]_0 (cnt_dis_n_19),
        .\screen_value_reg[63]_0 (cnt_dis_n_0));
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
  LUT2 #(
    .INIT(4'h2)) 
    \display_buffer[39]_i_1 
       (.I0(\display_buffer[39]_i_3_n_0 ),
        .I1(\srow[7]_i_2_n_0 ),
        .O(\display_buffer[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007A780000)) 
    \display_buffer[39]_i_3 
       (.I0(time_from_start[2]),
        .I1(time_from_start[1]),
        .I2(time_from_start[3]),
        .I3(time_from_start[0]),
        .I4(time_from_start[4]),
        .I5(time_from_start[5]),
        .O(\display_buffer[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
    \display_buffer_reg[0] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_0),
        .Q(\display_buffer_reg_n_0_[0] ),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[10] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_35),
        .Q(data7[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[11] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_34),
        .Q(data7[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[12] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_33),
        .Q(data7[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[13] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_32),
        .Q(data7[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[14] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_31),
        .Q(data7[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[15] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_38),
        .Q(data7[7]),
        .S(cnt_dis_n_20));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[16] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_39),
        .Q(data6[0]),
        .S(cnt_dis_n_20));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[17] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_40),
        .Q(data6[1]),
        .S(cnt_dis_n_20));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[18] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_30),
        .Q(data6[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[19] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_41),
        .Q(data6[3]),
        .S(cnt_dis_n_20));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[1] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_1),
        .Q(\display_buffer_reg_n_0_[1] ),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[20] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_29),
        .Q(data6[4]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[21] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_42),
        .Q(data6[5]),
        .S(cnt_dis_n_20));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[22] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_28),
        .Q(data6[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[23] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_43),
        .Q(data6[7]),
        .S(cnt_dis_n_20));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[24] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_44),
        .Q(data5[0]),
        .S(cnt_dis_n_20));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[25] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_45),
        .Q(data5[1]),
        .S(cnt_dis_n_20));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[26] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_46),
        .Q(data5[2]),
        .S(cnt_dis_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[27] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_27),
        .Q(data5[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[28] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_47),
        .Q(data5[4]),
        .S(cnt_dis_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[29] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_26),
        .Q(data5[5]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[2] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_2),
        .Q(\display_buffer_reg_n_0_[2] ),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[30] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_48),
        .Q(data5[6]),
        .S(cnt_dis_n_19));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[31] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_49),
        .Q(data5[7]),
        .S(cnt_dis_n_20));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[32] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_8),
        .Q(data4[0]),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[33] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_9),
        .Q(data4[1]),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[34] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_10),
        .Q(data4[2]),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[35] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_11),
        .Q(data4[3]),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[36] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_12),
        .Q(data4[4]),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[37] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_13),
        .Q(data4[5]),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[38] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_14),
        .Q(data4[6]),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[39] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_15),
        .Q(data4[7]),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[3] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_3),
        .Q(\display_buffer_reg_n_0_[3] ),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[40] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_50),
        .Q(data3[0]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[41] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_51),
        .Q(data3[1]),
        .S(cnt_dis_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[42] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_25),
        .Q(data3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[43] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_24),
        .Q(data3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[44] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_23),
        .Q(data3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[45] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_22),
        .Q(data3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[46] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_21),
        .Q(data3[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[47] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_52),
        .Q(data3[7]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[48] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_53),
        .Q(data2[0]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[49] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_54),
        .Q(data2[1]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[4] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_4),
        .Q(\display_buffer_reg_n_0_[4] ),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[50] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_20),
        .Q(data2[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[51] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_55),
        .Q(data2[3]),
        .S(cnt_dis_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[52] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_19),
        .Q(data2[4]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[53] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_56),
        .Q(data2[5]),
        .S(cnt_dis_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[54] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_18),
        .Q(data2[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[55] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_57),
        .Q(data2[7]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[56] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_58),
        .Q(data1[0]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[57] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_59),
        .Q(data1[1]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[58] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_60),
        .Q(data1[2]),
        .S(cnt_dis_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[59] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_17),
        .Q(data1[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[5] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_5),
        .Q(\display_buffer_reg_n_0_[5] ),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[60] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_61),
        .Q(data1[4]),
        .S(cnt_dis_n_19));
  FDRE #(
    .INIT(1'b0)) 
    \display_buffer_reg[61] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_16),
        .Q(data1[5]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[62] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_62),
        .Q(data1[6]),
        .S(cnt_dis_n_19));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[63] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_63),
        .Q(data1[7]),
        .S(cnt_dis_n_0));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[6] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_6),
        .Q(\display_buffer_reg_n_0_[6] ),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[7] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_7),
        .Q(\display_buffer_reg_n_0_[7] ),
        .S(\display_buffer[39]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[8] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_36),
        .Q(data7[0]),
        .S(cnt_dis_n_20));
  FDSE #(
    .INIT(1'b0)) 
    \display_buffer_reg[9] 
       (.C(clk),
        .CE(display_buffer),
        .D(animation_n_37),
        .Q(data7[1]),
        .S(cnt_dis_n_20));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[0]_i_2 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(col_indx[1]),
        .I3(data1[0]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[0] ),
        .O(\scol[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[0]_i_3 
       (.I0(data7[0]),
        .I1(data6[0]),
        .I2(col_indx[1]),
        .I3(data5[0]),
        .I4(col_indx[0]),
        .I5(data4[0]),
        .O(\scol[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[1]_i_2 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(col_indx[1]),
        .I3(data1[1]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[1] ),
        .O(\scol[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[1]_i_3 
       (.I0(data7[1]),
        .I1(data6[1]),
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
        .I5(\display_buffer_reg_n_0_[2] ),
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
        .I5(\display_buffer_reg_n_0_[3] ),
        .O(\scol[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[3]_i_3 
       (.I0(data7[3]),
        .I1(data6[3]),
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
        .I5(\display_buffer_reg_n_0_[4] ),
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
        .I5(\display_buffer_reg_n_0_[5] ),
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
        .I3(data5[6]),
        .I4(col_indx[0]),
        .I5(data4[6]),
        .O(\scol[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[7]_i_2 
       (.I0(data3[7]),
        .I1(data2[7]),
        .I2(col_indx[1]),
        .I3(data1[7]),
        .I4(col_indx[0]),
        .I5(\display_buffer_reg_n_0_[7] ),
        .O(\scol[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \scol[7]_i_3 
       (.I0(data7[7]),
        .I1(data6[7]),
        .I2(col_indx[1]),
        .I3(data5[7]),
        .I4(col_indx[0]),
        .I5(data4[7]),
        .O(\scol[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(scol[0]),
        .Q(col[0]),
        .R(1'b0));
  MUXF7 \scol_reg[0]_i_1 
       (.I0(\scol[0]_i_2_n_0 ),
        .I1(\scol[0]_i_3_n_0 ),
        .O(scol[0]),
        .S(col_indx[2]));
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
  LUT1 #(
    .INIT(2'h1)) 
    \sec_cnt[0]_i_1 
       (.I0(sec_cnt[0]),
        .O(\sec_cnt[0]_i_1_n_0 ));
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
  LUT1 #(
    .INIT(2'h1)) 
    \srow[7]_i_1 
       (.I0(\srow[7]_i_2_n_0 ),
        .O(display_buffer));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \time_from_start[3]_i_1 
       (.I0(time_from_start[1]),
        .I1(time_from_start[2]),
        .I2(time_from_start[0]),
        .I3(time_from_start[3]),
        .O(\time_from_start[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
