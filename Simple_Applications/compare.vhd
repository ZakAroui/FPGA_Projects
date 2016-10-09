library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity compare is
  port(k:in std_logic_vector(7 downto 0);
      L0,G99:out std_logic);
end compare;
architecture behave of compare is
begin
 process(k)
 begin
  if (k(7)='1') then L0<='1';G99<='0';
  elsif (k(7)='0') then 
     if (k(6 downto 0)<"01100100") then L0<='0';G99<='0';
     elsif(k(6 downto 0)>"01100011") then L0<='0';G99<='1';
     end if;
  end if;
 end process;
end behave;
