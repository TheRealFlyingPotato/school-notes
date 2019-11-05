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
-- CREATED		"Thu Oct 31 20:07:36 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY alu IS 
	PORT
	(
		M :  IN  STD_LOGIC;
		S_2 :  IN  STD_LOGIC;
		S_3 :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC_VECTOR(0 TO 3);
		b :  IN  STD_LOGIC_VECTOR(0 TO 3);
		cout :  OUT  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END alu;

ARCHITECTURE bdf_type OF alu IS 

COMPONENT fulladder
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 c : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT logicextender
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 S2 : IN STD_LOGIC;
		 S3 : IN STD_LOGIC;
		 M : IN STD_LOGIC;
		 x : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT arithmeticextender
	PORT(bi : IN STD_LOGIC;
		 s2 : IN STD_LOGIC;
		 s3 : IN STD_LOGIC;
		 M : IN STD_LOGIC;
		 yi : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;


BEGIN 



b2v_inst : fulladder
PORT MAP(a => SYNTHESIZED_WIRE_0,
		 b => SYNTHESIZED_WIRE_1,
		 c => SYNTHESIZED_WIRE_2,
		 S => S_ALTERA_SYNTHESIZED(3),
		 Cout => SYNTHESIZED_WIRE_5);


b2v_inst12 : logicextender
PORT MAP(a => a(0),
		 b => b(0),
		 S2 => S_2,
		 S3 => S_3,
		 M => M,
		 x => SYNTHESIZED_WIRE_0);


b2v_inst13 : logicextender
PORT MAP(a => a(1),
		 b => b(1),
		 S2 => S_2,
		 S3 => S_3,
		 M => M,
		 x => SYNTHESIZED_WIRE_3);


b2v_inst14 : logicextender
PORT MAP(a => a(2),
		 b => b(2),
		 S2 => S_2,
		 S3 => S_3,
		 M => M,
		 x => SYNTHESIZED_WIRE_6);


b2v_inst15 : logicextender
PORT MAP(a => a(3),
		 b => b(3),
		 S2 => S_2,
		 S3 => S_3,
		 M => M,
		 x => SYNTHESIZED_WIRE_9);


b2v_inst2 : arithmeticextender
PORT MAP(bi => b(0),
		 s2 => S_2,
		 s3 => S_3,
		 M => M,
		 yi => SYNTHESIZED_WIRE_1);


b2v_inst3 : fulladder
PORT MAP(a => SYNTHESIZED_WIRE_3,
		 b => SYNTHESIZED_WIRE_4,
		 c => SYNTHESIZED_WIRE_5,
		 S => S_ALTERA_SYNTHESIZED(2),
		 Cout => SYNTHESIZED_WIRE_8);


b2v_inst4 : arithmeticextender
PORT MAP(bi => b(1),
		 s2 => S_2,
		 s3 => S_3,
		 M => M,
		 yi => SYNTHESIZED_WIRE_4);


b2v_inst5 : arithmeticextender
PORT MAP(bi => b(2),
		 s2 => S_2,
		 s3 => S_3,
		 M => M,
		 yi => SYNTHESIZED_WIRE_7);


b2v_inst6 : fulladder
PORT MAP(a => SYNTHESIZED_WIRE_6,
		 b => SYNTHESIZED_WIRE_7,
		 c => SYNTHESIZED_WIRE_8,
		 S => S_ALTERA_SYNTHESIZED(1),
		 Cout => SYNTHESIZED_WIRE_11);


b2v_inst7 : arithmeticextender
PORT MAP(bi => b(3),
		 s2 => S_2,
		 s3 => S_3,
		 M => M,
		 yi => SYNTHESIZED_WIRE_10);


SYNTHESIZED_WIRE_2 <= M AND S_3;


b2v_inst9 : fulladder
PORT MAP(a => SYNTHESIZED_WIRE_9,
		 b => SYNTHESIZED_WIRE_10,
		 c => SYNTHESIZED_WIRE_11,
		 S => S_ALTERA_SYNTHESIZED(0),
		 Cout => cout);

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;