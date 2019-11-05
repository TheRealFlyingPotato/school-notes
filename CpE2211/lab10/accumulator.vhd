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
-- CREATED		"Thu Oct 31 20:34:07 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY accumulator IS 
	PORT
	(
		S1 :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		I_L :  IN  STD_LOGIC;
		I_R :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		I :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		y :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END accumulator;

ARCHITECTURE bdf_type OF accumulator IS 

COMPONENT mymux41
	PORT(d3 : IN STD_LOGIC;
		 d2 : IN STD_LOGIC;
		 d1 : IN STD_LOGIC;
		 d0 : IN STD_LOGIC;
		 s1 : IN STD_LOGIC;
		 s0 : IN STD_LOGIC;
		 y : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	y_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_12 <= '1';



PROCESS(clk,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_12)
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	y_ALTERA_SYNTHESIZED(3) <= '0';
ELSIF (SYNTHESIZED_WIRE_12 = '0') THEN
	y_ALTERA_SYNTHESIZED(3) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	y_ALTERA_SYNTHESIZED(3) <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(clk,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_12)
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	y_ALTERA_SYNTHESIZED(2) <= '0';
ELSIF (SYNTHESIZED_WIRE_12 = '0') THEN
	y_ALTERA_SYNTHESIZED(2) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	y_ALTERA_SYNTHESIZED(2) <= SYNTHESIZED_WIRE_4;
END IF;
END PROCESS;


PROCESS(clk,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_12)
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	y_ALTERA_SYNTHESIZED(1) <= '0';
ELSIF (SYNTHESIZED_WIRE_12 = '0') THEN
	y_ALTERA_SYNTHESIZED(1) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	y_ALTERA_SYNTHESIZED(1) <= SYNTHESIZED_WIRE_7;
END IF;
END PROCESS;


PROCESS(clk,SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_12)
BEGIN
IF (SYNTHESIZED_WIRE_12 = '0') THEN
	y_ALTERA_SYNTHESIZED(0) <= '0';
ELSIF (SYNTHESIZED_WIRE_12 = '0') THEN
	y_ALTERA_SYNTHESIZED(0) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	y_ALTERA_SYNTHESIZED(0) <= SYNTHESIZED_WIRE_10;
END IF;
END PROCESS;



b2v_inst5 : mymux41
PORT MAP(d3 => I_L,
		 d2 => y_ALTERA_SYNTHESIZED(2),
		 d1 => I(3),
		 d0 => y_ALTERA_SYNTHESIZED(3),
		 s1 => S1,
		 s0 => S0,
		 y => SYNTHESIZED_WIRE_1);


b2v_inst6 : mymux41
PORT MAP(d3 => y_ALTERA_SYNTHESIZED(3),
		 d2 => y_ALTERA_SYNTHESIZED(1),
		 d1 => I(2),
		 d0 => y_ALTERA_SYNTHESIZED(2),
		 s1 => S1,
		 s0 => S0,
		 y => SYNTHESIZED_WIRE_4);


b2v_inst7 : mymux41
PORT MAP(d3 => y_ALTERA_SYNTHESIZED(2),
		 d2 => y_ALTERA_SYNTHESIZED(0),
		 d1 => I(1),
		 d0 => y_ALTERA_SYNTHESIZED(1),
		 s1 => S1,
		 s0 => S0,
		 y => SYNTHESIZED_WIRE_7);


b2v_inst8 : mymux41
PORT MAP(d3 => y_ALTERA_SYNTHESIZED(1),
		 d2 => I_R,
		 d1 => I(0),
		 d0 => y_ALTERA_SYNTHESIZED(0),
		 s1 => S1,
		 s0 => S0,
		 y => SYNTHESIZED_WIRE_10);

y <= y_ALTERA_SYNTHESIZED;

END bdf_type;