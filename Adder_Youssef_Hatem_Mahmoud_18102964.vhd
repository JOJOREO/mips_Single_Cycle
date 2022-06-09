----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:19:32 06/09/2021 
-- Design Name: 
-- Module Name:    Adder_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
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

entity Adder_Youssef_Hatem_Mahmoud_18102964 is

Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));

end Adder_Youssef_Hatem_Mahmoud_18102964;

architecture Behavioral of Adder_Youssef_Hatem_Mahmoud_18102964 is


begin
  
output<= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(input1))+to_integer(unsigned(input2))), 32));


end Behavioral;

