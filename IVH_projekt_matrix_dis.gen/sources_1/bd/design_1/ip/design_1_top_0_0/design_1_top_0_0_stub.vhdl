-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May 14 20:30:14 2024
-- Host        : LAPTOP-O3BSDE06 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/VUT_FIT/IVH/IVH_projekt_matrix_dis/IVH_projekt_matrix_dis.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_top_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    btns : in STD_LOGIC_VECTOR ( 3 downto 0 );
    col : out STD_LOGIC_VECTOR ( 7 downto 0 );
    row : out STD_LOGIC_VECTOR ( 7 downto 0 );
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_top_0_0;

architecture stub of design_1_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,btns[3:0],col[7:0],row[7:0],leds[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top,Vivado 2023.2";
begin
end;
