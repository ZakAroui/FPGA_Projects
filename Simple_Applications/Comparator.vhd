library ieee;
use ieee.std_logic_1164.all;
entity Comparator is
port(a,b:in std_logic_vector(3 downto 0);
     g,ge,e,ne,le,l:out std_logic);
end Comparator;
architecture when_else of Comparator is
signal output:std_logic_vector(5 downto 0);
begin
 output<="111100" when a>b else
         "001111" when a<b else
         "011010" when a=b else
         "000000";
  g<=output(5);
  ge<=output(4);
  e<=output(3);
  ne<=output(2);
  le<=output(1);
  l<=output(0);
end when_else;