library ieee;
use ieee.std_logic_1164.all;
entity h_adder is
 port(a,b:in std_logic;
      c,s:out std_logic);
end h_adder;
architecture lgc_ckt of h_adder is
begin
s<= a xor b;
c<= a and b;
end lgc_ckt;