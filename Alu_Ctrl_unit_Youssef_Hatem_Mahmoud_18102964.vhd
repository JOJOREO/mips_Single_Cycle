----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:15:50 06/09/2021 
-- Design Name: 
-- Module Name:    Alu_Ctrl_unit_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
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

entity Alu_Ctrl_unit_Youssef_Hatem_Mahmoud_18102964 is

    Port ( alu_op : in  STD_LOGIC_VECTOR (1 downto 0);
           func : in  STD_LOGIC_VECTOR (5 downto 0);
           op : out  STD_LOGIC_VECTOR (3 downto 0));


end Alu_Ctrl_unit_Youssef_Hatem_Mahmoud_18102964;

architecture Behavioral of Alu_Ctrl_unit_Youssef_Hatem_Mahmoud_18102964 is

begin
process(alu_op, func)
begin
if alu_op="00" then op<="0010";
elsif alu_op="01" then op<="0110";
elsif alu_op="10" then
if func = "100000" then op<="0010";
elsif func = "100010" then op<="0110";
elsif func = "100100" then op<="0000";
elsif func = "100101" then op<="0001";
else op<="0111";
end if;
end if;
end process;


end Behavioral;

