// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun May 12 20:12:54 2024
// Host        : LAPTOP-O3BSDE06 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/VUT_FIT/IVH/IVH_projekt_matrix_dis/IVH_projekt_matrix_dis.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.v
// Design      : design_1_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top,Vivado 2023.2" *)
module design_1_top_0_0(clk, col, row)
/* synthesis syn_black_box black_box_pad_pin="col[7:0],row[7:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  output [7:0]col;
  output [7:0]row;
endmodule
