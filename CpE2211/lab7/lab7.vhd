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
-- CREATED		"Thu Oct 10 18:55:22 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab7 IS 
	PORT
	(
		Cin :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		carry_out :  OUT  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END lab7;

ARCHITECTURE bdf_type OF lab7 IS 

COMPONENT fulladder
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 c : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : fulladder
PORT MAP(a => A(0),
		 b => B(0),
		 c => Cin,
		 S => S_ALTERA_SYNTHESIZED(0),
		 Cout => SYNTHESIZED_WIRE_0);


b2v_inst1 : fulladder
PORT MAP(a => A(1),
		 b => B(1),
		 c => SYNTHESIZED_WIRE_0,
		 S => S_ALTERA_SYNTHESIZED(1),
		 Cout => SYNTHESIZED_WIRE_1);


b2v_inst2 : fulladder
PORT MAP(a => A(2),
		 b => B(2),
		 c => SYNTHESIZED_WIRE_1,
		 S => S_ALTERA_SYNTHESIZED(2),
		 Cout => SYNTHESIZED_WIRE_2);


b2v_inst3 : fulladder
PORT MAP(a => A(3),
		 b => B(3),
		 c => SYNTHESIZED_WIRE_2,
		 S => S_ALTERA_SYNTHESIZED(3),
		 Cout => carry_out);

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;