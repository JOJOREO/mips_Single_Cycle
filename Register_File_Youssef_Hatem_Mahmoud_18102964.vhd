----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:22:47 06/09/2021 
-- Design Name: 
-- Module Name:    Register_File_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
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

entity Register_File_Youssef_Hatem_Mahmoud_18102964 is

Port ( Read_Reg_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Read_Reg_2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_reg : in  STD_LOGIC_VECTOR (4 downto 0);
           Read_Data_1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2 : out  STD_LOGIC_VECTOR (31 downto 0);
           Write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           RegWrite : in  STD_LOGIC;
			  clk : in  STD_LOGIC);


end Register_File_Youssef_Hatem_Mahmoud_18102964;

architecture Behavioral of Register_File_Youssef_Hatem_Mahmoud_18102964 is

 
type registerFile is array(0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
signal registers : registerFile := 
(x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"0000003C",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000",
x"00000000",x"00000000"
);
begin
process(clk,RegWrite)
begin
--Read_Data_1 = registers[Read_Reg_1];
Read_Data_1 <= registers(to_integer(unsigned(Read_Reg_1)));
Read_Data_2 <= registers(to_integer(unsigned(Read_Reg_2)));

if (rising_edge(clk) and RegWrite = '1') then 
 registers(to_integer(unsigned(Write_reg)))<= Write_data;
 end if;
 end process;			  
end Behavioral;

