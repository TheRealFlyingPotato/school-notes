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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 12.0 Build 178 05/31/2012 SJ Full Version"
-- CREATED		"Thu Oct 03 18:44:03 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab6 IS 
	PORT
	(
		X :  IN  STD_LOGIC;
		Y :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC;
		b :  IN  STD_LOGIC;
		pin_name1 :  OUT  STD_LOGIC
	);
END lab6;

ARCHITECTURE bdf_type OF lab6 IS 

SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_12 AND a AND b;


SYNTHESIZED_WIRE_4 <= X AND a AND SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_1 <= NOT(b);



pin_name1 <= SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_3 <= X AND Y AND SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_5 <= X AND SYNTHESIZED_WIRE_12 AND b;


SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_12 AND Y AND b;


SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_12 AND Y AND a;


SYNTHESIZED_WIRE_12 <= NOT(X);




SYNTHESIZED_WIRE_8 <= NOT(a);



END bdf_type;