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
-- CREATED		"Thu Oct 31 18:14:03 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY arithmetic-extender IS 
	PORT
	(
		bi :  IN  STD_LOGIC;
		s2 :  IN  STD_LOGIC;
		s3 :  IN  STD_LOGIC;
		M :  IN  STD_LOGIC;
		yi :  OUT  STD_LOGIC
	);
END arithmetic-extender;

ARCHITECTURE bdf_type OF arithmetic-extender IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1 AND M;


SYNTHESIZED_WIRE_3 <= bi AND SYNTHESIZED_WIRE_2 AND M;


SYNTHESIZED_WIRE_2 <= NOT(s3);



SYNTHESIZED_WIRE_0 <= NOT(bi);



SYNTHESIZED_WIRE_1 <= NOT(s2);



yi <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


END bdf_type;