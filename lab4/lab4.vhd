-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 12.0 Build 178 05/31/2012 SJ Full Version"
-- CREATED		"Thu Sep 26 18:56:48 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab4 IS 
	PORT
	(
		w :  IN  STD_LOGIC;
		x :  IN  STD_LOGIC;
		y :  IN  STD_LOGIC;
		z :  IN  STD_LOGIC;
		pin_a :  OUT  STD_LOGIC;
		pin_b :  OUT  STD_LOGIC;
		pin_c :  OUT  STD_LOGIC;
		pin_d :  OUT  STD_LOGIC;
		pin_e :  OUT  STD_LOGIC;
		pin_f :  OUT  STD_LOGIC;
		pin_g :  OUT  STD_LOGIC
	);
END lab4;

ARCHITECTURE bdf_type OF lab4 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_78 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_79 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_80 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_81 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_53 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_54 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_57 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_58 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_59 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_60 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_66 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_67 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_68 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_69 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_74 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_75 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_76 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_77 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_78 <= NOT(w);



SYNTHESIZED_WIRE_79 <= NOT(x);



SYNTHESIZED_WIRE_74 <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_78 AND SYNTHESIZED_WIRE_79;


SYNTHESIZED_WIRE_14 <= x AND SYNTHESIZED_WIRE_80 AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_13 <= w AND SYNTHESIZED_WIRE_80 AND z;


SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_78 AND y AND z;


SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_80 AND z;


SYNTHESIZED_WIRE_12 <= w AND x AND SYNTHESIZED_WIRE_81;


pin_b <= SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12 OR SYNTHESIZED_WIRE_13;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_14 OR SYNTHESIZED_WIRE_15;


SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_78 AND z;


SYNTHESIZED_WIRE_80 <= NOT(y);



pin_c <= x OR SYNTHESIZED_WIRE_17 OR SYNTHESIZED_WIRE_18 OR SYNTHESIZED_WIRE_19;


SYNTHESIZED_WIRE_18 <= w AND SYNTHESIZED_WIRE_80;


SYNTHESIZED_WIRE_39 <= SYNTHESIZED_WIRE_79 AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_38 <= w AND SYNTHESIZED_WIRE_80 AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_34 <= w AND SYNTHESIZED_WIRE_79 AND SYNTHESIZED_WIRE_80;


SYNTHESIZED_WIRE_33 <= w AND y AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_35 <= SYNTHESIZED_WIRE_78 AND SYNTHESIZED_WIRE_79 AND y;


SYNTHESIZED_WIRE_36 <= SYNTHESIZED_WIRE_78 AND x AND SYNTHESIZED_WIRE_80 AND z;


SYNTHESIZED_WIRE_37 <= w AND x AND y AND z;


pin_d <= SYNTHESIZED_WIRE_32 OR SYNTHESIZED_WIRE_33 OR SYNTHESIZED_WIRE_34 OR SYNTHESIZED_WIRE_35 OR SYNTHESIZED_WIRE_36 OR SYNTHESIZED_WIRE_37;


SYNTHESIZED_WIRE_81 <= NOT(z);



SYNTHESIZED_WIRE_32 <= SYNTHESIZED_WIRE_38 OR SYNTHESIZED_WIRE_39;


SYNTHESIZED_WIRE_51 <= SYNTHESIZED_WIRE_40 OR SYNTHESIZED_WIRE_41;


SYNTHESIZED_WIRE_57 <= SYNTHESIZED_WIRE_42 OR SYNTHESIZED_WIRE_43;


SYNTHESIZED_WIRE_43 <= SYNTHESIZED_WIRE_80 AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_41 <= SYNTHESIZED_WIRE_79 AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_42 <= w AND x;


SYNTHESIZED_WIRE_40 <= w AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_60 <= x AND SYNTHESIZED_WIRE_80;


SYNTHESIZED_WIRE_54 <= w AND SYNTHESIZED_WIRE_79;


pin_e <= SYNTHESIZED_WIRE_51 OR SYNTHESIZED_WIRE_52 OR SYNTHESIZED_WIRE_53 OR SYNTHESIZED_WIRE_54;


SYNTHESIZED_WIRE_58 <= w AND y;


SYNTHESIZED_WIRE_52 <= w AND y;


SYNTHESIZED_WIRE_59 <= x AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_53 <= y AND SYNTHESIZED_WIRE_81;


pin_f <= SYNTHESIZED_WIRE_57 OR SYNTHESIZED_WIRE_58 OR SYNTHESIZED_WIRE_59 OR SYNTHESIZED_WIRE_60;


SYNTHESIZED_WIRE_66 <= x AND SYNTHESIZED_WIRE_80;


SYNTHESIZED_WIRE_69 <= y AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_79 AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_67 <= w AND z;


SYNTHESIZED_WIRE_68 <= SYNTHESIZED_WIRE_79 AND y;


pin_g <= SYNTHESIZED_WIRE_66 OR SYNTHESIZED_WIRE_67 OR SYNTHESIZED_WIRE_68 OR SYNTHESIZED_WIRE_69;


SYNTHESIZED_WIRE_0 <= w AND SYNTHESIZED_WIRE_81;


SYNTHESIZED_WIRE_77 <= SYNTHESIZED_WIRE_78 AND y;


SYNTHESIZED_WIRE_75 <= x AND SYNTHESIZED_WIRE_80 AND z;


SYNTHESIZED_WIRE_76 <= w AND SYNTHESIZED_WIRE_79 AND y;


pin_a <= SYNTHESIZED_WIRE_74 OR SYNTHESIZED_WIRE_75 OR SYNTHESIZED_WIRE_76 OR SYNTHESIZED_WIRE_77;


END bdf_type;