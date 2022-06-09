----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:17:10 06/09/2021 
-- Design Name: 
-- Module Name:    Instruction_Memory_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
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

entity Instruction_Memory_Youssef_Hatem_Mahmoud_18102964 is

Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           instruction : OUT  STD_LOGIC_VECTOR (31 downto 0));

end Instruction_Memory_Youssef_Hatem_Mahmoud_18102964;

architecture Behavioral of Instruction_Memory_Youssef_Hatem_Mahmoud_18102964 is

type instructionfile is array(0 to 127) of STD_LOGIC_VECTOR (7 downto 0);
signal memory : instructionfile:=(
	x"20",x"02",x"00",x"00",x"20",x"08",x"00",x"04",
	x"20",x"86",x"00",x"00",x"20",x"A7",x"00",x"00",
	x"20",x"09",x"00",x"01",x"8C",x"C3",x"00",x"00",
	x"20",x"42",x"00",x"01",x"AC",x"E3",x"00",x"00",
	x"00",x"C8",x"30",x"20",x"00",x"E8",x"38",x"20",
	x"00",x"69",x"50",x"2A",x"11",x"40",x"00",x"07",
	x"00",x"49",x"10",x"22",x"00",x"00",x"00",x"00",
	others=>x"00");

begin
--process(clk)
--begin
--if rising_edge(clk) then
instruction <=  memory(to_integer(unsigned(address))) &
             memory(to_integer(unsigned(address)+1))&
             memory(to_integer(unsigned(address)+2))&
             memory(to_integer(unsigned(address)+3));
--end if; 
--end process;


end Behavioral;

