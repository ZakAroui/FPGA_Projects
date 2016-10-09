library ieee;
use ieee.std_logic_1164.all;
entity fuel is
 port(x:in std_logic_vector(2 downto 0);
      d:out std_logic_vector(7 downto 0);
      s1,s2,s3,s4:out std_logic_vector(6 downto 0));
end fuel;
architecture behavioral of fuel is
 begin
 process(x)
 begin
   if    (x="000") then d<="00000001"; s1<="0001110";s2<="1000001";s3<="0000110";s4<="1000111";
   elsif (x="001") then d<="00000011"; s1<="0001110";s2<="1000001";s3<="0000110";s4<="1000111";
   elsif (x="010") then d<="00000111"; s1<="1111111";s2<="1111111";s3<="1111111";s4<="1111111";
   elsif (x="011") then d<="00001111"; s1<="1111111";s2<="1111111";s3<="1111111";s4<="1111111";
   elsif (x="100") then d<="00011111"; s1<="1111111";s2<="1111111";s3<="1111111";s4<="1111111";
   elsif (x="101") then d<="00111111"; s1<="1111111";s2<="1111111";s3<="1111111";s4<="1111111";
   elsif (x="110") then d<="01111111"; s1<="1111111";s2<="1111111";s3<="1111111";s4<="1111111";
   elsif (x="111") then d<="11111111"; s1<="0001110";s2<="1000001";s3<="1000111";s4<="1000111";
  end if;
 end process;
end behavioral;