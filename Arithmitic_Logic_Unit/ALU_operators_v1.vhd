library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity ALU is
port(a,b:in std_logic_vector(3 downto 0);
     op_code:in std_logic_vector(3 downto 0);
     y:out std_logic_vector(3 downto 0));
end ALU;
architecture case_when of ALU is
begin
 process(op_code,a,b)
 begin
  case op_code is
    when "0000" => y<=a;
    when "0001" => y<=a and b;
    when "0010" => y<=a or b;
    when "0011" => y<=not a;
    when "0100" => y<=a xor b;
    when "0101" => y<=a+b;
    when "0110" => y<=a+1;
    when "0111" => y<=a-1;
    when "1000" => y<=b;
    when "1001" => y<=a nand b;
    when "1010" => y<=a nor b;
    when "1011" => y<=not b;
    when "1100" => y<=a xnor b;
    when "1101" => y<=a-b;
    when "1110" => y<=b+1;
    when others => y<=b-1;
  end case;
 end process;
end case_when;