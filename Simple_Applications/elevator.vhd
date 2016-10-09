library ieee;
use ieee.std_logic_1164.all;
entity elevator is
port(a,b,c,d:in std_logic;
     y:out std_logic);
end elevator;
architecture if_then of elevator is
signal x:std_logic_vector(3 downto 0);
begin
x<= a&b&c&d;
 process(x)
 begin
  if (x="0000") then y<='0';
  elsif (x="0001") then y<='0';
  elsif (x="0100") then y<='0';
  elsif (x="1100") then y<='0';
  else y<='1';
 end if ;
 end process;
end if_then;