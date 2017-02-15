--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: trojan1_timesim.vhd
-- /___/   /\     Timestamp: Fri Feb 10 14:09:51 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf trojan1.pcf -rpw 100 -tpw 0 -ar Structure -tm trojan1 -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim trojan1.ncd trojan1_timesim.vhd 
-- Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
-- Input file	: trojan1.ncd
-- Output file	: C:\Users\mos28\Documents\xilinx proj\hardsec\lab7_mutilated\netgen\par\trojan1_timesim.vhd
-- # of Entities	: 1
-- Design Name	: trojan1
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

entity trojan1 is
  port (
    kyTr : in STD_LOGIC := 'X'; 
    val : in STD_LOGIC := 'X'; 
    btnl : in STD_LOGIC := 'X'; 
    btnr : in STD_LOGIC := 'X'; 
    out1 : in STD_LOGIC := 'X'; 
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    inkey : in STD_LOGIC_VECTOR2 ( 3 downto 0 , 31 downto 0 ); 
    inled : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    led : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end trojan1;

architecture Structure of trojan1 is
  signal inkey_1_31_IBUF_1276 : STD_LOGIC; 
  signal inled_0_IBUF_1277 : STD_LOGIC; 
  signal inkey_2_1_IBUF_1278 : STD_LOGIC; 
  signal inkey_1_9_IBUF_1279 : STD_LOGIC; 
  signal inkey_1_16_IBUF_1280 : STD_LOGIC; 
  signal inkey_1_24_IBUF_1281 : STD_LOGIC; 
  signal inled_1_IBUF_1282 : STD_LOGIC; 
  signal inkey_2_2_IBUF_1283 : STD_LOGIC; 
  signal inkey_1_17_IBUF_1284 : STD_LOGIC; 
  signal inkey_1_25_IBUF_1285 : STD_LOGIC; 
  signal inled_2_IBUF_1286 : STD_LOGIC; 
  signal inkey_2_3_IBUF_1287 : STD_LOGIC; 
  signal inkey_1_18_IBUF_1288 : STD_LOGIC; 
  signal inkey_1_26_IBUF_1289 : STD_LOGIC; 
  signal inled_3_IBUF_1290 : STD_LOGIC; 
  signal inkey_2_4_IBUF_1291 : STD_LOGIC; 
  signal inkey_1_19_IBUF_1292 : STD_LOGIC; 
  signal inkey_1_27_IBUF_1293 : STD_LOGIC; 
  signal inled_4_IBUF_1294 : STD_LOGIC; 
  signal inkey_2_5_IBUF_1295 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal Mmux_led1113_0 : STD_LOGIC; 
  signal Mmux_led11113 : STD_LOGIC; 
  signal inkey_3_22_IBUF_1299 : STD_LOGIC; 
  signal Mmux_led426 : STD_LOGIC; 
  signal inkey_2_22_IBUF_1301 : STD_LOGIC; 
  signal Mmux_led1114 : STD_LOGIC; 
  signal inkey_1_28_IBUF_1303 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal inkey_3_18_IBUF_1305 : STD_LOGIC; 
  signal Mmux_led186 : STD_LOGIC; 
  signal inkey_2_18_IBUF_1307 : STD_LOGIC; 
  signal inled_5_IBUF_1308 : STD_LOGIC; 
  signal inkey_2_6_IBUF_1309 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal out1_IBUF_1311 : STD_LOGIC; 
  signal btnl_IBUF_1312 : STD_LOGIC; 
  signal btnr_IBUF_1313 : STD_LOGIC; 
  signal val_IBUF_1314 : STD_LOGIC; 
  signal sw_5_IBUF_1315 : STD_LOGIC; 
  signal val_PWR_5_o_AND_52_o1 : STD_LOGIC; 
  signal inkey_1_29_IBUF_1317 : STD_LOGIC; 
  signal val_PWR_5_o_AND_36_o : STD_LOGIC; 
  signal val_PWR_5_o_AND_20_o1_1319 : STD_LOGIC; 
  signal sw_0_IBUF_1320 : STD_LOGIC; 
  signal sw_1_IBUF_1321 : STD_LOGIC; 
  signal inled_6_IBUF_1322 : STD_LOGIC; 
  signal inkey_2_7_IBUF_1323 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal inkey_3_19_IBUF_1325 : STD_LOGIC; 
  signal Mmux_led246 : STD_LOGIC; 
  signal inkey_2_19_IBUF_1327 : STD_LOGIC; 
  signal inled_7_IBUF_1328 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal inkey_3_17_IBUF_1330 : STD_LOGIC; 
  signal Mmux_led129_1331 : STD_LOGIC; 
  signal inkey_2_17_IBUF_1332 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal inkey_3_21_IBUF_1334 : STD_LOGIC; 
  signal Mmux_led366 : STD_LOGIC; 
  signal inkey_2_21_IBUF_1336 : STD_LOGIC; 
  signal Mmux_led12 : STD_LOGIC; 
  signal Mmux_led123_1338 : STD_LOGIC; 
  signal inkey_0_1_IBUF_1339 : STD_LOGIC; 
  signal Mmux_led122_1340 : STD_LOGIC; 
  signal Mmux_led121_1341 : STD_LOGIC; 
  signal Mmux_led1122_0 : STD_LOGIC; 
  signal Mmux_led114_0 : STD_LOGIC; 
  signal kyTr_IBUF_1344 : STD_LOGIC; 
  signal Mmux_led6 : STD_LOGIC; 
  signal inkey_0_0_IBUF_1346 : STD_LOGIC; 
  signal Mmux_led30 : STD_LOGIC; 
  signal inkey_0_4_IBUF_1348 : STD_LOGIC; 
  signal val_PWR_5_o_AND_24_o : STD_LOGIC; 
  signal val_PWR_5_o_AND_28_o1 : STD_LOGIC; 
  signal val_PWR_5_o_AND_32_o1 : STD_LOGIC; 
  signal Mmux_led61_1352 : STD_LOGIC; 
  signal inkey_0_8_IBUF_1353 : STD_LOGIC; 
  signal val_PWR_5_o_AND_8_o : STD_LOGIC; 
  signal val_PWR_5_o_AND_12_o_0 : STD_LOGIC; 
  signal inkey_0_16_IBUF_1356 : STD_LOGIC; 
  signal inkey_0_24_IBUF_1357 : STD_LOGIC; 
  signal Mmux_led113 : STD_LOGIC; 
  signal Mmux_led301_1359 : STD_LOGIC; 
  signal inkey_0_12_IBUF_1360 : STD_LOGIC; 
  signal inkey_0_20_IBUF_1361 : STD_LOGIC; 
  signal inkey_0_28_IBUF_1362 : STD_LOGIC; 
  signal Mmux_led62_1363 : STD_LOGIC; 
  signal inkey_1_8_IBUF_1364 : STD_LOGIC; 
  signal Mmux_led302_1365 : STD_LOGIC; 
  signal inkey_1_12_IBUF_1366 : STD_LOGIC; 
  signal Mmux_led127_1367 : STD_LOGIC; 
  signal val_PWR_5_o_AND_40_o : STD_LOGIC; 
  signal inkey_2_25_IBUF_1369 : STD_LOGIC; 
  signal inkey_2_9_IBUF_1370 : STD_LOGIC; 
  signal Mmux_led63_1371 : STD_LOGIC; 
  signal inkey_1_0_IBUF_1372 : STD_LOGIC; 
  signal val_PWR_5_o_AND_20_o : STD_LOGIC; 
  signal Mmux_led1123 : STD_LOGIC; 
  signal Mmux_led303_1375 : STD_LOGIC; 
  signal inkey_1_4_IBUF_1376 : STD_LOGIC; 
  signal inkey_1_20_IBUF_1377 : STD_LOGIC; 
  signal Mmux_led64_1378 : STD_LOGIC; 
  signal inkey_2_24_IBUF_1379 : STD_LOGIC; 
  signal inkey_2_8_IBUF_1380 : STD_LOGIC; 
  signal Mmux_led304_1381 : STD_LOGIC; 
  signal inkey_2_28_IBUF_1382 : STD_LOGIC; 
  signal inkey_2_12_IBUF_1383 : STD_LOGIC; 
  signal Mmux_led24 : STD_LOGIC; 
  signal inkey_0_3_IBUF_1385 : STD_LOGIC; 
  signal Mmux_led241_1386 : STD_LOGIC; 
  signal inkey_0_11_IBUF_1387 : STD_LOGIC; 
  signal inkey_0_19_IBUF_1388 : STD_LOGIC; 
  signal inkey_0_27_IBUF_1389 : STD_LOGIC; 
  signal Mmux_led126_1390 : STD_LOGIC; 
  signal led_1_OBUF_1391 : STD_LOGIC; 
  signal Mmux_led124_1392 : STD_LOGIC; 
  signal Mmux_led66 : STD_LOGIC; 
  signal inkey_3_0_IBUF_1394 : STD_LOGIC; 
  signal val_PWR_5_o_AND_52_o : STD_LOGIC; 
  signal val_PWR_5_o_AND_56_o_0 : STD_LOGIC; 
  signal inkey_3_8_IBUF_1397 : STD_LOGIC; 
  signal inkey_3_24_IBUF_1398 : STD_LOGIC; 
  signal Mmux_led11111 : STD_LOGIC; 
  signal Mmux_led306 : STD_LOGIC; 
  signal inkey_3_4_IBUF_1401 : STD_LOGIC; 
  signal inkey_3_12_IBUF_1402 : STD_LOGIC; 
  signal inkey_3_28_IBUF_1403 : STD_LOGIC; 
  signal Mmux_led242_1404 : STD_LOGIC; 
  signal inkey_1_11_IBUF_1405 : STD_LOGIC; 
  signal Mmux_led243_1406 : STD_LOGIC; 
  signal inkey_1_3_IBUF_1407 : STD_LOGIC; 
  signal inkey_2_0_IBUF_1408 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal led_0_OBUF_1410 : STD_LOGIC; 
  signal inkey_3_16_IBUF_1411 : STD_LOGIC; 
  signal inkey_2_16_IBUF_1412 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal led_4_OBUF_1414 : STD_LOGIC; 
  signal inkey_3_20_IBUF_1415 : STD_LOGIC; 
  signal inkey_2_20_IBUF_1416 : STD_LOGIC; 
  signal Mmux_led42 : STD_LOGIC; 
  signal inkey_0_6_IBUF_1418 : STD_LOGIC; 
  signal Mmux_led244_1419 : STD_LOGIC; 
  signal inkey_2_27_IBUF_1420 : STD_LOGIC; 
  signal inkey_2_11_IBUF_1421 : STD_LOGIC; 
  signal Mmux_led18 : STD_LOGIC; 
  signal inkey_0_2_IBUF_1423 : STD_LOGIC; 
  signal Mmux_led1221_0 : STD_LOGIC; 
  signal Mmux_led421_1425 : STD_LOGIC; 
  signal inkey_0_14_IBUF_1426 : STD_LOGIC; 
  signal inkey_0_22_IBUF_1427 : STD_LOGIC; 
  signal inkey_0_30_IBUF_1428 : STD_LOGIC; 
  signal Mmux_led181_1429 : STD_LOGIC; 
  signal inkey_0_10_IBUF_1430 : STD_LOGIC; 
  signal inkey_0_18_IBUF_1431 : STD_LOGIC; 
  signal inkey_0_26_IBUF_1432 : STD_LOGIC; 
  signal Mmux_led422_1433 : STD_LOGIC; 
  signal inkey_1_30_IBUF_1434 : STD_LOGIC; 
  signal inkey_1_14_IBUF_1435 : STD_LOGIC; 
  signal inkey_3_3_IBUF_1436 : STD_LOGIC; 
  signal inkey_3_11_IBUF_1437 : STD_LOGIC; 
  signal inkey_3_27_IBUF_1438 : STD_LOGIC; 
  signal Mmux_led182_1439 : STD_LOGIC; 
  signal inkey_1_10_IBUF_1440 : STD_LOGIC; 
  signal Mmux_led423_1441 : STD_LOGIC; 
  signal inkey_1_6_IBUF_1442 : STD_LOGIC; 
  signal inkey_1_22_IBUF_1443 : STD_LOGIC; 
  signal Mmux_led183_1444 : STD_LOGIC; 
  signal inkey_1_2_IBUF_1445 : STD_LOGIC; 
  signal led_3_OBUF_1446 : STD_LOGIC; 
  signal Mmux_led424_1447 : STD_LOGIC; 
  signal inkey_2_30_IBUF_1448 : STD_LOGIC; 
  signal inkey_2_14_IBUF_1449 : STD_LOGIC; 
  signal Mmux_led36 : STD_LOGIC; 
  signal inkey_0_5_IBUF_1451 : STD_LOGIC; 
  signal Mmux_led184_1452 : STD_LOGIC; 
  signal inkey_2_26_IBUF_1453 : STD_LOGIC; 
  signal inkey_2_10_IBUF_1454 : STD_LOGIC; 
  signal Mmux_led361_1455 : STD_LOGIC; 
  signal inkey_0_13_IBUF_1456 : STD_LOGIC; 
  signal inkey_0_21_IBUF_1457 : STD_LOGIC; 
  signal inkey_0_29_IBUF_1458 : STD_LOGIC; 
  signal val_PWR_5_o_AND_52_o11_1459 : STD_LOGIC; 
  signal sw_3_IBUF_1460 : STD_LOGIC; 
  signal sw_4_IBUF_1461 : STD_LOGIC; 
  signal sw_8_IBUF_1462 : STD_LOGIC; 
  signal sw_9_IBUF_1463 : STD_LOGIC; 
  signal sw_11_IBUF_1464 : STD_LOGIC; 
  signal sw_10_IBUF_1465 : STD_LOGIC; 
  signal inkey_3_6_IBUF_1466 : STD_LOGIC; 
  signal inkey_3_14_IBUF_1467 : STD_LOGIC; 
  signal inkey_3_30_IBUF_1468 : STD_LOGIC; 
  signal inkey_1_13_IBUF_1469 : STD_LOGIC; 
  signal inkey_3_2_IBUF_1470 : STD_LOGIC; 
  signal inkey_3_10_IBUF_1471 : STD_LOGIC; 
  signal inkey_3_26_IBUF_1472 : STD_LOGIC; 
  signal val_PWR_5_o_AND_52_o12_1473 : STD_LOGIC; 
  signal sw_12_IBUF_1474 : STD_LOGIC; 
  signal sw_7_IBUF_1475 : STD_LOGIC; 
  signal sw_15_IBUF_1476 : STD_LOGIC; 
  signal sw_14_IBUF_1477 : STD_LOGIC; 
  signal sw_13_IBUF_1478 : STD_LOGIC; 
  signal Mmux_led363_1479 : STD_LOGIC; 
  signal inkey_1_5_IBUF_1480 : STD_LOGIC; 
  signal inkey_1_21_IBUF_1481 : STD_LOGIC; 
  signal sw_6_IBUF_1482 : STD_LOGIC; 
  signal sw_2_IBUF_1483 : STD_LOGIC; 
  signal led_6_OBUF_1484 : STD_LOGIC; 
  signal led_2_OBUF_1485 : STD_LOGIC; 
  signal Mmux_led364_1486 : STD_LOGIC; 
  signal inkey_2_29_IBUF_1487 : STD_LOGIC; 
  signal inkey_2_13_IBUF_1488 : STD_LOGIC; 
  signal inkey_3_5_IBUF_1489 : STD_LOGIC; 
  signal inkey_3_13_IBUF_1490 : STD_LOGIC; 
  signal inkey_3_29_IBUF_1491 : STD_LOGIC; 
  signal led_5_OBUF_1492 : STD_LOGIC; 
  signal Mmux_led48 : STD_LOGIC; 
  signal inkey_0_7_IBUF_1494 : STD_LOGIC; 
  signal Mmux_led481_1495 : STD_LOGIC; 
  signal inkey_0_15_IBUF_1496 : STD_LOGIC; 
  signal inkey_0_23_IBUF_1497 : STD_LOGIC; 
  signal inkey_0_31_IBUF_1498 : STD_LOGIC; 
  signal Mmux_led482_1499 : STD_LOGIC; 
  signal inkey_1_15_IBUF_1500 : STD_LOGIC; 
  signal Mmux_led483_1501 : STD_LOGIC; 
  signal inkey_1_7_IBUF_1502 : STD_LOGIC; 
  signal inkey_1_23_IBUF_1503 : STD_LOGIC; 
  signal Mmux_led484_1504 : STD_LOGIC; 
  signal inkey_2_31_IBUF_1505 : STD_LOGIC; 
  signal inkey_2_15_IBUF_1506 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal inkey_3_23_IBUF_1508 : STD_LOGIC; 
  signal Mmux_led486 : STD_LOGIC; 
  signal inkey_2_23_IBUF_1510 : STD_LOGIC; 
  signal inkey_3_7_IBUF_1511 : STD_LOGIC; 
  signal inkey_3_15_IBUF_1512 : STD_LOGIC; 
  signal inkey_3_31_IBUF_1513 : STD_LOGIC; 
  signal led_7_OBUF_1514 : STD_LOGIC; 
  signal inkey_1_1_IBUF_1515 : STD_LOGIC; 
  signal inkey_3_1_IBUF_1517 : STD_LOGIC; 
  signal inkey_3_9_IBUF_1518 : STD_LOGIC; 
  signal inkey_3_25_IBUF_1519 : STD_LOGIC; 
  signal inkey_0_9_IBUF_1520 : STD_LOGIC; 
  signal inkey_0_17_IBUF_1521 : STD_LOGIC; 
  signal inkey_0_25_IBUF_1522 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal Mmux_led368 : STD_LOGIC; 
  signal Mmux_led248 : STD_LOGIC; 
  signal Mmux_led1211_1526 : STD_LOGIC; 
  signal Mmux_led308 : STD_LOGIC; 
  signal Mmux_led68 : STD_LOGIC; 
  signal Mmux_led488 : STD_LOGIC; 
  signal Mmux_led428 : STD_LOGIC; 
  signal Mmux_led188 : STD_LOGIC; 
  signal Mmux_led362_1532 : STD_LOGIC; 
  signal Mmux_led125_1533 : STD_LOGIC; 
  signal ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_9_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inled_1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_2_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_24_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inled_0_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_31_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inled_2_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_18_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inled_3_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_17_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_4_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_3_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_26_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_19_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_25_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_27_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inled_5_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_6_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_29_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inled_6_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inled_4_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_5_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_28_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_7_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_10_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inled_7_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_9_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_0_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_2_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_8_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_3_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal kyTr_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_20_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_30_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_6_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_5_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_4_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_7_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_14_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_21_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_22_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_11_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_12_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_13_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_15_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_8_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_23_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal out1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_28_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_26_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_24_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_29_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_27_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_18_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_9_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_25_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_31_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_17_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_19_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_16_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_10_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_11_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_30_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_10_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_21_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_12_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_22_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_12_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_31_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_20_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_13_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_23_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_13_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_21_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_20_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_15_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_14_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_11_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_24_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_16_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_15_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_25_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_14_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_26_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_16_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_18_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_23_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_10_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_30_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_31_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_24_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_19_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_17_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_22_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_0_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_27_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_2_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_28_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_27_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_11_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_19_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_3_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal btnl_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_25_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_13_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_4_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_17_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_26_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_0_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_12_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_18_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_3_29_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_15_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_14_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal btnr_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_5_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal val_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_4_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_28_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_2_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_7_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_0_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_29_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_6_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_8_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_5_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_3_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_1_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_0_9_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_6_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_2_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_7_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal Mmux_led114 : STD_LOGIC; 
  signal Mmux_led11111_pack_4 : STD_LOGIC; 
  signal Mmux_led1221_648 : STD_LOGIC; 
  signal val_PWR_5_o_AND_12_o : STD_LOGIC; 
  signal val_PWR_5_o_AND_56_o : STD_LOGIC; 
  signal inkey_1_6_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_13_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_7_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_11_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_14_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_22_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_9_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_5_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_12_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_20_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_30_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_4_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_21_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_3_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_10_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal sw_8_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_23_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_15_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_2_0_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal inkey_1_8_ProtoComp0_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal val_PWR_5_o_AND_28_o1_pack_1 : STD_LOGIC; 
  signal Mmux_led1113 : STD_LOGIC; 
  signal Mmux_led1122 : STD_LOGIC; 
  signal NlwBufferSignal_led_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_led_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_led_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_led_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_led_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_led_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_led_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_led_5_OBUF_I : STD_LOGIC; 
begin
  ProtoComp0_INTERMDISABLE_GND_4 : X_ZERO
    generic map(
      LOC => "IOB_X1Y132"
    )
    port map (
      O => ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_16_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y132"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_16_IBUF_1280,
      I => inkey(1, 16),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_2 : X_ZERO
    generic map(
      LOC => "IOB_X1Y115"
    )
    port map (
      O => inkey_2_1_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y115"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_1_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_1_IBUF_1278,
      I => inkey(2, 1),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_3 : X_ZERO
    generic map(
      LOC => "IOB_X1Y139"
    )
    port map (
      O => inkey_1_9_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_9_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y139"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_9_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_9_IBUF_1279,
      I => inkey(1, 9),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_6 : X_ZERO
    generic map(
      LOC => "IOB_X0Y115"
    )
    port map (
      O => inled_1_ProtoComp0_INTERMDISABLE_GND_0
    );
  inled_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y115"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inled_1_ProtoComp0_INTERMDISABLE_GND_0,
      O => inled_1_IBUF_1282,
      I => inled(1),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_7 : X_ZERO
    generic map(
      LOC => "IOB_X1Y114"
    )
    port map (
      O => inkey_2_2_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y114"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_2_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_2_IBUF_1283,
      I => inkey(2, 2),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_5 : X_ZERO
    generic map(
      LOC => "IOB_X1Y130"
    )
    port map (
      O => inkey_1_24_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_24_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y130"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_24_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_24_IBUF_1281,
      I => inkey(1, 24),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X0Y116"
    )
    port map (
      O => inled_0_ProtoComp0_INTERMDISABLE_GND_0
    );
  inled_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y116"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inled_0_ProtoComp0_INTERMDISABLE_GND_0,
      O => inled_0_IBUF_1277,
      I => inled(0),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X1Y117"
    )
    port map (
      O => inkey_1_31_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_31_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y117"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_31_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_31_IBUF_1276,
      I => inkey(1, 31),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_10 : X_ZERO
    generic map(
      LOC => "IOB_X0Y114"
    )
    port map (
      O => inled_2_ProtoComp0_INTERMDISABLE_GND_0
    );
  inled_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y114"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inled_2_ProtoComp0_INTERMDISABLE_GND_0,
      O => inled_2_IBUF_1286,
      I => inled(2),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_12 : X_ZERO
    generic map(
      LOC => "IOB_X1Y128"
    )
    port map (
      O => inkey_1_18_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_18_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y128"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_18_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_18_IBUF_1288,
      I => inkey(1, 18),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_14 : X_ZERO
    generic map(
      LOC => "IOB_X0Y120"
    )
    port map (
      O => inled_3_ProtoComp0_INTERMDISABLE_GND_0
    );
  inled_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y120"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inled_3_ProtoComp0_INTERMDISABLE_GND_0,
      O => inled_3_IBUF_1290,
      I => inled(3),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_8 : X_ZERO
    generic map(
      LOC => "IOB_X1Y131"
    )
    port map (
      O => inkey_1_17_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_17_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y131"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_17_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_17_IBUF_1284,
      I => inkey(1, 17),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_15 : X_ZERO
    generic map(
      LOC => "IOB_X1Y112"
    )
    port map (
      O => inkey_2_4_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_4_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y112"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_4_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_4_IBUF_1291,
      I => inkey(2, 4),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_11 : X_ZERO
    generic map(
      LOC => "IOB_X1Y113"
    )
    port map (
      O => inkey_2_3_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y113"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_3_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_3_IBUF_1287,
      I => inkey(2, 3),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_13 : X_ZERO
    generic map(
      LOC => "IOB_X1Y122"
    )
    port map (
      O => inkey_1_26_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_26_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y122"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_26_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_26_IBUF_1289,
      I => inkey(1, 26),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_16 : X_ZERO
    generic map(
      LOC => "IOB_X1Y129"
    )
    port map (
      O => inkey_1_19_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_19_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y129"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_19_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_19_IBUF_1292,
      I => inkey(1, 19),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_9 : X_ZERO
    generic map(
      LOC => "IOB_X1Y134"
    )
    port map (
      O => inkey_1_25_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_25_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y134"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_25_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_25_IBUF_1285,
      I => inkey(1, 25),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_17 : X_ZERO
    generic map(
      LOC => "IOB_X1Y121"
    )
    port map (
      O => inkey_1_27_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_27_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y121"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_27_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_27_IBUF_1293,
      I => inkey(1, 27),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_21 : X_ZERO
    generic map(
      LOC => "IOB_X0Y111"
    )
    port map (
      O => inled_5_ProtoComp0_INTERMDISABLE_GND_0
    );
  inled_5_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y111"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inled_5_ProtoComp0_INTERMDISABLE_GND_0,
      O => inled_5_IBUF_1308,
      I => inled(5),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_22 : X_ZERO
    generic map(
      LOC => "IOB_X1Y110"
    )
    port map (
      O => inkey_2_6_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_6_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y110"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_6_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_6_IBUF_1309,
      I => inkey(2, 6),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_23 : X_ZERO
    generic map(
      LOC => "IOB_X1Y119"
    )
    port map (
      O => inkey_1_29_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_29_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y119"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_29_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_29_IBUF_1317,
      I => inkey(1, 29),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_24 : X_ZERO
    generic map(
      LOC => "IOB_X0Y110"
    )
    port map (
      O => inled_6_ProtoComp0_INTERMDISABLE_GND_0
    );
  inled_6_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y110"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inled_6_ProtoComp0_INTERMDISABLE_GND_0,
      O => inled_6_IBUF_1322,
      I => inled(6),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_18 : X_ZERO
    generic map(
      LOC => "IOB_X0Y112"
    )
    port map (
      O => inled_4_ProtoComp0_INTERMDISABLE_GND_0
    );
  inled_4_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y112"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inled_4_ProtoComp0_INTERMDISABLE_GND_0,
      O => inled_4_IBUF_1294,
      I => inled(4),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_19 : X_ZERO
    generic map(
      LOC => "IOB_X1Y111"
    )
    port map (
      O => inkey_2_5_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_5_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y111"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_5_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_5_IBUF_1295,
      I => inkey(2, 5),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_20 : X_ZERO
    generic map(
      LOC => "IOB_X1Y120"
    )
    port map (
      O => inkey_1_28_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_28_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y120"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_28_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_28_IBUF_1303,
      I => inkey(1, 28),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_25 : X_ZERO
    generic map(
      LOC => "IOB_X1Y109"
    )
    port map (
      O => inkey_2_7_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_7_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y109"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_7_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_7_IBUF_1323,
      I => inkey(2, 7),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_34 : X_ZERO
    generic map(
      LOC => "IOB_X1Y106"
    )
    port map (
      O => inkey_2_10_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_10_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y106"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_10_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_10_IBUF_1454,
      I => inkey(2, 10),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_26 : X_ZERO
    generic map(
      LOC => "IOB_X0Y109"
    )
    port map (
      O => inled_7_ProtoComp0_INTERMDISABLE_GND_0
    );
  inled_7_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y109"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inled_7_ProtoComp0_INTERMDISABLE_GND_0,
      O => inled_7_IBUF_1328,
      I => inled(7),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_30 : X_ZERO
    generic map(
      LOC => "IOB_X1Y107"
    )
    port map (
      O => inkey_2_9_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_9_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y107"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_9_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_9_IBUF_1370,
      I => inkey(2, 9),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_27 : X_ZERO
    generic map(
      LOC => "IOB_X0Y81"
    )
    port map (
      O => inkey_3_0_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y81"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_0_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_0_IBUF_1394,
      I => inkey(3, 0),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_31 : X_ZERO
    generic map(
      LOC => "IOB_X0Y86"
    )
    port map (
      O => inkey_3_2_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y86"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_2_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_2_IBUF_1470,
      I => inkey(3, 2),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_28 : X_ZERO
    generic map(
      LOC => "IOB_X1Y108"
    )
    port map (
      O => inkey_2_8_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_8_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y108"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_8_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_8_IBUF_1380,
      I => inkey(2, 8),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_29 : X_ZERO
    generic map(
      LOC => "IOB_X0Y80"
    )
    port map (
      O => inkey_3_1_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y80"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_1_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_1_IBUF_1517,
      I => inkey(3, 1),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_33 : X_ZERO
    generic map(
      LOC => "IOB_X0Y78"
    )
    port map (
      O => inkey_3_3_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y78"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_3_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_3_IBUF_1436,
      I => inkey(3, 3),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_32 : X_ZERO
    generic map(
      LOC => "IOB_X1Y149"
    )
    port map (
      O => kyTr_ProtoComp0_INTERMDISABLE_GND_0
    );
  kyTr_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y149"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => kyTr_ProtoComp0_INTERMDISABLE_GND_0,
      O => kyTr_IBUF_1344,
      I => kyTr,
      TPWRGT => '1'
    );
  led_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y105"
    )
    port map (
      I => NlwBufferSignal_led_3_OBUF_I,
      O => led(3)
    );
  ProtoComp0_INTERMDISABLE_GND_39 : X_ZERO
    generic map(
      LOC => "IOB_X1Y96"
    )
    port map (
      O => inkey_2_20_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_20_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y96"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_20_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_20_IBUF_1416,
      I => inkey(2, 20),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_46 : X_ZERO
    generic map(
      LOC => "IOB_X1Y86"
    )
    port map (
      O => inkey_2_30_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_30_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y86"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_30_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_30_IBUF_1448,
      I => inkey(2, 30),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_40 : X_ZERO
    generic map(
      LOC => "IOB_X0Y82"
    )
    port map (
      O => inkey_3_6_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_6_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y82"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_6_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_6_IBUF_1466,
      I => inkey(3, 6),
      TPWRGT => '1'
    );
  led_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y107"
    )
    port map (
      I => NlwBufferSignal_led_1_OBUF_I,
      O => led(1)
    );
  ProtoComp0_INTERMDISABLE_GND_37 : X_ZERO
    generic map(
      LOC => "IOB_X0Y76"
    )
    port map (
      O => inkey_3_5_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_5_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y76"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_5_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_5_IBUF_1489,
      I => inkey(3, 5),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_35 : X_ZERO
    generic map(
      LOC => "IOB_X0Y77"
    )
    port map (
      O => inkey_3_4_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_4_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y77"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_4_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_4_IBUF_1401,
      I => inkey(3, 4),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_43 : X_ZERO
    generic map(
      LOC => "IOB_X0Y74"
    )
    port map (
      O => inkey_3_7_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_7_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y74"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_7_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_7_IBUF_1511,
      I => inkey(3, 7),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_44 : X_ZERO
    generic map(
      LOC => "IOB_X1Y102"
    )
    port map (
      O => inkey_2_14_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_14_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y102"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_14_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_14_IBUF_1449,
      I => inkey(2, 14),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_42 : X_ZERO
    generic map(
      LOC => "IOB_X1Y95"
    )
    port map (
      O => inkey_2_21_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_21_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y95"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_21_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_21_IBUF_1336,
      I => inkey(2, 21),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_45 : X_ZERO
    generic map(
      LOC => "IOB_X1Y94"
    )
    port map (
      O => inkey_2_22_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_22_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y94"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_22_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_22_IBUF_1301,
      I => inkey(2, 22),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_36 : X_ZERO
    generic map(
      LOC => "IOB_X1Y105"
    )
    port map (
      O => inkey_2_11_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_11_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y105"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_11_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_11_IBUF_1421,
      I => inkey(2, 11),
      TPWRGT => '1'
    );
  led_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y108"
    )
    port map (
      I => NlwBufferSignal_led_0_OBUF_I,
      O => led(0)
    );
  led_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y106"
    )
    port map (
      I => NlwBufferSignal_led_2_OBUF_I,
      O => led(2)
    );
  led_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y104"
    )
    port map (
      I => NlwBufferSignal_led_4_OBUF_I,
      O => led(4)
    );
  ProtoComp0_INTERMDISABLE_GND_38 : X_ZERO
    generic map(
      LOC => "IOB_X1Y104"
    )
    port map (
      O => inkey_2_12_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_12_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y104"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_12_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_12_IBUF_1383,
      I => inkey(2, 12),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_41 : X_ZERO
    generic map(
      LOC => "IOB_X1Y103"
    )
    port map (
      O => inkey_2_13_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_13_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y103"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_13_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_13_IBUF_1488,
      I => inkey(2, 13),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_48 : X_ZERO
    generic map(
      LOC => "IOB_X1Y101"
    )
    port map (
      O => inkey_2_15_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_15_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y101"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_15_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_15_IBUF_1506,
      I => inkey(2, 15),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_47 : X_ZERO
    generic map(
      LOC => "IOB_X0Y73"
    )
    port map (
      O => inkey_3_8_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_8_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y73"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_8_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_8_IBUF_1397,
      I => inkey(3, 8),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_49 : X_ZERO
    generic map(
      LOC => "IOB_X1Y93"
    )
    port map (
      O => inkey_2_23_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_23_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y93"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_23_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_23_IBUF_1510,
      I => inkey(2, 23),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_56 : X_ZERO
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      O => out1_ProtoComp0_INTERMDISABLE_GND_0
    );
  out1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => out1_ProtoComp0_INTERMDISABLE_GND_0,
      O => out1_IBUF_1311,
      I => out1,
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_61 : X_ZERO
    generic map(
      LOC => "IOB_X1Y88"
    )
    port map (
      O => inkey_2_28_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_28_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y88"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_28_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_28_IBUF_1382,
      I => inkey(2, 28),
      TPWRGT => '1'
    );
  led_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y102"
    )
    port map (
      I => NlwBufferSignal_led_6_OBUF_I,
      O => led(6)
    );
  ProtoComp0_INTERMDISABLE_GND_58 : X_ZERO
    generic map(
      LOC => "IOB_X1Y90"
    )
    port map (
      O => inkey_2_26_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_26_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y90"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_26_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_26_IBUF_1453,
      I => inkey(2, 26),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_53 : X_ZERO
    generic map(
      LOC => "IOB_X1Y92"
    )
    port map (
      O => inkey_2_24_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_24_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y92"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_24_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_24_IBUF_1379,
      I => inkey(2, 24),
      TPWRGT => '1'
    );
  led_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y101"
    )
    port map (
      I => NlwBufferSignal_led_7_OBUF_I,
      O => led(7)
    );
  ProtoComp0_INTERMDISABLE_GND_62 : X_ZERO
    generic map(
      LOC => "IOB_X1Y87"
    )
    port map (
      O => inkey_2_29_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_29_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y87"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_29_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_29_IBUF_1487,
      I => inkey(2, 29),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_60 : X_ZERO
    generic map(
      LOC => "IOB_X1Y89"
    )
    port map (
      O => inkey_2_27_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_27_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y89"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_27_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_27_IBUF_1420,
      I => inkey(2, 27),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_57 : X_ZERO
    generic map(
      LOC => "IOB_X1Y98"
    )
    port map (
      O => inkey_2_18_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_18_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y98"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_18_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_18_IBUF_1307,
      I => inkey(2, 18),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_51 : X_ZERO
    generic map(
      LOC => "IOB_X0Y72"
    )
    port map (
      O => inkey_3_9_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_9_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y72"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_9_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_9_IBUF_1518,
      I => inkey(3, 9),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_55 : X_ZERO
    generic map(
      LOC => "IOB_X1Y91"
    )
    port map (
      O => inkey_2_25_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_25_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y91"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_25_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_25_IBUF_1369,
      I => inkey(2, 25),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_50 : X_ZERO
    generic map(
      LOC => "IOB_X1Y85"
    )
    port map (
      O => inkey_2_31_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_31_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y85"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_31_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_31_IBUF_1505,
      I => inkey(2, 31),
      TPWRGT => '1'
    );
  led_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y103"
    )
    port map (
      I => NlwBufferSignal_led_5_OBUF_I,
      O => led(5)
    );
  ProtoComp0_INTERMDISABLE_GND_54 : X_ZERO
    generic map(
      LOC => "IOB_X1Y99"
    )
    port map (
      O => inkey_2_17_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_17_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y99"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_17_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_17_IBUF_1332,
      I => inkey(2, 17),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_59 : X_ZERO
    generic map(
      LOC => "IOB_X1Y97"
    )
    port map (
      O => inkey_2_19_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_19_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y97"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_19_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_19_IBUF_1327,
      I => inkey(2, 19),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_52 : X_ZERO
    generic map(
      LOC => "IOB_X1Y100"
    )
    port map (
      O => inkey_2_16_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_16_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y100"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_16_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_16_IBUF_1412,
      I => inkey(2, 16),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_63 : X_ZERO
    generic map(
      LOC => "IOB_X0Y71"
    )
    port map (
      O => inkey_3_10_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_10_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y71"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_10_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_10_IBUF_1471,
      I => inkey(3, 10),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_64 : X_ZERO
    generic map(
      LOC => "IOB_X0Y70"
    )
    port map (
      O => inkey_3_11_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_11_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y70"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_11_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_11_IBUF_1437,
      I => inkey(3, 11),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_73 : X_ZERO
    generic map(
      LOC => "IOB_X0Y51"
    )
    port map (
      O => inkey_3_30_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_30_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y51"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_30_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_30_IBUF_1468,
      I => inkey(3, 30),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_67 : X_ZERO
    generic map(
      LOC => "IOB_X0Y138"
    )
    port map (
      O => inkey_0_10_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_10_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y138"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_10_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_10_IBUF_1430,
      I => inkey(0, 10),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_80 : X_ZERO
    generic map(
      LOC => "IOB_X0Y127"
    )
    port map (
      O => inkey_0_21_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_21_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y127"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_21_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_21_IBUF_1457,
      I => inkey(0, 21),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_74 : X_ZERO
    generic map(
      LOC => "IOB_X0Y136"
    )
    port map (
      O => inkey_0_12_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_12_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y136"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_12_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_12_IBUF_1360,
      I => inkey(0, 12),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_72 : X_ZERO
    generic map(
      LOC => "IOB_X0Y59"
    )
    port map (
      O => inkey_3_22_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_22_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y59"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_22_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_22_IBUF_1299,
      I => inkey(3, 22),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_65 : X_ZERO
    generic map(
      LOC => "IOB_X0Y69"
    )
    port map (
      O => inkey_3_12_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_12_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y69"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_12_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_12_IBUF_1402,
      I => inkey(3, 12),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_78 : X_ZERO
    generic map(
      LOC => "IOB_X0Y50"
    )
    port map (
      O => inkey_3_31_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_31_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y50"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_31_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_31_IBUF_1513,
      I => inkey(3, 31),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_75 : X_ZERO
    generic map(
      LOC => "IOB_X0Y124"
    )
    port map (
      O => inkey_0_20_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_20_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y124"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_20_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_20_IBUF_1361,
      I => inkey(0, 20),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_79 : X_ZERO
    generic map(
      LOC => "IOB_X0Y135"
    )
    port map (
      O => inkey_0_13_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_13_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y135"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_13_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_13_IBUF_1456,
      I => inkey(0, 13),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_77 : X_ZERO
    generic map(
      LOC => "IOB_X0Y58"
    )
    port map (
      O => inkey_3_23_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_23_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y58"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_23_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_23_IBUF_1508,
      I => inkey(3, 23),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_68 : X_ZERO
    generic map(
      LOC => "IOB_X0Y68"
    )
    port map (
      O => inkey_3_13_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_13_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y68"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_13_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_13_IBUF_1490,
      I => inkey(3, 13),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_69 : X_ZERO
    generic map(
      LOC => "IOB_X0Y60"
    )
    port map (
      O => inkey_3_21_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_21_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y60"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_21_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_21_IBUF_1334,
      I => inkey(3, 21),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_66 : X_ZERO
    generic map(
      LOC => "IOB_X0Y61"
    )
    port map (
      O => inkey_3_20_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_20_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y61"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_20_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_20_IBUF_1415,
      I => inkey(3, 20),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_76 : X_ZERO
    generic map(
      LOC => "IOB_X0Y66"
    )
    port map (
      O => inkey_3_15_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_15_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y66"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_15_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_15_IBUF_1512,
      I => inkey(3, 15),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_71 : X_ZERO
    generic map(
      LOC => "IOB_X0Y67"
    )
    port map (
      O => inkey_3_14_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_14_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y67"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_14_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_14_IBUF_1467,
      I => inkey(3, 14),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_70 : X_ZERO
    generic map(
      LOC => "IOB_X0Y137"
    )
    port map (
      O => inkey_0_11_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_11_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y137"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_11_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_11_IBUF_1387,
      I => inkey(0, 11),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_82 : X_ZERO
    generic map(
      LOC => "IOB_X0Y57"
    )
    port map (
      O => inkey_3_24_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_24_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y57"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_24_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_24_IBUF_1398,
      I => inkey(3, 24),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_81 : X_ZERO
    generic map(
      LOC => "IOB_X0Y65"
    )
    port map (
      O => inkey_3_16_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_16_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y65"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_16_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_16_IBUF_1411,
      I => inkey(3, 16),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_89 : X_ZERO
    generic map(
      LOC => "IOB_X0Y133"
    )
    port map (
      O => inkey_0_15_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_15_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y133"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_15_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_15_IBUF_1496,
      I => inkey(0, 15),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_87 : X_ZERO
    generic map(
      LOC => "IOB_X0Y56"
    )
    port map (
      O => inkey_3_25_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_25_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y56"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_25_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_25_IBUF_1519,
      I => inkey(3, 25),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_83 : X_ZERO
    generic map(
      LOC => "IOB_X0Y134"
    )
    port map (
      O => inkey_0_14_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_14_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y134"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_14_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_14_IBUF_1426,
      I => inkey(0, 14),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_93 : X_ZERO
    generic map(
      LOC => "IOB_X0Y55"
    )
    port map (
      O => inkey_3_26_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_26_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y55"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_26_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_26_IBUF_1472,
      I => inkey(3, 26),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_95 : X_ZERO
    generic map(
      LOC => "IOB_X0Y132"
    )
    port map (
      O => inkey_0_16_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_16_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y132"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_16_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_16_IBUF_1356,
      I => inkey(0, 16),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_92 : X_ZERO
    generic map(
      LOC => "IOB_X0Y63"
    )
    port map (
      O => inkey_3_18_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_18_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y63"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_18_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_18_IBUF_1305,
      I => inkey(3, 18),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_94 : X_ZERO
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      O => inkey_0_1_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_1_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_1_IBUF_1339,
      I => inkey(0, 1),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_90 : X_ZERO
    generic map(
      LOC => "IOB_X0Y121"
    )
    port map (
      O => inkey_0_23_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_23_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y121"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_23_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_23_IBUF_1497,
      I => inkey(0, 23),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_97 : X_ZERO
    generic map(
      LOC => "IOB_X0Y94"
    )
    port map (
      O => sw_10_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_10_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y94"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_10_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_10_IBUF_1465,
      I => sw(10),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_85 : X_ZERO
    generic map(
      LOC => "IOB_X0Y118"
    )
    port map (
      O => inkey_0_30_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_30_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y118"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_30_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_30_IBUF_1428,
      I => inkey(0, 30),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_91 : X_ZERO
    generic map(
      LOC => "IOB_X0Y117"
    )
    port map (
      O => inkey_0_31_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_31_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y117"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_31_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_31_IBUF_1498,
      I => inkey(0, 31),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_96 : X_ZERO
    generic map(
      LOC => "IOB_X0Y128"
    )
    port map (
      O => inkey_0_24_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_24_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y128"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_24_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_24_IBUF_1357,
      I => inkey(0, 24),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_98 : X_ZERO
    generic map(
      LOC => "IOB_X0Y62"
    )
    port map (
      O => inkey_3_19_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_19_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y62"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_19_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_19_IBUF_1325,
      I => inkey(3, 19),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_86 : X_ZERO
    generic map(
      LOC => "IOB_X0Y64"
    )
    port map (
      O => inkey_3_17_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_17_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y64"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_17_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_17_IBUF_1330,
      I => inkey(3, 17),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_84 : X_ZERO
    generic map(
      LOC => "IOB_X0Y119"
    )
    port map (
      O => inkey_0_22_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_22_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y119"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_22_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_22_IBUF_1427,
      I => inkey(0, 22),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_88 : X_ZERO
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      O => inkey_0_0_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_0_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_0_IBUF_1346,
      I => inkey(0, 0),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_99 : X_ZERO
    generic map(
      LOC => "IOB_X0Y54"
    )
    port map (
      O => inkey_3_27_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_27_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y54"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_27_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_27_IBUF_1438,
      I => inkey(3, 27),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_100 : X_ZERO
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      O => inkey_0_2_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_2_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_2_IBUF_1423,
      I => inkey(0, 2),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_104 : X_ZERO
    generic map(
      LOC => "IOB_X0Y53"
    )
    port map (
      O => inkey_3_28_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_28_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y53"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_28_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_28_IBUF_1403,
      I => inkey(3, 28),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_114 : X_ZERO
    generic map(
      LOC => "IOB_X0Y125"
    )
    port map (
      O => inkey_0_27_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_27_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y125"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_27_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_27_IBUF_1389,
      I => inkey(0, 27),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_103 : X_ZERO
    generic map(
      LOC => "IOB_X0Y89"
    )
    port map (
      O => sw_11_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_11_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y89"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_11_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_11_IBUF_1464,
      I => sw(11),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_113 : X_ZERO
    generic map(
      LOC => "IOB_X0Y129"
    )
    port map (
      O => inkey_0_19_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_19_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y129"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_19_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_19_IBUF_1388,
      I => inkey(0, 19),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_105 : X_ZERO
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      O => inkey_0_3_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_3_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_3_IBUF_1385,
      I => inkey(0, 3),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_111 : X_ZERO
    generic map(
      LOC => "IOB_X0Y98"
    )
    port map (
      O => btnl_ProtoComp0_INTERMDISABLE_GND_0
    );
  btnl_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y98"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => btnl_ProtoComp0_INTERMDISABLE_GND_0,
      O => btnl_IBUF_1312,
      I => btnl,
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_102 : X_ZERO
    generic map(
      LOC => "IOB_X0Y113"
    )
    port map (
      O => inkey_0_25_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_25_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y113"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_25_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_25_IBUF_1522,
      I => inkey(0, 25),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_116 : X_ZERO
    generic map(
      LOC => "IOB_X0Y87"
    )
    port map (
      O => sw_13_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_13_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y87"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_13_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_13_IBUF_1478,
      I => sw(13),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_112 : X_ZERO
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      O => inkey_0_4_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_4_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_4_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_4_IBUF_1348,
      I => inkey(0, 4),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_101 : X_ZERO
    generic map(
      LOC => "IOB_X0Y131"
    )
    port map (
      O => inkey_0_17_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_17_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y131"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_17_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_17_IBUF_1521,
      I => inkey(0, 17),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_107 : X_ZERO
    generic map(
      LOC => "IOB_X0Y126"
    )
    port map (
      O => inkey_0_26_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_26_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y126"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_26_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_26_IBUF_1432,
      I => inkey(0, 26),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_108 : X_ZERO
    generic map(
      LOC => "IOB_X0Y84"
    )
    port map (
      O => sw_0_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y84"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_0_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_0_IBUF_1320,
      I => sw(0),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_109 : X_ZERO
    generic map(
      LOC => "IOB_X0Y92"
    )
    port map (
      O => sw_12_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_12_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y92"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_12_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_12_IBUF_1474,
      I => sw(12),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_106 : X_ZERO
    generic map(
      LOC => "IOB_X0Y130"
    )
    port map (
      O => inkey_0_18_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_18_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y130"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_18_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_18_IBUF_1431,
      I => inkey(0, 18),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_110 : X_ZERO
    generic map(
      LOC => "IOB_X0Y52"
    )
    port map (
      O => inkey_3_29_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_3_29_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y52"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_3_29_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_3_29_IBUF_1491,
      I => inkey(3, 29),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_115 : X_ZERO
    generic map(
      LOC => "IOB_X0Y79"
    )
    port map (
      O => sw_1_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y79"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_1_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_1_IBUF_1321,
      I => sw(1),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_124 : X_ZERO
    generic map(
      LOC => "IOB_X0Y85"
    )
    port map (
      O => sw_15_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_15_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y85"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_15_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_15_IBUF_1476,
      I => sw(15),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_120 : X_ZERO
    generic map(
      LOC => "IOB_X0Y90"
    )
    port map (
      O => sw_14_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_14_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y90"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_14_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_14_IBUF_1477,
      I => sw(14),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_125 : X_ZERO
    generic map(
      LOC => "IOB_X0Y100"
    )
    port map (
      O => btnr_ProtoComp0_INTERMDISABLE_GND_0
    );
  btnr_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y100"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => btnr_ProtoComp0_INTERMDISABLE_GND_0,
      O => btnr_IBUF_1313,
      I => btnr,
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_117 : X_ZERO
    generic map(
      LOC => "IOB_X0Y143"
    )
    port map (
      O => inkey_0_5_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_5_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y143"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_5_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_5_IBUF_1451,
      I => inkey(0, 5),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_126 : X_ZERO
    generic map(
      LOC => "IOB_X0Y83"
    )
    port map (
      O => val_ProtoComp0_INTERMDISABLE_GND_0
    );
  val_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y83"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => val_ProtoComp0_INTERMDISABLE_GND_0,
      O => val_IBUF_1314,
      I => val,
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_128 : X_ZERO
    generic map(
      LOC => "IOB_X0Y99"
    )
    port map (
      O => sw_4_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_4_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y99"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_4_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_4_IBUF_1461,
      I => sw(4),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_118 : X_ZERO
    generic map(
      LOC => "IOB_X0Y123"
    )
    port map (
      O => inkey_0_28_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_28_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y123"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_28_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_28_IBUF_1362,
      I => inkey(0, 28),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_119 : X_ZERO
    generic map(
      LOC => "IOB_X0Y95"
    )
    port map (
      O => sw_2_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y95"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_2_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_2_IBUF_1483,
      I => sw(2),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_127 : X_ZERO
    generic map(
      LOC => "IOB_X0Y141"
    )
    port map (
      O => inkey_0_7_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_7_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y141"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_7_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_7_IBUF_1494,
      I => inkey(0, 7),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_129 : X_ZERO
    generic map(
      LOC => "IOB_X1Y148"
    )
    port map (
      O => inkey_1_0_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y148"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_0_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_0_IBUF_1372,
      I => inkey(1, 0),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_122 : X_ZERO
    generic map(
      LOC => "IOB_X0Y122"
    )
    port map (
      O => inkey_0_29_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_29_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y122"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_29_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_29_IBUF_1458,
      I => inkey(0, 29),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_121 : X_ZERO
    generic map(
      LOC => "IOB_X0Y142"
    )
    port map (
      O => inkey_0_6_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_6_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y142"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_6_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_6_IBUF_1418,
      I => inkey(0, 6),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_130 : X_ZERO
    generic map(
      LOC => "IOB_X0Y140"
    )
    port map (
      O => inkey_0_8_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_8_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y140"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_8_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_8_IBUF_1353,
      I => inkey(0, 8),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_131 : X_ZERO
    generic map(
      LOC => "IOB_X0Y75"
    )
    port map (
      O => sw_5_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_5_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y75"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_5_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_5_IBUF_1315,
      I => sw(5),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_123 : X_ZERO
    generic map(
      LOC => "IOB_X0Y97"
    )
    port map (
      O => sw_3_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y97"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_3_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_3_IBUF_1460,
      I => sw(3),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_132 : X_ZERO
    generic map(
      LOC => "IOB_X1Y147"
    )
    port map (
      O => inkey_1_1_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y147"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_1_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_1_IBUF_1515,
      I => inkey(1, 1),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_133 : X_ZERO
    generic map(
      LOC => "IOB_X0Y139"
    )
    port map (
      O => inkey_0_9_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_0_9_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y139"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_0_9_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_0_9_IBUF_1520,
      I => inkey(0, 9),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_134 : X_ZERO
    generic map(
      LOC => "IOB_X0Y91"
    )
    port map (
      O => sw_6_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_6_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y91"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_6_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_6_IBUF_1482,
      I => sw(6),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_135 : X_ZERO
    generic map(
      LOC => "IOB_X1Y146"
    )
    port map (
      O => inkey_1_2_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_2_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y146"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_2_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_2_IBUF_1445,
      I => inkey(1, 2),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_136 : X_ZERO
    generic map(
      LOC => "IOB_X0Y93"
    )
    port map (
      O => sw_7_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_7_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y93"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_7_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_7_IBUF_1475,
      I => sw(7),
      TPWRGT => '1'
    );
  Mmux_led301 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y116",
      INIT => X"EAEAC0C0EAEAC0C0"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR1 => inled_4_IBUF_1294,
      ADR2 => Mmux_led123_1338,
      ADR0 => inkey_0_4_IBUF_1348,
      ADR4 => Mmux_led122_1340,
      O => Mmux_led30
    );
  Mmux_led361 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y116",
      INIT => X"FFFF888888888888"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => inled_5_IBUF_1308,
      ADR0 => Mmux_led123_1338,
      ADR5 => inkey_0_5_IBUF_1451,
      ADR4 => Mmux_led122_1340,
      O => Mmux_led36
    );
  Mmux_led302 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y123",
      INIT => X"FFFFEAC0AA00EAC0"
    )
    port map (
      ADR5 => inkey_0_12_IBUF_1360,
      ADR4 => val_PWR_5_o_AND_8_o,
      ADR2 => inkey_0_20_IBUF_1361,
      ADR1 => val_PWR_5_o_AND_12_o_0,
      ADR0 => Mmux_led113,
      ADR3 => inkey_0_28_IBUF_1362,
      O => Mmux_led301_1359
    );
  Mmux_led362 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y123",
      INIT => X"FEEEF444FAAAF000"
    )
    port map (
      ADR4 => inkey_0_13_IBUF_1456,
      ADR0 => val_PWR_5_o_AND_8_o,
      ADR1 => inkey_0_21_IBUF_1457,
      ADR5 => val_PWR_5_o_AND_12_o_0,
      ADR3 => Mmux_led113,
      ADR2 => inkey_0_29_IBUF_1458,
      O => Mmux_led361_1455
    );
  val_PWR_5_o_AND_20_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y103",
      INIT => X"0000100000000000"
    )
    port map (
      ADR2 => val_IBUF_1314,
      ADR3 => val_PWR_5_o_AND_20_o1_1319,
      ADR4 => sw_0_IBUF_1320,
      ADR1 => sw_1_IBUF_1321,
      ADR0 => sw_5_IBUF_1315,
      ADR5 => val_PWR_5_o_AND_52_o1,
      O => val_PWR_5_o_AND_20_o
    );
  val_PWR_5_o_AND_52_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y103",
      INIT => X"A0A0000000000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => sw_6_IBUF_1482,
      ADR5 => sw_2_IBUF_1483,
      ADR0 => val_PWR_5_o_AND_52_o12_1473,
      ADR2 => val_PWR_5_o_AND_52_o11_1459,
      O => val_PWR_5_o_AND_52_o1
    );
  Mmux_led307 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y100",
      INIT => X"FFF888F8FF888888"
    )
    port map (
      ADR4 => inkey_3_4_IBUF_1401,
      ADR3 => val_PWR_5_o_AND_52_o,
      ADR5 => val_PWR_5_o_AND_56_o_0,
      ADR2 => inkey_3_12_IBUF_1402,
      ADR0 => inkey_3_28_IBUF_1403,
      ADR1 => Mmux_led11111,
      O => Mmux_led306
    );
  Mmux_led481 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y115",
      INIT => X"FFAAAAAAFF000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => inled_7_IBUF_1328,
      ADR4 => Mmux_led123_1338,
      ADR5 => inkey_0_7_IBUF_1494,
      ADR0 => Mmux_led122_1340,
      O => Mmux_led48
    );
  Mmux_led61 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y115",
      INIT => X"EEEEAAAACCCC0000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => inled_0_IBUF_1277,
      ADR0 => Mmux_led123_1338,
      ADR1 => inkey_0_0_IBUF_1346,
      ADR4 => Mmux_led122_1340,
      O => Mmux_led6
    );
  Mmux_led113_Mmux_led113_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_led114,
      O => Mmux_led114_0
    );
  Mmux_led1131 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y117",
      INIT => X"0000800000008000"
    )
    port map (
      ADR3 => Mmux_led1221_0,
      ADR0 => sw_0_IBUF_1320,
      ADR1 => sw_1_IBUF_1321,
      ADR4 => sw_5_IBUF_1315,
      ADR2 => val_PWR_5_o_AND_52_o1,
      ADR5 => '1',
      O => Mmux_led113
    );
  Mmux_led1141 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y117",
      INIT => X"FFFF1FFF"
    )
    port map (
      ADR3 => Mmux_led1221_0,
      ADR0 => sw_0_IBUF_1320,
      ADR1 => sw_1_IBUF_1321,
      ADR4 => sw_5_IBUF_1315,
      ADR2 => val_PWR_5_o_AND_52_o1,
      O => Mmux_led114
    );
  Mmux_led124 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y117",
      INIT => X"FFCAFFC0CACAC0C0"
    )
    port map (
      ADR1 => inkey_0_9_IBUF_1520,
      ADR2 => val_PWR_5_o_AND_8_o,
      ADR0 => val_PWR_5_o_AND_12_o_0,
      ADR4 => inkey_0_17_IBUF_1521,
      ADR5 => inkey_0_25_IBUF_1522,
      ADR3 => Mmux_led113,
      O => Mmux_led124_1392
    );
  Mmux_led422 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y119",
      INIT => X"FFF8FF08F8F80808"
    )
    port map (
      ADR4 => inkey_0_14_IBUF_1426,
      ADR2 => val_PWR_5_o_AND_8_o,
      ADR0 => inkey_0_22_IBUF_1427,
      ADR1 => val_PWR_5_o_AND_12_o_0,
      ADR5 => Mmux_led113,
      ADR3 => inkey_0_30_IBUF_1428,
      O => Mmux_led421_1425
    );
  Mmux_led427 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y101",
      INIT => X"F8F8F8F8FF888888"
    )
    port map (
      ADR2 => inkey_3_6_IBUF_1466,
      ADR5 => val_PWR_5_o_AND_52_o,
      ADR4 => val_PWR_5_o_AND_56_o_0,
      ADR3 => inkey_3_14_IBUF_1467,
      ADR1 => inkey_3_30_IBUF_1468,
      ADR0 => Mmux_led11111,
      O => Mmux_led426
    );
  Mmux_led367 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y101",
      INIT => X"FAEEF0CCFAAAF000"
    )
    port map (
      ADR2 => inkey_3_5_IBUF_1489,
      ADR3 => val_PWR_5_o_AND_52_o,
      ADR1 => val_PWR_5_o_AND_56_o_0,
      ADR5 => inkey_3_13_IBUF_1490,
      ADR0 => inkey_3_29_IBUF_1491,
      ADR4 => Mmux_led11111,
      O => Mmux_led366
    );
  Mmux_led11113_Mmux_led11113_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_led11111_pack_4,
      O => Mmux_led11111
    );
  Mmux_led111131 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y100",
      INIT => X"0080000000800000"
    )
    port map (
      ADR0 => val_PWR_5_o_AND_52_o1,
      ADR1 => sw_1_IBUF_1321,
      ADR2 => sw_5_IBUF_1315,
      ADR3 => sw_0_IBUF_1320,
      ADR4 => Mmux_led1221_0,
      ADR5 => '1',
      O => Mmux_led11113
    );
  Mmux_led111111 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y100",
      INIT => X"80000000"
    )
    port map (
      ADR0 => val_PWR_5_o_AND_52_o1,
      ADR1 => sw_1_IBUF_1321,
      ADR2 => sw_5_IBUF_1315,
      ADR3 => sw_0_IBUF_1320,
      ADR4 => Mmux_led1221_0,
      O => Mmux_led11111_pack_4
    );
  Mmux_led129 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y100",
      INIT => X"FFB8FF88B8B88888"
    )
    port map (
      ADR0 => inkey_3_1_IBUF_1517,
      ADR1 => val_PWR_5_o_AND_52_o,
      ADR2 => val_PWR_5_o_AND_56_o_0,
      ADR4 => inkey_3_9_IBUF_1518,
      ADR3 => inkey_3_25_IBUF_1519,
      ADR5 => Mmux_led11111,
      O => Mmux_led129_1331
    );
  Mmux_led247 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y100",
      INIT => X"FBF3EAC0EAC0EAC0"
    )
    port map (
      ADR2 => inkey_3_3_IBUF_1436,
      ADR1 => val_PWR_5_o_AND_52_o,
      ADR5 => val_PWR_5_o_AND_56_o_0,
      ADR4 => inkey_3_11_IBUF_1437,
      ADR0 => inkey_3_27_IBUF_1438,
      ADR3 => Mmux_led11111,
      O => Mmux_led246
    );
  val_PWR_5_o_AND_20_o1_val_PWR_5_o_AND_20_o1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_led1221_648,
      O => Mmux_led1221_0
    );
  val_PWR_5_o_AND_20_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y103",
      INIT => X"00A000A000A000A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => btnr_IBUF_1313,
      ADR0 => btnl_IBUF_1312,
      ADR3 => out1_IBUF_1311,
      ADR5 => '1',
      O => val_PWR_5_o_AND_20_o1_1319
    );
  Mmux_led12211 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y103",
      INIT => X"20002000"
    )
    port map (
      ADR4 => '1',
      ADR1 => val_IBUF_1314,
      ADR2 => btnr_IBUF_1313,
      ADR0 => btnl_IBUF_1312,
      ADR3 => out1_IBUF_1311,
      O => Mmux_led1221_648
    );
  val_PWR_5_o_AND_8_o_val_PWR_5_o_AND_8_o_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => val_PWR_5_o_AND_12_o,
      O => val_PWR_5_o_AND_12_o_0
    );
  val_PWR_5_o_AND_8_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y117",
      INIT => X"0008000000080000"
    )
    port map (
      ADR1 => Mmux_led1221_0,
      ADR0 => sw_0_IBUF_1320,
      ADR3 => sw_1_IBUF_1321,
      ADR2 => sw_5_IBUF_1315,
      ADR4 => val_PWR_5_o_AND_52_o1,
      ADR5 => '1',
      O => val_PWR_5_o_AND_8_o
    );
  val_PWR_5_o_AND_12_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y117",
      INIT => X"04000000"
    )
    port map (
      ADR1 => Mmux_led1221_0,
      ADR0 => sw_0_IBUF_1320,
      ADR3 => sw_1_IBUF_1321,
      ADR2 => sw_5_IBUF_1315,
      ADR4 => val_PWR_5_o_AND_52_o1,
      O => val_PWR_5_o_AND_12_o
    );
  Mmux_led482 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => X"FF8FF888F888F888"
    )
    port map (
      ADR3 => inkey_0_15_IBUF_1496,
      ADR2 => val_PWR_5_o_AND_8_o,
      ADR4 => inkey_0_23_IBUF_1497,
      ADR5 => val_PWR_5_o_AND_12_o_0,
      ADR1 => Mmux_led113,
      ADR0 => inkey_0_31_IBUF_1498,
      O => Mmux_led481_1495
    );
  Mmux_led1221 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y117",
      INIT => X"0002000000000000"
    )
    port map (
      ADR5 => kyTr_IBUF_1344,
      ADR4 => Mmux_led1221_0,
      ADR3 => sw_0_IBUF_1320,
      ADR1 => sw_1_IBUF_1321,
      ADR2 => sw_5_IBUF_1315,
      ADR0 => val_PWR_5_o_AND_52_o1,
      O => Mmux_led122_1340
    );
  Mmux_led241 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y118",
      INIT => X"FAFAAAAAF0F00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => inled_3_IBUF_1290,
      ADR4 => Mmux_led123_1338,
      ADR0 => inkey_0_3_IBUF_1385,
      ADR5 => Mmux_led122_1340,
      O => Mmux_led24
    );
  Mmux_led187 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"FF8FF888F888F888"
    )
    port map (
      ADR3 => inkey_3_2_IBUF_1470,
      ADR2 => val_PWR_5_o_AND_52_o,
      ADR5 => val_PWR_5_o_AND_56_o_0,
      ADR4 => inkey_3_10_IBUF_1471,
      ADR1 => inkey_3_26_IBUF_1472,
      ADR0 => Mmux_led11111,
      O => Mmux_led186
    );
  Mmux_led67 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"FECEFA0AFCCCF000"
    )
    port map (
      ADR3 => inkey_3_0_IBUF_1394,
      ADR2 => val_PWR_5_o_AND_52_o,
      ADR5 => val_PWR_5_o_AND_56_o_0,
      ADR0 => inkey_3_8_IBUF_1397,
      ADR1 => inkey_3_24_IBUF_1398,
      ADR4 => Mmux_led11111,
      O => Mmux_led66
    );
  val_PWR_5_o_AND_52_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => sw_3_IBUF_1460,
      ADR3 => sw_4_IBUF_1461,
      ADR1 => sw_8_IBUF_1462,
      ADR0 => sw_9_IBUF_1463,
      ADR5 => sw_11_IBUF_1464,
      ADR4 => sw_10_IBUF_1465,
      O => val_PWR_5_o_AND_52_o11_1459
    );
  Mmux_led62 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => X"FFEAFFC0AAEA00C0"
    )
    port map (
      ADR5 => inkey_0_8_IBUF_1353,
      ADR3 => val_PWR_5_o_AND_8_o,
      ADR1 => val_PWR_5_o_AND_12_o_0,
      ADR2 => inkey_0_16_IBUF_1356,
      ADR0 => inkey_0_24_IBUF_1357,
      ADR4 => Mmux_led113,
      O => Mmux_led61_1352
    );
  Mmux_led242 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => X"FEF4EE44FAF0AA00"
    )
    port map (
      ADR3 => inkey_0_11_IBUF_1387,
      ADR0 => val_PWR_5_o_AND_8_o,
      ADR1 => inkey_0_19_IBUF_1388,
      ADR5 => val_PWR_5_o_AND_12_o_0,
      ADR2 => Mmux_led113,
      ADR4 => inkey_0_27_IBUF_1389,
      O => Mmux_led241_1386
    );
  val_PWR_5_o_AND_52_o_val_PWR_5_o_AND_52_o_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => val_PWR_5_o_AND_56_o,
      O => val_PWR_5_o_AND_56_o_0
    );
  val_PWR_5_o_AND_52_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y101",
      INIT => X"0000200000002000"
    )
    port map (
      ADR0 => sw_5_IBUF_1315,
      ADR3 => val_PWR_5_o_AND_52_o1,
      ADR1 => sw_0_IBUF_1320,
      ADR4 => sw_1_IBUF_1321,
      ADR2 => Mmux_led1221_0,
      ADR5 => '1',
      O => val_PWR_5_o_AND_52_o
    );
  val_PWR_5_o_AND_56_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y101",
      INIT => X"00008000"
    )
    port map (
      ADR0 => sw_5_IBUF_1315,
      ADR3 => val_PWR_5_o_AND_52_o1,
      ADR1 => sw_0_IBUF_1320,
      ADR4 => sw_1_IBUF_1321,
      ADR2 => Mmux_led1221_0,
      O => val_PWR_5_o_AND_56_o
    );
  Mmux_led182 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y124",
      INIT => X"FF8FF888F888F888"
    )
    port map (
      ADR3 => inkey_0_10_IBUF_1430,
      ADR2 => val_PWR_5_o_AND_8_o,
      ADR4 => inkey_0_18_IBUF_1431,
      ADR5 => val_PWR_5_o_AND_12_o_0,
      ADR1 => Mmux_led113,
      ADR0 => inkey_0_26_IBUF_1432,
      O => Mmux_led181_1429
    );
  Mmux_led487 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y100",
      INIT => X"FFF8F8F88F888888"
    )
    port map (
      ADR5 => inkey_3_7_IBUF_1511,
      ADR2 => val_PWR_5_o_AND_52_o,
      ADR4 => val_PWR_5_o_AND_56_o_0,
      ADR3 => inkey_3_15_IBUF_1512,
      ADR1 => inkey_3_31_IBUF_1513,
      ADR0 => Mmux_led11111,
      O => Mmux_led486
    );
  val_PWR_5_o_AND_52_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y100",
      INIT => X"8080000000000000"
    )
    port map (
      ADR3 => '1',
      ADR2 => sw_12_IBUF_1474,
      ADR1 => sw_7_IBUF_1475,
      ADR4 => sw_15_IBUF_1476,
      ADR0 => sw_14_IBUF_1477,
      ADR5 => sw_13_IBUF_1478,
      O => val_PWR_5_o_AND_52_o12_1473
    );
  Mmux_led181 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y115",
      INIT => X"EEAACC00EEAACC00"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => inled_2_IBUF_1286,
      ADR0 => Mmux_led123_1338,
      ADR3 => inkey_0_2_IBUF_1423,
      ADR1 => Mmux_led122_1340,
      O => Mmux_led18
    );
  Mmux_led421 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y115",
      INIT => X"EEEEAAAACCCC0000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => inled_6_IBUF_1322,
      ADR0 => Mmux_led123_1338,
      ADR4 => inkey_0_6_IBUF_1418,
      ADR1 => Mmux_led122_1340,
      O => Mmux_led42
    );
  Mmux_led121 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y103",
      INIT => X"FFFFFFFFFFFFEFFF"
    )
    port map (
      ADR0 => sw_0_IBUF_1320,
      ADR1 => val_IBUF_1314,
      ADR5 => sw_1_IBUF_1321,
      ADR2 => out1_IBUF_1311,
      ADR3 => N01,
      ADR4 => sw_5_IBUF_1315,
      O => Mmux_led121_1341
    );
  Mmux_led121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y103",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => btnr_IBUF_1313,
      ADR4 => btnl_IBUF_1312,
      ADR0 => sw_6_IBUF_1482,
      ADR5 => sw_2_IBUF_1483,
      ADR1 => val_PWR_5_o_AND_52_o12_1473,
      ADR3 => val_PWR_5_o_AND_52_o11_1459,
      O => N01
    );
  Mmux_led123_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y103",
      INIT => X"0080000000000000"
    )
    port map (
      ADR1 => out1_IBUF_1311,
      ADR0 => btnl_IBUF_1312,
      ADR5 => btnr_IBUF_1313,
      ADR3 => val_IBUF_1314,
      ADR4 => sw_5_IBUF_1315,
      ADR2 => val_PWR_5_o_AND_52_o1,
      O => N2
    );
  ProtoComp0_INTERMDISABLE_GND_146 : X_ZERO
    generic map(
      LOC => "IOB_X1Y142"
    )
    port map (
      O => inkey_1_6_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_6_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y142"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_6_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_6_IBUF_1442,
      I => inkey(1, 6),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_147 : X_ZERO
    generic map(
      LOC => "IOB_X1Y135"
    )
    port map (
      O => inkey_1_13_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_13_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y135"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_13_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_13_IBUF_1469,
      I => inkey(1, 13),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_149 : X_ZERO
    generic map(
      LOC => "IOB_X1Y141"
    )
    port map (
      O => inkey_1_7_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_7_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y141"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_7_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_7_IBUF_1502,
      I => inkey(1, 7),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_141 : X_ZERO
    generic map(
      LOC => "IOB_X1Y137"
    )
    port map (
      O => inkey_1_11_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_11_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y137"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_11_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_11_IBUF_1405,
      I => inkey(1, 11),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_150 : X_ZERO
    generic map(
      LOC => "IOB_X1Y127"
    )
    port map (
      O => inkey_1_14_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_14_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y127"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_14_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_14_IBUF_1435,
      I => inkey(1, 14),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_151 : X_ZERO
    generic map(
      LOC => "IOB_X1Y126"
    )
    port map (
      O => inkey_1_22_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_22_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y126"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_22_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_22_IBUF_1443,
      I => inkey(1, 22),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_142 : X_ZERO
    generic map(
      LOC => "IOB_X0Y88"
    )
    port map (
      O => sw_9_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_9_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y88"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_9_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_9_IBUF_1463,
      I => sw(9),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_143 : X_ZERO
    generic map(
      LOC => "IOB_X1Y143"
    )
    port map (
      O => inkey_1_5_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_5_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y143"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_5_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_5_IBUF_1480,
      I => inkey(1, 5),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_144 : X_ZERO
    generic map(
      LOC => "IOB_X1Y136"
    )
    port map (
      O => inkey_1_12_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_12_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y136"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_12_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_12_IBUF_1366,
      I => inkey(1, 12),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_145 : X_ZERO
    generic map(
      LOC => "IOB_X1Y123"
    )
    port map (
      O => inkey_1_20_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_20_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y123"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_20_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_20_IBUF_1377,
      I => inkey(1, 20),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_152 : X_ZERO
    generic map(
      LOC => "IOB_X1Y118"
    )
    port map (
      O => inkey_1_30_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_30_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y118"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_30_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_30_IBUF_1434,
      I => inkey(1, 30),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_140 : X_ZERO
    generic map(
      LOC => "IOB_X1Y144"
    )
    port map (
      O => inkey_1_4_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_4_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y144"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_4_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_4_IBUF_1376,
      I => inkey(1, 4),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_148 : X_ZERO
    generic map(
      LOC => "IOB_X1Y124"
    )
    port map (
      O => inkey_1_21_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_21_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y124"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_21_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_21_IBUF_1481,
      I => inkey(1, 21),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_137 : X_ZERO
    generic map(
      LOC => "IOB_X1Y145"
    )
    port map (
      O => inkey_1_3_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_3_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y145"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_3_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_3_IBUF_1407,
      I => inkey(1, 3),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_138 : X_ZERO
    generic map(
      LOC => "IOB_X1Y138"
    )
    port map (
      O => inkey_1_10_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_10_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y138"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_10_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_10_IBUF_1440,
      I => inkey(1, 10),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_139 : X_ZERO
    generic map(
      LOC => "IOB_X0Y96"
    )
    port map (
      O => sw_8_ProtoComp0_INTERMDISABLE_GND_0
    );
  sw_8_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y96"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => sw_8_ProtoComp0_INTERMDISABLE_GND_0,
      O => sw_8_IBUF_1462,
      I => sw(8),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_156 : X_ZERO
    generic map(
      LOC => "IOB_X1Y125"
    )
    port map (
      O => inkey_1_23_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_23_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y125"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_23_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_23_IBUF_1503,
      I => inkey(1, 23),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_155 : X_ZERO
    generic map(
      LOC => "IOB_X1Y133"
    )
    port map (
      O => inkey_1_15_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_15_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y133"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_15_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_15_IBUF_1500,
      I => inkey(1, 15),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_153 : X_ZERO
    generic map(
      LOC => "IOB_X1Y116"
    )
    port map (
      O => inkey_2_0_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_2_0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y116"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_2_0_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_2_0_IBUF_1408,
      I => inkey(2, 0),
      TPWRGT => '1'
    );
  ProtoComp0_INTERMDISABLE_GND_154 : X_ZERO
    generic map(
      LOC => "IOB_X1Y140"
    )
    port map (
      O => inkey_1_8_ProtoComp0_INTERMDISABLE_GND_0
    );
  inkey_1_8_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y140"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => inkey_1_8_ProtoComp0_INTERMDISABLE_GND_0,
      O => inkey_1_8_IBUF_1364,
      I => inkey(1, 8),
      TPWRGT => '1'
    );
  Mmux_led243 : X_LUT6
    generic map(
      LOC => "SLICE_X79Y127",
      INIT => X"FF00FF0040400000"
    )
    port map (
      ADR5 => val_PWR_5_o_AND_24_o,
      ADR0 => val_PWR_5_o_AND_28_o1,
      ADR4 => inkey_1_27_IBUF_1293,
      ADR1 => val_IBUF_1314,
      ADR2 => val_PWR_5_o_AND_32_o1,
      ADR3 => inkey_1_11_IBUF_1405,
      O => Mmux_led242_1404
    );
  Mmux_led485 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y102",
      INIT => X"CCCE0002CCCC0000"
    )
    port map (
      ADR1 => val_PWR_5_o_AND_40_o,
      ADR3 => val_IBUF_1314,
      ADR0 => inkey_2_31_IBUF_1505,
      ADR5 => val_PWR_5_o_AND_32_o1,
      ADR2 => val_PWR_5_o_AND_28_o1,
      ADR4 => inkey_2_15_IBUF_1506,
      O => Mmux_led484_1504
    );
  Mmux_led3010 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y113",
      INIT => X"FFC8FF00FF88FF00"
    )
    port map (
      ADR4 => kyTr_IBUF_1344,
      ADR1 => Mmux_led121_1341,
      ADR0 => Mmux_led301_1359,
      ADR2 => Mmux_led114_0,
      ADR5 => Mmux_led308,
      ADR3 => Mmux_led30,
      O => led_4_OBUF_1414
    );
  Mmux_led309 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y113",
      INIT => X"FFF0FEF0FBF0FAF0"
    )
    port map (
      ADR3 => Mmux_led1122_0,
      ADR1 => val_PWR_5_o_AND_36_o,
      ADR5 => inkey_2_4_IBUF_1291,
      ADR0 => N10,
      ADR4 => Mmux_led304_1381,
      ADR2 => Mmux_led303_1375,
      O => Mmux_led308
    );
  val_PWR_5_o_AND_40_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X46Y104",
      INIT => X"0004000000000000"
    )
    port map (
      ADR4 => sw_0_IBUF_1320,
      ADR5 => val_PWR_5_o_AND_20_o1_1319,
      ADR0 => val_IBUF_1314,
      ADR3 => sw_1_IBUF_1321,
      ADR2 => sw_5_IBUF_1315,
      ADR1 => val_PWR_5_o_AND_52_o1,
      O => val_PWR_5_o_AND_40_o
    );
  Mmux_led185 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y105",
      INIT => X"AAAA0030AAAA0000"
    )
    port map (
      ADR4 => val_PWR_5_o_AND_40_o,
      ADR1 => val_IBUF_1314,
      ADR2 => inkey_2_26_IBUF_1453,
      ADR5 => val_PWR_5_o_AND_32_o1,
      ADR3 => val_PWR_5_o_AND_28_o1,
      ADR0 => inkey_2_10_IBUF_1454,
      O => Mmux_led184_1452
    );
  Mmux_led483 : X_LUT6
    generic map(
      LOC => "SLICE_X79Y126",
      INIT => X"AAAAAAAA30000000"
    )
    port map (
      ADR5 => val_PWR_5_o_AND_24_o,
      ADR1 => val_PWR_5_o_AND_28_o1,
      ADR4 => inkey_1_31_IBUF_1276,
      ADR2 => val_IBUF_1314,
      ADR3 => val_PWR_5_o_AND_32_o1,
      ADR0 => inkey_1_15_IBUF_1500,
      O => Mmux_led482_1499
    );
  Mmux_led123 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y118",
      INIT => X"00FF80FF00FF00FF"
    )
    port map (
      ADR1 => Mmux_led121_1341,
      ADR0 => Mmux_led1122_0,
      ADR2 => Mmux_led114_0,
      ADR5 => Mmux_led1113_0,
      ADR4 => N2,
      ADR3 => kyTr_IBUF_1344,
      O => Mmux_led123_1338
    );
  Mmux_led122 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y118",
      INIT => X"FFFF888888888888"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => inled_1_IBUF_1282,
      ADR5 => Mmux_led123_1338,
      ADR0 => inkey_0_1_IBUF_1339,
      ADR1 => Mmux_led122_1340,
      O => Mmux_led12
    );
  Mmux_led2410 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y113",
      INIT => X"EEEEECCCCCCCCCCC"
    )
    port map (
      ADR0 => kyTr_IBUF_1344,
      ADR5 => Mmux_led121_1341,
      ADR4 => Mmux_led241_1386,
      ADR2 => Mmux_led114_0,
      ADR3 => Mmux_led248,
      ADR1 => Mmux_led24,
      O => led_3_OBUF_1446
    );
  Mmux_led249 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y113",
      INIT => X"FFFFFAFCF0F0F0F0"
    )
    port map (
      ADR5 => Mmux_led1122_0,
      ADR3 => val_PWR_5_o_AND_36_o,
      ADR0 => inkey_2_3_IBUF_1287,
      ADR4 => N8,
      ADR1 => Mmux_led244_1419,
      ADR2 => Mmux_led243_1406,
      O => Mmux_led248
    );
  Mmux_led3610 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y113",
      INIT => X"FCF8FCF0F0F0F0F0"
    )
    port map (
      ADR1 => kyTr_IBUF_1344,
      ADR5 => Mmux_led121_1341,
      ADR3 => Mmux_led361_1455,
      ADR0 => Mmux_led114_0,
      ADR4 => Mmux_led368,
      ADR2 => Mmux_led36,
      O => led_5_OBUF_1492
    );
  Mmux_led369 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y113",
      INIT => X"FFAAFAAAFFAAEEAA"
    )
    port map (
      ADR3 => Mmux_led1122_0,
      ADR5 => val_PWR_5_o_AND_36_o,
      ADR2 => inkey_2_5_IBUF_1295,
      ADR4 => N12,
      ADR1 => Mmux_led364_1486,
      ADR0 => Mmux_led363_1479,
      O => Mmux_led368
    );
  Mmux_led1114_Mmux_led1114_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_led1113,
      O => Mmux_led1113_0
    );
  Mmux_led1114_Mmux_led1114_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => val_PWR_5_o_AND_28_o1_pack_1,
      O => val_PWR_5_o_AND_28_o1
    );
  Mmux_led11141 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y104",
      INIT => X"0004000400040004"
    )
    port map (
      ADR4 => '1',
      ADR0 => val_PWR_5_o_AND_36_o,
      ADR2 => val_PWR_5_o_AND_40_o,
      ADR3 => val_IBUF_1314,
      ADR1 => val_PWR_5_o_AND_28_o1,
      ADR5 => '1',
      O => Mmux_led1114
    );
  Mmux_led11131 : X_LUT5
    generic map(
      LOC => "SLICE_X47Y104",
      INIT => X"05000501"
    )
    port map (
      ADR4 => val_PWR_5_o_AND_32_o1,
      ADR0 => val_PWR_5_o_AND_36_o,
      ADR2 => val_PWR_5_o_AND_40_o,
      ADR3 => val_IBUF_1314,
      ADR1 => val_PWR_5_o_AND_28_o1,
      O => Mmux_led1113
    );
  val_PWR_5_o_AND_32_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y104",
      INIT => X"0000800000008000"
    )
    port map (
      ADR2 => sw_0_IBUF_1320,
      ADR0 => val_PWR_5_o_AND_20_o1_1319,
      ADR1 => sw_1_IBUF_1321,
      ADR4 => sw_5_IBUF_1315,
      ADR3 => val_PWR_5_o_AND_52_o1,
      ADR5 => '1',
      O => val_PWR_5_o_AND_32_o1
    );
  val_PWR_5_o_AND_28_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X47Y104",
      INIT => X"00000800"
    )
    port map (
      ADR2 => sw_0_IBUF_1320,
      ADR0 => val_PWR_5_o_AND_20_o1_1319,
      ADR1 => sw_1_IBUF_1321,
      ADR4 => sw_5_IBUF_1315,
      ADR3 => val_PWR_5_o_AND_52_o1,
      O => val_PWR_5_o_AND_28_o1_pack_1
    );
  Mmux_led1211_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y101",
      INIT => X"FCF8F8F8CC888888"
    )
    port map (
      ADR1 => Mmux_led1113_0,
      ADR3 => Mmux_led11113,
      ADR4 => inkey_3_17_IBUF_1330,
      ADR0 => Mmux_led129_1331,
      ADR2 => inkey_2_17_IBUF_1332,
      ADR5 => Mmux_led1114,
      O => N4
    );
  Mmux_led244 : X_LUT6
    generic map(
      LOC => "SLICE_X78Y127",
      INIT => X"FFFFFAF0AA00FAF0"
    )
    port map (
      ADR1 => '1',
      ADR5 => inkey_1_3_IBUF_1407,
      ADR4 => val_PWR_5_o_AND_20_o,
      ADR2 => Mmux_led242_1404,
      ADR0 => inkey_1_19_IBUF_1292,
      ADR3 => Mmux_led1123,
      O => Mmux_led243_1406
    );
  Mmux_led484 : X_LUT6
    generic map(
      LOC => "SLICE_X79Y125",
      INIT => X"FF8FF888FF8FF888"
    )
    port map (
      ADR5 => '1',
      ADR3 => inkey_1_7_IBUF_1502,
      ADR2 => val_PWR_5_o_AND_20_o,
      ADR4 => Mmux_led482_1499,
      ADR0 => inkey_1_23_IBUF_1503,
      ADR1 => Mmux_led1123,
      O => Mmux_led483_1501
    );
  Mmux_led429_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y101",
      INIT => X"FFC0FFC0EAC0C0C0"
    )
    port map (
      ADR3 => Mmux_led1113_0,
      ADR4 => Mmux_led11113,
      ADR0 => inkey_3_22_IBUF_1299,
      ADR5 => Mmux_led426,
      ADR2 => inkey_2_22_IBUF_1301,
      ADR1 => Mmux_led1114,
      O => N14
    );
  Mmux_led4210 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => X"FAFAEAAAAAAAAAAA"
    )
    port map (
      ADR5 => kyTr_IBUF_1344,
      ADR2 => Mmux_led121_1341,
      ADR4 => Mmux_led421_1425,
      ADR1 => Mmux_led114_0,
      ADR3 => Mmux_led428,
      ADR0 => Mmux_led42,
      O => led_6_OBUF_1484
    );
  Mmux_led429 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => X"FFCCFECCFDCCFCCC"
    )
    port map (
      ADR3 => Mmux_led1122_0,
      ADR0 => val_PWR_5_o_AND_36_o,
      ADR5 => inkey_2_6_IBUF_1309,
      ADR2 => N14,
      ADR4 => Mmux_led424_1447,
      ADR1 => Mmux_led423_1441,
      O => Mmux_led428
    );
  Mmux_led4810 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => X"FECCFCCCCCCCCCCC"
    )
    port map (
      ADR3 => kyTr_IBUF_1344,
      ADR5 => Mmux_led121_1341,
      ADR2 => Mmux_led481_1495,
      ADR0 => Mmux_led114_0,
      ADR4 => Mmux_led488,
      ADR1 => Mmux_led48,
      O => led_7_OBUF_1514
    );
  Mmux_led489 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y113",
      INIT => X"FFFEFFBAAAAAAAAA"
    )
    port map (
      ADR5 => Mmux_led1122_0,
      ADR1 => val_PWR_5_o_AND_36_o,
      ADR4 => inkey_2_7_IBUF_1323,
      ADR3 => N16,
      ADR2 => Mmux_led484_1504,
      ADR0 => Mmux_led483_1501,
      O => Mmux_led488
    );
  val_PWR_5_o_AND_24_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X47Y105",
      INIT => X"0000080000000000"
    )
    port map (
      ADR3 => val_IBUF_1314,
      ADR5 => val_PWR_5_o_AND_20_o1_1319,
      ADR1 => sw_0_IBUF_1320,
      ADR4 => sw_1_IBUF_1321,
      ADR2 => sw_5_IBUF_1315,
      ADR0 => val_PWR_5_o_AND_52_o1,
      O => val_PWR_5_o_AND_24_o
    );
  Mmux_led1212 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y115",
      INIT => X"FFFFFFFFC800C000"
    )
    port map (
      ADR1 => kyTr_IBUF_1344,
      ADR3 => Mmux_led121_1341,
      ADR2 => Mmux_led124_1392,
      ADR0 => Mmux_led114_0,
      ADR4 => Mmux_led1211_1526,
      ADR5 => Mmux_led12,
      O => led_1_OBUF_1391
    );
  Mmux_led1211 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y115",
      INIT => X"FFFFFFFFFA00FC00"
    )
    port map (
      ADR3 => Mmux_led1122_0,
      ADR4 => val_PWR_5_o_AND_36_o,
      ADR0 => inkey_2_1_IBUF_1278,
      ADR2 => N4,
      ADR1 => Mmux_led127_1367,
      ADR5 => Mmux_led126_1390,
      O => Mmux_led1211_1526
    );
  val_PWR_5_o_AND_36_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y104",
      INIT => X"0000000000000400"
    )
    port map (
      ADR5 => val_IBUF_1314,
      ADR1 => val_PWR_5_o_AND_20_o1_1319,
      ADR4 => sw_0_IBUF_1320,
      ADR0 => sw_1_IBUF_1321,
      ADR2 => sw_5_IBUF_1315,
      ADR3 => val_PWR_5_o_AND_52_o1,
      O => val_PWR_5_o_AND_36_o
    );
  Mmux_led69_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"EEEAEEAACCC0CC00"
    )
    port map (
      ADR1 => Mmux_led1113_0,
      ADR2 => Mmux_led11113,
      ADR4 => inkey_3_16_IBUF_1411,
      ADR3 => Mmux_led66,
      ADR5 => inkey_2_16_IBUF_1412,
      ADR0 => Mmux_led1114,
      O => N18
    );
  Mmux_led489_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"FFF0F0F0FF808080"
    )
    port map (
      ADR2 => Mmux_led1113_0,
      ADR1 => Mmux_led11113,
      ADR0 => inkey_3_23_IBUF_1508,
      ADR5 => Mmux_led486,
      ADR3 => inkey_2_23_IBUF_1510,
      ADR4 => Mmux_led1114,
      O => N16
    );
  Mmux_led189_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y100",
      INIT => X"FAF0FAF0EAC0AA00"
    )
    port map (
      ADR2 => Mmux_led1113_0,
      ADR1 => Mmux_led11113,
      ADR4 => inkey_3_18_IBUF_1305,
      ADR5 => Mmux_led186,
      ADR0 => inkey_2_18_IBUF_1307,
      ADR3 => Mmux_led1114,
      O => N6
    );
  Mmux_led610 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y115",
      INIT => X"FFF8FF00FF00FF00"
    )
    port map (
      ADR4 => kyTr_IBUF_1344,
      ADR5 => Mmux_led121_1341,
      ADR2 => Mmux_led61_1352,
      ADR1 => Mmux_led114_0,
      ADR0 => Mmux_led68,
      ADR3 => Mmux_led6,
      O => led_0_OBUF_1410
    );
  Mmux_led69 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y115",
      INIT => X"FFAAFFAAFEAAAEAA"
    )
    port map (
      ADR3 => Mmux_led1122_0,
      ADR2 => val_PWR_5_o_AND_36_o,
      ADR4 => inkey_2_0_IBUF_1408,
      ADR5 => N18,
      ADR1 => Mmux_led64_1378,
      ADR0 => Mmux_led63_1371,
      O => Mmux_led68
    );
  Mmux_led309_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"FECCFA00EECCAA00"
    )
    port map (
      ADR3 => Mmux_led1113_0,
      ADR5 => Mmux_led11113,
      ADR2 => inkey_3_20_IBUF_1415,
      ADR0 => Mmux_led306,
      ADR1 => inkey_2_20_IBUF_1416,
      ADR4 => Mmux_led1114,
      O => N10
    );
  Mmux_led369_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"FEEEFAAACCCC0000"
    )
    port map (
      ADR5 => Mmux_led1113_0,
      ADR3 => Mmux_led11113,
      ADR2 => inkey_3_21_IBUF_1334,
      ADR0 => Mmux_led366,
      ADR1 => inkey_2_21_IBUF_1336,
      ADR4 => Mmux_led1114,
      O => N12
    );
  Mmux_led249_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y100",
      INIT => X"FFEAEAEAC0C0C0C0"
    )
    port map (
      ADR5 => Mmux_led1113_0,
      ADR4 => Mmux_led11113,
      ADR3 => inkey_3_19_IBUF_1325,
      ADR0 => Mmux_led246,
      ADR1 => inkey_2_19_IBUF_1327,
      ADR2 => Mmux_led1114,
      O => N8
    );
  Mmux_led1810 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"FFC8FFC0FF00FF00"
    )
    port map (
      ADR1 => kyTr_IBUF_1344,
      ADR5 => Mmux_led121_1341,
      ADR2 => Mmux_led181_1429,
      ADR0 => Mmux_led114_0,
      ADR4 => Mmux_led188,
      ADR3 => Mmux_led18,
      O => led_2_OBUF_1485
    );
  Mmux_led189 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y113",
      INIT => X"FFFFFFFFFB00EA00"
    )
    port map (
      ADR3 => Mmux_led1122_0,
      ADR1 => val_PWR_5_o_AND_36_o,
      ADR2 => inkey_2_2_IBUF_1283,
      ADR0 => N6,
      ADR4 => Mmux_led184_1452,
      ADR5 => Mmux_led183_1444,
      O => Mmux_led188
    );
  Mmux_led365 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y103",
      INIT => X"FFFF100000001000"
    )
    port map (
      ADR4 => val_PWR_5_o_AND_40_o,
      ADR1 => val_IBUF_1314,
      ADR2 => inkey_2_29_IBUF_1487,
      ADR3 => val_PWR_5_o_AND_32_o1,
      ADR0 => val_PWR_5_o_AND_28_o1,
      ADR5 => inkey_2_13_IBUF_1488,
      O => Mmux_led364_1486
    );
  Mmux_led305 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y103",
      INIT => X"A0A0A0A0A3A0A0A0"
    )
    port map (
      ADR2 => val_PWR_5_o_AND_40_o,
      ADR1 => val_IBUF_1314,
      ADR4 => inkey_2_28_IBUF_1382,
      ADR3 => val_PWR_5_o_AND_32_o1,
      ADR5 => val_PWR_5_o_AND_28_o1,
      ADR0 => inkey_2_12_IBUF_1383,
      O => Mmux_led304_1381
    );
  Mmux_led304 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y125",
      INIT => X"FFFFD8D8D8D8D8D8"
    )
    port map (
      ADR3 => '1',
      ADR1 => inkey_1_4_IBUF_1376,
      ADR0 => val_PWR_5_o_AND_20_o,
      ADR2 => Mmux_led302_1365,
      ADR4 => inkey_1_20_IBUF_1377,
      ADR5 => Mmux_led1123,
      O => Mmux_led303_1375
    );
  Mmux_led364 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y125",
      INIT => X"FBBBF888FBBBF888"
    )
    port map (
      ADR5 => '1',
      ADR0 => inkey_1_5_IBUF_1480,
      ADR1 => val_PWR_5_o_AND_20_o,
      ADR4 => Mmux_led362_1532,
      ADR2 => inkey_1_21_IBUF_1481,
      ADR3 => Mmux_led1123,
      O => Mmux_led363_1479
    );
  Mmux_led363 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y125",
      INIT => X"F000F000F088F000"
    )
    port map (
      ADR3 => val_PWR_5_o_AND_24_o,
      ADR5 => val_PWR_5_o_AND_28_o1,
      ADR1 => inkey_1_29_IBUF_1317,
      ADR4 => val_IBUF_1314,
      ADR0 => val_PWR_5_o_AND_32_o1,
      ADR2 => inkey_1_13_IBUF_1469,
      O => Mmux_led362_1532
    );
  Mmux_led303 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y125",
      INIT => X"CC00CC00EC20CC00"
    )
    port map (
      ADR1 => val_PWR_5_o_AND_24_o,
      ADR5 => val_PWR_5_o_AND_28_o1,
      ADR4 => inkey_1_28_IBUF_1303,
      ADR2 => val_IBUF_1314,
      ADR0 => val_PWR_5_o_AND_32_o1,
      ADR3 => inkey_1_12_IBUF_1366,
      O => Mmux_led302_1365
    );
  Mmux_led184 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y127",
      INIT => X"FFFFFAF0AA00FAF0"
    )
    port map (
      ADR1 => '1',
      ADR5 => inkey_1_2_IBUF_1445,
      ADR4 => val_PWR_5_o_AND_20_o,
      ADR2 => Mmux_led182_1439,
      ADR3 => inkey_1_18_IBUF_1288,
      ADR0 => Mmux_led1123,
      O => Mmux_led183_1444
    );
  Mmux_led65 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y107",
      INIT => X"A0A0B1A0A0A0A0A0"
    )
    port map (
      ADR0 => val_PWR_5_o_AND_40_o,
      ADR4 => val_IBUF_1314,
      ADR3 => inkey_2_24_IBUF_1379,
      ADR5 => val_PWR_5_o_AND_32_o1,
      ADR1 => val_PWR_5_o_AND_28_o1,
      ADR2 => inkey_2_8_IBUF_1380,
      O => Mmux_led64_1378
    );
  Mmux_led127 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y107",
      INIT => X"F0F4F0F000040000"
    )
    port map (
      ADR2 => val_PWR_5_o_AND_40_o,
      ADR3 => val_IBUF_1314,
      ADR4 => inkey_2_25_IBUF_1369,
      ADR1 => val_PWR_5_o_AND_32_o1,
      ADR0 => val_PWR_5_o_AND_28_o1,
      ADR5 => inkey_2_9_IBUF_1370,
      O => Mmux_led127_1367
    );
  Mmux_led125_Mmux_led125_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Mmux_led1122,
      O => Mmux_led1122_0
    );
  Mmux_led125 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y130",
      INIT => X"B1A0A0A0A0A0A0A0"
    )
    port map (
      ADR0 => val_PWR_5_o_AND_24_o,
      ADR1 => val_PWR_5_o_AND_28_o1,
      ADR3 => inkey_1_25_IBUF_1285,
      ADR4 => val_IBUF_1314,
      ADR5 => val_PWR_5_o_AND_32_o1,
      ADR2 => inkey_1_9_IBUF_1279,
      O => Mmux_led125_1533
    );
  Mmux_led11231 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y130",
      INIT => X"0000080800000808"
    )
    port map (
      ADR3 => '1',
      ADR2 => val_PWR_5_o_AND_20_o,
      ADR4 => val_PWR_5_o_AND_24_o,
      ADR0 => val_IBUF_1314,
      ADR1 => val_PWR_5_o_AND_28_o1,
      ADR5 => '1',
      O => Mmux_led1123
    );
  Mmux_led11221 : X_LUT5
    generic map(
      LOC => "SLICE_X80Y130",
      INIT => X"00000507"
    )
    port map (
      ADR3 => val_PWR_5_o_AND_32_o1,
      ADR2 => val_PWR_5_o_AND_20_o,
      ADR4 => val_PWR_5_o_AND_24_o,
      ADR0 => val_IBUF_1314,
      ADR1 => val_PWR_5_o_AND_28_o1,
      O => Mmux_led1122
    );
  Mmux_led126 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y130",
      INIT => X"FCCCFAAAFCCCFAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => inkey_1_1_IBUF_1515,
      ADR4 => val_PWR_5_o_AND_20_o,
      ADR0 => Mmux_led125_1533,
      ADR2 => inkey_1_17_IBUF_1284,
      ADR3 => Mmux_led1123,
      O => Mmux_led126_1390
    );
  Mmux_led63 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y129",
      INIT => X"F0F00088F0F00000"
    )
    port map (
      ADR4 => val_PWR_5_o_AND_24_o,
      ADR3 => val_PWR_5_o_AND_28_o1,
      ADR0 => inkey_1_24_IBUF_1281,
      ADR1 => val_IBUF_1314,
      ADR5 => val_PWR_5_o_AND_32_o1,
      ADR2 => inkey_1_8_IBUF_1364,
      O => Mmux_led62_1363
    );
  Mmux_led425 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y102",
      INIT => X"F0F0F2F000000200"
    )
    port map (
      ADR2 => val_PWR_5_o_AND_40_o,
      ADR1 => val_IBUF_1314,
      ADR0 => inkey_2_30_IBUF_1448,
      ADR3 => val_PWR_5_o_AND_32_o1,
      ADR4 => val_PWR_5_o_AND_28_o1,
      ADR5 => inkey_2_14_IBUF_1449,
      O => Mmux_led424_1447
    );
  Mmux_led245 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y105",
      INIT => X"FFFF020000000200"
    )
    port map (
      ADR4 => val_PWR_5_o_AND_40_o,
      ADR1 => val_IBUF_1314,
      ADR0 => inkey_2_27_IBUF_1420,
      ADR3 => val_PWR_5_o_AND_32_o1,
      ADR2 => val_PWR_5_o_AND_28_o1,
      ADR5 => inkey_2_11_IBUF_1421,
      O => Mmux_led244_1419
    );
  Mmux_led423 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y126",
      INIT => X"AAAA0000AAAAC000"
    )
    port map (
      ADR4 => val_PWR_5_o_AND_24_o,
      ADR5 => val_PWR_5_o_AND_28_o1,
      ADR1 => inkey_1_30_IBUF_1434,
      ADR2 => val_IBUF_1314,
      ADR3 => val_PWR_5_o_AND_32_o1,
      ADR0 => inkey_1_14_IBUF_1435,
      O => Mmux_led422_1433
    );
  Mmux_led183 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y127",
      INIT => X"AAAAAAAA0C000000"
    )
    port map (
      ADR5 => val_PWR_5_o_AND_24_o,
      ADR2 => val_PWR_5_o_AND_28_o1,
      ADR3 => inkey_1_26_IBUF_1289,
      ADR4 => val_IBUF_1314,
      ADR1 => val_PWR_5_o_AND_32_o1,
      ADR0 => inkey_1_10_IBUF_1440,
      O => Mmux_led182_1439
    );
  Mmux_led64 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y128",
      INIT => X"FFCCFFAACCCCAAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => inkey_1_0_IBUF_1372,
      ADR4 => val_PWR_5_o_AND_20_o,
      ADR0 => Mmux_led62_1363,
      ADR3 => inkey_1_16_IBUF_1280,
      ADR5 => Mmux_led1123,
      O => Mmux_led63_1371
    );
  Mmux_led424 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y126",
      INIT => X"FFFFFCF0CC00FCF0"
    )
    port map (
      ADR0 => '1',
      ADR5 => inkey_1_6_IBUF_1442,
      ADR4 => val_PWR_5_o_AND_20_o,
      ADR2 => Mmux_led422_1433,
      ADR1 => inkey_1_22_IBUF_1443,
      ADR3 => Mmux_led1123,
      O => Mmux_led423_1441
    );
  NlwBufferBlock_led_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => led_3_OBUF_1446,
      O => NlwBufferSignal_led_3_OBUF_I
    );
  NlwBufferBlock_led_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => led_1_OBUF_1391,
      O => NlwBufferSignal_led_1_OBUF_I
    );
  NlwBufferBlock_led_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => led_0_OBUF_1410,
      O => NlwBufferSignal_led_0_OBUF_I
    );
  NlwBufferBlock_led_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => led_2_OBUF_1485,
      O => NlwBufferSignal_led_2_OBUF_I
    );
  NlwBufferBlock_led_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => led_4_OBUF_1414,
      O => NlwBufferSignal_led_4_OBUF_I
    );
  NlwBufferBlock_led_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => led_6_OBUF_1484,
      O => NlwBufferSignal_led_6_OBUF_I
    );
  NlwBufferBlock_led_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => led_7_OBUF_1514,
      O => NlwBufferSignal_led_7_OBUF_I
    );
  NlwBufferBlock_led_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => led_5_OBUF_1492,
      O => NlwBufferSignal_led_5_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

