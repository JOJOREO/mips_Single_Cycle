----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:21:48 06/09/2021 
-- Design Name: 
-- Module Name:    Sign_extend_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sign_extend_Youssef_Hatem_Mahmoud_18102964 is

 Port ( ip : in  STD_LOGIC_VECTOR (15 downto 0);
           op : out  STD_LOGIC_VECTOR (31 downto 0));


end Sign_extend_Youssef_Hatem_Mahmoud_18102964;

architecture Behavioral of Sign_extend_Youssef_Hatem_Mahmoud_18102964 is

begin
process(ip)
begin
	if ip(15)='1' then op <= x"FFFF" & ip;
   else op <= x"0000" & ip;
   end if;
end process;


end Behavioral;

