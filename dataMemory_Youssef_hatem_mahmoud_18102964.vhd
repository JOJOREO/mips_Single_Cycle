----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:09:56 06/09/2021 
-- Design Name: 
-- Module Name:    dataMemory_Youssef_hatem_mahmoud_18102964 - Behavioral 
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

entity dataMemory_Youssef_hatem_mahmoud_18102964 is

 Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           writedata : in  STD_LOGIC_VECTOR (31 downto 0);
           memWrite : in  STD_LOGIC;
           memRead : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           readData : OUT  STD_LOGIC_VECTOR (31 downto 0));

end dataMemory_Youssef_hatem_mahmoud_18102964;

architecture Behavioral of dataMemory_Youssef_hatem_mahmoud_18102964 is
type memoryfile is array(0 to 127) of STD_LOGIC_VECTOR (7 downto 0);
signal memory : memoryfile:=(

	x"43",x"6F",x"6D",x"70",x"75",x"74",x"65",x"72",
	x"20",x"41",x"72",x"63",x"68",x"69",x"74",x"65",
	x"63",x"74",x"75",x"72",x"65",x"20",x"32",x"30",
	x"32",x"31",x"21",x"21",x"32",x"31",x"21",x"21",
	x"00",x"00",x"00",x"00",others=>x"00");


begin
process(address,memRead,memWrite,clk,writedata)
begin
if falling_edge(clk) and memRead= '1' and memWrite = '0' then
readData <= memory(to_integer(unsigned(address))) &
             memory(to_integer(unsigned(address)+1))&
            memory(to_integer(unsigned(address)+2))&
             memory(to_integer(unsigned(address)+3));
end if;
if rising_edge(clk) and memRead = '0' and memWrite = '1' then
memory(to_integer(unsigned(address))) <= writedata(31 downto 24);
memory(to_integer(unsigned(address))) <= writedata(23 downto 16);
memory(to_integer(unsigned(address))) <= writedata(15 downto 8);
memory(to_integer(unsigned(address))) <= writedata(7 downto 0);
end if;

end process; 


end Behavioral;

