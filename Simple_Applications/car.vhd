library ieee;
use ieee.std_logic_1164.all;
entity car is
port(d,i,h:in std_logic;
     f:out std_logic);
end car;
architecture when_else of car is
signal input:std_logic_vector(2 downto 0);
begin
input<=d&i&h;
   f<='1'when input="001" else
      '1'when input="101" else
      '1'when input="110" else
      '1'when input="111" else
      '0';
end when_else;