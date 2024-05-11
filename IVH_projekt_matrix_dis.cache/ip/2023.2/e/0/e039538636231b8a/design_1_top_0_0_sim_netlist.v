// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat May 11 10:40:31 2024
// Host        : LAPTOP-O3BSDE06 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim
   (data0,
    clk);
  output [0:0]data0;
  input clk;

  wire clk;
  wire [0:0]data0;
  wire [62:62]p_0_in;

  FDRE #(
    .INIT(1'b0)) 
    \screen_value_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(data0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(p_0_in),
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

  wire \<const0> ;
  wire clk;
  wire [4:0]\^col ;
  wire [7:0]row;

  assign col[7] = \<const0> ;
  assign col[6] = \^col [2];
  assign col[5] = \^col [4];
  assign col[4] = \^col [4];
  assign col[3] = \^col [4];
  assign col[2] = \^col [2];
  assign col[1] = \^col [0];
  assign col[0] = \^col [0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top U0
       (.clk(clk),
        .col({\^col [2],\^col [4],\^col [0]}),
        .row(row));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (col,
    row,
    clk);
  output [2:0]col;
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
  wire [2:0]col;
  wire [2:0]col_indx;
  wire \col_indx[0]_i_1_n_0 ;
  wire \col_indx[1]_i_1_n_0 ;
  wire \col_indx[2]_i_1_n_0 ;
  wire [6:6]data0;
  wire [7:0]row;
  wire \scol[5]_i_1_n_0 ;
  wire \scol[6]_i_1_n_0 ;
  wire \scol[6]_i_2_n_0 ;
  wire \scol[6]_i_3_n_0 ;
  wire \scol[6]_i_4_n_0 ;
  wire \scol[6]_i_5_n_0 ;
  wire [3:1]NLW_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0_carry__2_O_UNCONNECTED;

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
       (.I0(\scol[6]_i_3_n_0 ),
        .I1(\scol[6]_i_4_n_0 ),
        .I2(\scol[6]_i_5_n_0 ),
        .I3(cnt[0]),
        .O(cnt_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_anim cnt_dis
       (.clk(clk),
        .data0(data0));
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
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_5),
        .Q(cnt[11]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_4),
        .Q(cnt[12]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_7),
        .Q(cnt[13]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__2_n_6),
        .Q(cnt[14]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_7),
        .Q(cnt[1]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_6),
        .Q(cnt[2]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_5),
        .Q(cnt[3]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry_n_4),
        .Q(cnt[4]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_7),
        .Q(cnt[5]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_6),
        .Q(cnt[6]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_5),
        .Q(cnt[7]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__0_n_4),
        .Q(cnt[8]),
        .R(\scol[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt0_carry__1_n_7),
        .Q(cnt[9]),
        .R(\scol[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \col_indx[0]_i_1 
       (.I0(col_indx[0]),
        .O(\col_indx[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \col_indx[1]_i_1 
       (.I0(col_indx[0]),
        .I1(col_indx[1]),
        .O(\col_indx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .CE(\scol[6]_i_1_n_0 ),
        .D(\col_indx[0]_i_1_n_0 ),
        .Q(col_indx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_indx_reg[1] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(\col_indx[1]_i_1_n_0 ),
        .Q(col_indx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_indx_reg[2] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(\col_indx[2]_i_1_n_0 ),
        .Q(col_indx[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \scol[5]_i_1 
       (.I0(col_indx[2]),
        .I1(data0),
        .I2(col_indx[0]),
        .O(\scol[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \scol[6]_i_1 
       (.I0(\scol[6]_i_3_n_0 ),
        .I1(\scol[6]_i_4_n_0 ),
        .I2(\scol[6]_i_5_n_0 ),
        .I3(cnt[0]),
        .O(\scol[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBD00)) 
    \scol[6]_i_2 
       (.I0(col_indx[2]),
        .I1(col_indx[0]),
        .I2(col_indx[1]),
        .I3(data0),
        .O(\scol[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \scol[6]_i_3 
       (.I0(cnt[13]),
        .I1(cnt[14]),
        .I2(cnt[11]),
        .I3(cnt[12]),
        .I4(cnt[2]),
        .I5(cnt[1]),
        .O(\scol[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \scol[6]_i_4 
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .I2(cnt[5]),
        .I3(cnt[6]),
        .O(\scol[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \scol[6]_i_5 
       (.I0(cnt[8]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[9]),
        .O(\scol[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[1] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(1'b0),
        .Q(col[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scol_reg[5] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(\scol[5]_i_1_n_0 ),
        .Q(col[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scol_reg[6] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(\scol[6]_i_2_n_0 ),
        .Q(col[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[0] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(row[7]),
        .Q(row[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[1] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(row[0]),
        .Q(row[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[2] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(row[1]),
        .Q(row[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[3] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(row[2]),
        .Q(row[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[4] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(row[3]),
        .Q(row[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[5] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(row[4]),
        .Q(row[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \srow_reg[6] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
        .D(row[5]),
        .Q(row[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \srow_reg[7] 
       (.C(clk),
        .CE(\scol[6]_i_1_n_0 ),
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
