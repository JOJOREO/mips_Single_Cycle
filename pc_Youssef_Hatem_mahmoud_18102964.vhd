----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:05:37 06/09/2021 
-- Design Name: 
-- Module Name:    pc_Youssef_Hatem_mahmoud_18102964 - Behavioral 
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

entity pc_Youssef_Hatem_mahmoud_18102964 is

Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           outp : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);

end pc_Youssef_Hatem_mahmoud_18102964;

architecture Behavioral of pc_Youssef_Hatem_mahmoud_18102964 is
signal sig : STD_LOGIC_VECTOR (31 downto 0) := x"00000000";


begin
process(clk)
begin
if rising_edge(clk)then
outp<=sig;
end if;
if falling_edge(clk) then
sig<= inp;
end if;
end process;



end Behavioral;

