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
-- CREATED		"Thu Oct 10 18:55:52 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY fulladder IS 
	PORT
	(
		a :  IN  STD_LOGIC;
		b :  IN  STD_LOGIC;
		c :  IN  STD_LOGIC;
		S :  OUT  STD_LOGIC;
		Cout :  OUT  STD_LOGIC
	);
END fulladder;

ARCHITECTURE bdf_type OF fulladder IS 

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_4 <= a XOR b;


S <= SYNTHESIZED_WIRE_4 XOR c;


SYNTHESIZED_WIRE_3 <= NOT(c AND SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_2 <= NOT(a AND b);


Cout <= NOT(SYNTHESIZED_WIRE_2 AND SYNTHESIZED_WIRE_3);


END bdf_type;