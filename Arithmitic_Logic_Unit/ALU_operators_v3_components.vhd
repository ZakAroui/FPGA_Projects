library ieee;
use ieee.std_logic_1164.all;
package components is
component f_B_alu
port(x1,x2:in std_logic_vector(3 downto 0);
     x3:in std_logic;
     x4:in std_logic_vector(2 downto 0);
     y1:out std_logic_vector(3 downto 0);
     yz,yc,yn:out std_logic);
end component;
component s_seg
port(x1:in std_logic_vector (3 downto 0);
     y1: out std_logic_vector (6 downto 0));
end component;
end components;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity f_B_alu is
port(x1,x2:in std_logic_vector(3 downto 0);
     x3:in std_logic;
     x4:in std_logic_vector(2 downto 0);
     y1:out std_logic_vector(3 downto 0);
     yz,yc,yn:out std_logic);
end f_B_alu;
architecture behavioral of f_B_alu is
signal result:std_logic_vector(4 downto 0);
begin
process(x1,x2,x4,x3)
begin
case x4 is
when "000" => result<='0'&x1;
when "001" => result<=('0'&x1)+('0'&x2)+("0000"&x3);
when "010" => result<=('0'&x1)-('0'&x2);
when "011" => result<=('0'&x1) or ('0'&x2);
when "100" => result<=('0'&x1) and ('0'&x2);
when "101" => result<=('0'&x1) nand ('0'&x2);
when "110" => result<=('0'&x1)+1;
when others => result<=('0'&x2)-1;
end case;
end process;
yn <= result(3);
yz <= not(result(3) or result(2) or result(1) or result(0));
yc <= result(4);
y1 <= result(3 downto 0);
end behavioral;

library ieee;
use ieee.std_logic_1164.all;
entity s_seg is
port (x1:in std_logic_vector (3 downto 0);
      y1: out std_logic_vector (6 downto 0));
end s_seg ;
architecture case_when of s_seg is
begin 
 process (x1)
 begin 
   case x1 is 
  when "0000" => y1<="1000000";
  when "0001" => y1<="1111001";
  when "0010" => y1<="0100100";
  when "0011" => y1<="0110000";
  when "0100" => y1<="0011001";
  when "0101" => y1<="0010010";
  when "0110" => y1<="0000010";
  when "0111" => y1<="1111000";
  when "1000" => y1<="0000000";
  when "1001" => y1<="0010000";
  when "1010" => y1<="0001000";
  when "1011" => y1<="0000011";
  when "1100" => y1<="1000110";
  when "1101" => y1<="0100001";
  when "1110" => y1<="0000110";
  when others => y1<="0001110";
 end case;
 end process;
end case_when;