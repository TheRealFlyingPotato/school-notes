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
-- CREATED		"Thu Sep 05 18:42:20 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab2 IS 
	PORT
	(
		a :  IN  STD_LOGIC;
		b :  IN  STD_LOGIC;
		or2 :  OUT  STD_LOGIC;
		nand2 :  OUT  STD_LOGIC;
		nor2 :  OUT  STD_LOGIC;
		and2 :  OUT  STD_LOGIC
	);
END lab2;

ARCHITECTURE bdf_type OF lab2 IS 



BEGIN 



and2 <= a AND b;


or2 <= b OR a;


nand2 <= NOT(b AND a);


nor2 <= NOT(b OR a);


END bdf_type;