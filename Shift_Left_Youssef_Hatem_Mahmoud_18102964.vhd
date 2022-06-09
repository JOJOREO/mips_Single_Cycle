----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:20:55 06/09/2021 
-- Design Name: 
-- Module Name:    Shift_Left_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Shift_Left_Youssef_Hatem_Mahmoud_18102964 is

Port ( ip : in  STD_LOGIC_VECTOR (31 downto 0);
           op : OUT  STD_LOGIC_VECTOR (31 downto 0));

end Shift_Left_Youssef_Hatem_Mahmoud_18102964;

architecture Behavioral of Shift_Left_Youssef_Hatem_Mahmoud_18102964 is

begin

op<=STD_LOGIC_VECTOR(shift_left(Unsigned(ip),2));
end Behavioral;

