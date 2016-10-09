library ieee;
use ieee.std_logic_1164.all;
entity traffic is
port(a,b,c,d:in std_logic;
     ew,ns:out std_logic);
end traffic;
architecture w_s of traffic is
signal input:std_logic_vector(3 downto 0);
signal output:std_logic_vector(1 downto 0);
begin
input<=a&b&c&d;
 with input select
   output<="10" when "0000"|"0001"|"0010"|"0011"|"0101"|"0110"|"0111"|"1001"|"1010"|"1011"|"1111",
           "01" when "0100"|"1000"|"1100"|"1101"|"1110",
           "00" when others;
      ew<=output(1);
      ns<=output(0);
end w_s;
    