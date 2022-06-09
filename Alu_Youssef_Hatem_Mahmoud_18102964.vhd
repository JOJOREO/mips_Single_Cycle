----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:12:45 06/09/2021 
-- Design Name: 
-- Module Name:    Alu_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu_Youssef_Hatem_Mahmoud_18102964 is

 Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC_VECTOR (3 downto 0);
           c : out  STD_LOGIC_VECTOR (31 downto 0);
			  z: out STD_LOGIC);

end Alu_Youssef_Hatem_Mahmoud_18102964;

architecture Behavioral of Alu_Youssef_Hatem_Mahmoud_18102964 is
signal t:std_logic_vector(31 downto 0);
signal zflag:std_Logic;
begin
process(s)
begin
case (S) is

when "0000"=>                           --AND
t<= a and b;

when "0001"=>                           --OR
t<= a or b;

when "0010"=>                           --ADD
t<= a+b;

when "0110"=>                           --SUBTRACT
t<= a-b;

when "0111"=>                           --SET LESS THAN (A<B)
If(a<b)then
t<= (0=>'1',others=>'0');
else
t<=(others=>'0');
end if; 

when "1100"=>                           --NOR
t<= a nor b;

when others => t<= (others=>'0');
end case;

if(a=b) then 
zflag<= '1';
else
zflag<='0';
end if;

end process;

c<=t;
z<=zflag;

end Behavioral;

