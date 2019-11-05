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
-- CREATED		"Thu Oct 31 19:43:50 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY selector IS 
	PORT
	(
		S :  IN  STD_LOGIC;
		I :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Y :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END selector;

ARCHITECTURE bdf_type OF selector IS 

COMPONENT mux21
	PORT(d1 : IN STD_LOGIC;
		 d0 : IN STD_LOGIC;
		 s : IN STD_LOGIC;
		 y : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	Y_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_4 <= '0';



b2v_inst : mux21
PORT MAP(d1 => I(0),
		 d0 => SYNTHESIZED_WIRE_4,
		 s => S,
		 y => Y_ALTERA_SYNTHESIZED(0));


b2v_inst1 : mux21
PORT MAP(d1 => I(1),
		 d0 => SYNTHESIZED_WIRE_4,
		 s => S,
		 y => Y_ALTERA_SYNTHESIZED(1));


b2v_inst2 : mux21
PORT MAP(d1 => I(2),
		 d0 => SYNTHESIZED_WIRE_4,
		 s => S,
		 y => Y_ALTERA_SYNTHESIZED(2));


b2v_inst3 : mux21
PORT MAP(d1 => I(3),
		 d0 => SYNTHESIZED_WIRE_4,
		 s => S,
		 y => Y_ALTERA_SYNTHESIZED(3));


Y <= Y_ALTERA_SYNTHESIZED;

END bdf_type;