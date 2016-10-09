library ieee;
use ieee.std_logic_1164.all;
entity fuel is
  port(a,b,c:in std_logic;
       y:out std_logic_vector(7 downto 0);
       f1:out std_logic_vector(6 downto 0);
       f2:out std_logic_vector(6 downto 0);
       f3:out std_logic_vector(6 downto 0);
       f4:out std_logic_vector(6 downto 0));
end fuel;
architecture w_e_w_s of fuel is
signal input:std_logic_vector(2 downto 0);
begin 
  input<=a&b&c;
   y<="11111111" when input="111" else
      "01111111" when input="110" else
      "00111111" when input="101" else
      "00011111" when input="100" else
      "00001111" when input="011" else
      "00000111" when input="010" else
      "00000011" when input="001" else
      "00000001";
  with input select
  f1<="0001110" when "001"|"000",
      "1111111" when others;
  with input select
  f2<="1000001" when "001"|"000",
      "1111111" when others;
  with input select
  f3<="0000110" when "001"|"000",
      "1111111" when others;
  with input select
  f4<="1000111" when "001"|"000",
      "1111111" when others;
end w_e_w_s;