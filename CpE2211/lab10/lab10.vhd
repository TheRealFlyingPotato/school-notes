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
-- CREATED		"Thu Oct 31 20:35:32 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab10 IS 
	PORT
	(
		S :  IN  STD_LOGIC;
		M :  IN  STD_LOGIC;
		sw3 :  IN  STD_LOGIC;
		sw2 :  IN  STD_LOGIC;
		sw1 :  IN  STD_LOGIC;
		sw0 :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		i_R :  IN  STD_LOGIC;
		i_L :  IN  STD_LOGIC;
		I :  IN  STD_LOGIC_VECTOR(0 TO 3);
		Cout :  OUT  STD_LOGIC;
		alu_out :  OUT  STD_LOGIC_VECTOR(0 TO 3);
		output :  OUT  STD_LOGIC_VECTOR(0 TO 3);
		selector_out :  OUT  STD_LOGIC_VECTOR(0 TO 3)
	);
END lab10;

ARCHITECTURE bdf_type OF lab10 IS 

COMPONENT selector
	PORT(S : IN STD_LOGIC;
		 I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alu
	PORT(M : IN STD_LOGIC;
		 S_3 : IN STD_LOGIC;
		 S_2 : IN STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(0 TO 3);
		 b : IN STD_LOGIC_VECTOR(0 TO 3);
		 cout : OUT STD_LOGIC;
		 S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT accumulator
	PORT(I_R : IN STD_LOGIC;
		 I_L : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
alu_out(0 TO 3) <= SYNTHESIZED_WIRE_2(3 DOWNTO 0);
output(0 TO 3) <= SYNTHESIZED_WIRE_1(3 DOWNTO 0);
selector_out(0 TO 3) <= SYNTHESIZED_WIRE_0(3 DOWNTO 0);



b2v_inst : selector
PORT MAP(S => S,
		 I => I,
		 Y => SYNTHESIZED_WIRE_0);


b2v_inst134141412 : alu
PORT MAP(M => M,
		 S_3 => sw3,
		 S_2 => sw2,
		 a => SYNTHESIZED_WIRE_0,
		 b => SYNTHESIZED_WIRE_1,
		 cout => Cout,
		 S => SYNTHESIZED_WIRE_2);


b2v_inst2 : accumulator
PORT MAP(I_R => i_R,
		 I_L => i_L,
		 S1 => sw1,
		 S0 => sw0,
		 clk => clock,
		 I => SYNTHESIZED_WIRE_2,
		 y => SYNTHESIZED_WIRE_1);


END bdf_type;