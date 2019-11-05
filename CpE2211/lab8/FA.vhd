-- Full Adder
-- Programmer: Michael Ward
-- 10/17/2019

library ieee;
use ieee.std_logic_1164.all;

entity FA is
  port(a,b : in std_logic;
    cin : in std_logic;
    cout : out std_logic;
    sum : out std_logic);
end entity FA;

architecture df_FA of FA is
begin
  cout <= ((a xor b) and cin) or (a and b);
  sum <= a xor b xor cin;
end architecture df_FA;