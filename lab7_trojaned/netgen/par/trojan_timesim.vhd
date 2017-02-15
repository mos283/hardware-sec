--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: trojan_timesim.vhd
-- /___/   /\     Timestamp: Sun Feb 12 17:56:57 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf trojan.pcf -rpw 100 -tpw 0 -ar Structure -tm trojan -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim trojan.ncd trojan_timesim.vhd 
-- Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
-- Input file	: trojan.ncd
-- Output file	: C:\Users\mos28\Documents\xilinx proj\hardsec\lab7_trojaned\netgen\par\trojan_timesim.vhd
-- # of Entities	: 1
-- Design Name	: trojan
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

entity trojan is
  port (
    aStp3 : in STD_LOGIC := 'X'; 
    aStp30 : in STD_LOGIC := 'X'; 
    aAdd31 : out STD_LOGIC; 
    sense : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end trojan;

architecture Structure of trojan is
  signal aStp3_IBUF_34 : STD_LOGIC; 
  signal aAdd31_OBUF_35 : STD_LOGIC; 
  signal sense_0_IBUF_36 : STD_LOGIC; 
  signal sense_1_IBUF_37 : STD_LOGIC; 
  signal sense_2_IBUF_38 : STD_LOGIC; 
  signal sense_3_IBUF_39 : STD_LOGIC; 
  signal aStp30_IBUF_40 : STD_LOGIC; 
  signal ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal aStp30_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sense_3_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sense_2_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal aStp3_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sense_1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal NlwBufferSignal_aAdd31_OBUF_I : STD_LOGIC; 
begin
  ProtoComp0_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      O => ProtoComp0_INTERMDISABLE_GND_0
    );
  sense_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp0_INTERMDISABLE_GND_0,
      O => sense_0_IBUF_36,
      I => sense(0),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_5 : X_ZERO
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      O => aStp30_ProtoComp0_INTERMDISABLE_GND_0
    );
  aStp30_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => aStp30_ProtoComp0_INTERMDISABLE_GND_0,
      O => aStp30_IBUF_40,
      I => aStp30,
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_4 : X_ZERO
    generic map(
      LOC => "IOB_X0Y143"
    )
    port map (
      O => sense_3_ProtoComp0_INTERMDISABLE_GND_0
    );
  sense_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y143"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sense_3_ProtoComp0_INTERMDISABLE_GND_0,
      O => sense_3_IBUF_39,
      I => sense(3),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_3 : X_ZERO
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      O => sense_2_ProtoComp0_INTERMDISABLE_GND_0
    );
  sense_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sense_2_ProtoComp0_INTERMDISABLE_GND_0,
      O => sense_2_IBUF_38,
      I => sense(2),
      TPWRGT => '1'
    );
  Mmux_aAdd3111 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y145",
      INIT => X"EAAAAAAA2AAAAAAA"
    )
    port map (
      ADR0 => aStp30_IBUF_40,
      ADR1 => sense_0_IBUF_36,
      ADR2 => sense_1_IBUF_37,
      ADR3 => sense_2_IBUF_38,
      ADR4 => sense_3_IBUF_39,
      ADR5 => aStp3_IBUF_34,
      O => aAdd31_OBUF_35
    );
  aAdd31_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      I => NlwBufferSignal_aAdd31_OBUF_I,
      O => aAdd31
    );
  ProtoComp0_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      O => aStp3_ProtoComp0_INTERMDISABLE_GND_0
    );
  aStp3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => aStp3_ProtoComp0_INTERMDISABLE_GND_0,
      O => aStp3_IBUF_34,
      I => aStp3,
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_2 : X_ZERO
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      O => sense_1_ProtoComp0_INTERMDISABLE_GND_0
    );
  sense_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sense_1_ProtoComp0_INTERMDISABLE_GND_0,
      O => sense_1_IBUF_37,
      I => sense(1),
      TPWRGT => '1'
    );
  NlwBufferBlock_aAdd31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => aAdd31_OBUF_35,
      O => NlwBufferSignal_aAdd31_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

