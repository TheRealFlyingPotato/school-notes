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
-- CREATED		"Thu Oct 31 20:24:06 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mymux41 IS 
	PORT
	(
		d0 :  IN  STD_LOGIC;
		d1 :  IN  STD_LOGIC;
		d2 :  IN  STD_LOGIC;
		d3 :  IN  STD_LOGIC;
		s0 :  IN  STD_LOGIC;
		s1 :  IN  STD_LOGIC;
		y :  OUT  STD_LOGIC
	);
END mymux41;

ARCHITECTURE bdf_type OF mymux41 IS 

SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_4 <= d3 AND s1 AND s0;


SYNTHESIZED_WIRE_7 <= d2 AND s1 AND SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_6 <= d0 AND SYNTHESIZED_WIRE_9 AND SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_5 <= d1 AND SYNTHESIZED_WIRE_9 AND s0;


SYNTHESIZED_WIRE_8 <= NOT(s0);



SYNTHESIZED_WIRE_9 <= NOT(s1);



y <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


END bdf_type;