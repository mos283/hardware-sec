--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: trojan2_timesim.vhd
-- /___/   /\     Timestamp: Fri Feb 10 18:33:19 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf trojan2.pcf -rpw 100 -tpw 0 -ar Structure -tm trojan2 -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim trojan2.ncd trojan2_timesim.vhd 
-- Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
-- Input file	: trojan2.ncd
-- Output file	: C:\Users\mos28\Documents\xilinx proj\hardsec\lab7_mutilated\netgen\par\trojan2_timesim.vhd
-- # of Entities	: 1
-- Design Name	: trojan2
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

entity trojan2 is
  port (
    tri : out STD_LOGIC; 
    sense : in STD_LOGIC_VECTOR ( 4 downto 0 ) 
  );
end trojan2;

architecture Structure of trojan2 is
  signal sense_0_IBUF_29 : STD_LOGIC; 
  signal sense_1_IBUF_30 : STD_LOGIC; 
  signal sense_2_IBUF_31 : STD_LOGIC; 
  signal sense_3_IBUF_32 : STD_LOGIC; 
  signal sense_4_IBUF_33 : STD_LOGIC; 
  signal tri_OBUF_34 : STD_LOGIC; 
  signal ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sense_1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sense_3_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sense_4_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sense_0_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal NlwBufferSignal_tri_OBUF_I : STD_LOGIC; 
begin
  ProtoComp0_INTERMDISABLE_GND_2 : X_ZERO
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      O => ProtoComp0_INTERMDISABLE_GND_0
    );
  sense_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp0_INTERMDISABLE_GND_0,
      O => sense_2_IBUF_31,
      I => sense(2),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      O => sense_1_ProtoComp0_INTERMDISABLE_GND_0
    );
  sense_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sense_1_ProtoComp0_INTERMDISABLE_GND_0,
      O => sense_1_IBUF_30,
      I => sense(1),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_3 : X_ZERO
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      O => sense_3_ProtoComp0_INTERMDISABLE_GND_0
    );
  sense_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sense_3_ProtoComp0_INTERMDISABLE_GND_0,
      O => sense_3_IBUF_32,
      I => sense(3),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_4 : X_ZERO
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      O => sense_4_ProtoComp0_INTERMDISABLE_GND_0
    );
  sense_4_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sense_4_ProtoComp0_INTERMDISABLE_GND_0,
      O => sense_4_IBUF_33,
      I => sense(4),
      TPWRGT => '1'
    );
  tri_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      I => NlwBufferSignal_tri_OBUF_I,
      O => tri
    );
  ProtoComp0_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      O => sense_0_ProtoComp0_INTERMDISABLE_GND_0
    );
  sense_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sense_0_ProtoComp0_INTERMDISABLE_GND_0,
      O => sense_0_IBUF_29,
      I => sense(0),
      TPWRGT => '1'
    );
  tri_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y146",
      INIT => X"8000000080000000"
    )
    port map (
      ADR5 => '1',
      ADR1 => sense_4_IBUF_33,
      ADR4 => sense_3_IBUF_32,
      ADR3 => sense_2_IBUF_31,
      ADR0 => sense_1_IBUF_30,
      ADR2 => sense_0_IBUF_29,
      O => tri_OBUF_34
    );
  NlwBufferBlock_tri_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => tri_OBUF_34,
      O => NlwBufferSignal_tri_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

