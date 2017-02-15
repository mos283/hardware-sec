--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: trojan3_timesim.vhd
-- /___/   /\     Timestamp: Fri Feb 10 18:47:31 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf trojan3.pcf -rpw 100 -tpw 0 -ar Structure -tm trojan3 -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim trojan3.ncd trojan3_timesim.vhd 
-- Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
-- Input file	: trojan3.ncd
-- Output file	: C:\Users\mos28\Documents\xilinx proj\hardsec\lab7_mutilated\netgen\par\trojan3_timesim.vhd
-- # of Entities	: 1
-- Design Name	: trojan3
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity trojan3 is
  port (
    sel : in STD_LOGIC := 'X'; 
    lk : out STD_LOGIC; 
    key : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end trojan3;

architecture Structure of trojan3 is
  signal lk_OBUF_29 : STD_LOGIC; 
  signal key_0_IBUF_30 : STD_LOGIC; 
  signal key_1_IBUF_31 : STD_LOGIC; 
  signal key_2_IBUF_32 : STD_LOGIC; 
  signal key_3_IBUF_33 : STD_LOGIC; 
  signal sel_IBUF_34 : STD_LOGIC; 
  signal ProtoComp1_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal key_1_ProtoComp1_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sel_ProtoComp1_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal key_2_ProtoComp1_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal key_3_ProtoComp1_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal NlwBufferSignal_lk_OBUF_I : STD_LOGIC; 
begin
  ProtoComp1_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      O => ProtoComp1_INTERMDISABLE_GND_0
    );
  key_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp1_INTERMDISABLE_GND_0,
      O => key_0_IBUF_30,
      I => key(0),
      TPWRGT => '1'
    );
  lk_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      I => NlwBufferSignal_lk_OBUF_I,
      O => lk
    );
  ProtoComp1_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      O => key_1_ProtoComp1_INTERMDISABLE_GND_0
    );
  key_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => key_1_ProtoComp1_INTERMDISABLE_GND_0,
      O => key_1_IBUF_31,
      I => key(1),
      TPWRGT => '1'
    );
  Mmux_lk11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y146",
      INIT => X"0FF066660FF06666"
    )
    port map (
      ADR5 => '1',
      ADR4 => sel_IBUF_34,
      ADR2 => key_3_IBUF_33,
      ADR3 => key_2_IBUF_32,
      ADR1 => key_0_IBUF_30,
      ADR0 => key_1_IBUF_31,
      O => lk_OBUF_29
    );
  ProtoComp1_INTERMDISABLE_GND_4 : X_ZERO
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      O => sel_ProtoComp1_INTERMDISABLE_GND_0
    );
  sel_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sel_ProtoComp1_INTERMDISABLE_GND_0,
      O => sel_IBUF_34,
      I => sel,
      TPWRGT => '1'
    );
  ProtoComp1_INTERMDISABLE_GND_2 : X_ZERO
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      O => key_2_ProtoComp1_INTERMDISABLE_GND_0
    );
  key_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => key_2_ProtoComp1_INTERMDISABLE_GND_0,
      O => key_2_IBUF_32,
      I => key(2),
      TPWRGT => '1'
    );
  ProtoComp1_INTERMDISABLE_GND_3 : X_ZERO
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      O => key_3_ProtoComp1_INTERMDISABLE_GND_0
    );
  key_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => key_3_ProtoComp1_INTERMDISABLE_GND_0,
      O => key_3_IBUF_33,
      I => key(3),
      TPWRGT => '1'
    );
  NlwBufferBlock_lk_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => lk_OBUF_29,
      O => NlwBufferSignal_lk_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

