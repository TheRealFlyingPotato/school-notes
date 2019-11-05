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
-- CREATED		"Thu Oct 31 18:22:56 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY logicExtender IS 
	PORT
	(
		S2 :  IN  STD_LOGIC;
		S3 :  IN  STD_LOGIC;
		M :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC;
		b :  IN  STD_LOGIC;
		x :  OUT  STD_LOGIC
	);
END logicExtender;

ARCHITECTURE bdf_type OF logicExtender IS 

SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_7 <= NOT(a);



SYNTHESIZED_WIRE_8 <= NOT(S2);



SYNTHESIZED_WIRE_5 <= b AND S2 AND S3 AND SYNTHESIZED_WIRE_11;


x <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_9 <= NOT(S3);



SYNTHESIZED_WIRE_11 <= NOT(M);



SYNTHESIZED_WIRE_4 <= S2 AND a AND b;


SYNTHESIZED_WIRE_6 <= S3 AND a;


SYNTHESIZED_WIRE_3 <= M AND a;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_7 AND SYNTHESIZED_WIRE_8 AND SYNTHESIZED_WIRE_9 AND SYNTHESIZED_WIRE_11;


END bdf_type;