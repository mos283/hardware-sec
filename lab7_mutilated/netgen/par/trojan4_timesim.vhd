--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: trojan4_timesim.vhd
-- /___/   /\     Timestamp: Fri Feb 10 18:54:25 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf trojan4.pcf -rpw 100 -tpw 0 -ar Structure -tm trojan4 -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim trojan4.ncd trojan4_timesim.vhd 
-- Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
-- Input file	: trojan4.ncd
-- Output file	: C:\Users\mos28\Documents\xilinx proj\hardsec\lab7_mutilated\netgen\par\trojan4_timesim.vhd
-- # of Entities	: 1
-- Design Name	: trojan4
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

entity trojan4 is
  port (
    orig : in STD_LOGIC := 'X'; 
    ky1 : in STD_LOGIC := 'X'; 
    ky2 : in STD_LOGIC := 'X'; 
    tr : in STD_LOGIC := 'X'; 
    sel : in STD_LOGIC := 'X'; 
    leak : out STD_LOGIC 
  );
end trojan4;

architecture Structure of trojan4 is
  signal ky1_IBUF_29 : STD_LOGIC; 
  signal ky2_IBUF_30 : STD_LOGIC; 
  signal orig_IBUF_31 : STD_LOGIC; 
  signal tr_IBUF_32 : STD_LOGIC; 
  signal leak_OBUF_33 : STD_LOGIC; 
  signal sel_IBUF_34 : STD_LOGIC; 
  signal ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal tr_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal ky2_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal orig_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal ky1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal NlwBufferSignal_leak_OBUF_I : STD_LOGIC; 
begin
  ProtoComp0_INTERMDISABLE_GND_4 : X_ZERO
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      O => ProtoComp0_INTERMDISABLE_GND_0
    );
  sel_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp0_INTERMDISABLE_GND_0,
      O => sel_IBUF_34,
      I => sel,
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_3 : X_ZERO
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      O => tr_ProtoComp0_INTERMDISABLE_GND_0
    );
  tr_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => tr_ProtoComp0_INTERMDISABLE_GND_0,
      O => tr_IBUF_32,
      I => tr,
      TPWRGT => '1'
    );
  Mmux_leak11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y146",
      INIT => X"AFA0CFC0AFA0CFC0"
    )
    port map (
      ADR5 => '1',
      ADR2 => tr_IBUF_32,
      ADR1 => ky1_IBUF_29,
      ADR4 => sel_IBUF_34,
      ADR0 => ky2_IBUF_30,
      ADR3 => orig_IBUF_31,
      O => leak_OBUF_33
    );
  ProtoComp0_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      O => ky2_ProtoComp0_INTERMDISABLE_GND_0
    );
  ky2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ky2_ProtoComp0_INTERMDISABLE_GND_0,
      O => ky2_IBUF_30,
      I => ky2,
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_2 : X_ZERO
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      O => orig_ProtoComp0_INTERMDISABLE_GND_0
    );
  orig_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => orig_ProtoComp0_INTERMDISABLE_GND_0,
      O => orig_IBUF_31,
      I => orig,
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      O => ky1_ProtoComp0_INTERMDISABLE_GND_0
    );
  ky1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ky1_ProtoComp0_INTERMDISABLE_GND_0,
      O => ky1_IBUF_29,
      I => ky1,
      TPWRGT => '1'
    );
  leak_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      I => NlwBufferSignal_leak_OBUF_I,
      O => leak
    );
  NlwBufferBlock_leak_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => leak_OBUF_33,
      O => NlwBufferSignal_leak_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

