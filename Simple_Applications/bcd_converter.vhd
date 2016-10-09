library ieee;
use ieee.std_logic_1164.all;
entity bcd is
port(a,b,c,d:in std_logic;
     f1,f2,f3:out std_logic);
end bcd;
architecture w_s of bcd is
signal input:std_logic_vector(3 downto 0);
signal output:std_logic_vector(2 downto 0);
begin
input<=a&b&c&d;
  with input select
   output<="101" when "0000",
           "001" when "0001"|"0010",
           "011" when "0011"|"0101"|"0110",
           "111" when "0100",
           "010" when "0111"|"1001",
           "110" when "1000",
           "000" when others;
 f1<=output(2);
 f2<=output(1);
 f3<=output(0);
end w_s;  