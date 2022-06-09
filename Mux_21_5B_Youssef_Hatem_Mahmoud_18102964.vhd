----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:28:41 06/09/2021 
-- Design Name: 
-- Module Name:    Mux_21_5B_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
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

entity Mux_21_5B_Youssef_Hatem_Mahmoud_18102964 is

PORT(
		a : IN std_logic_vector(4 downto 0);
		b : IN std_logic_vector(4 downto 0);
		s : IN std_logic;          
		outp : OUT std_logic_vector(4 downto 0)
		);

end Mux_21_5B_Youssef_Hatem_Mahmoud_18102964;

architecture Behavioral of Mux_21_5B_Youssef_Hatem_Mahmoud_18102964 is

begin
process(s)
begin

 if s = '0'  then outp<=a;
 else  outp<=b;
 end if;
 end process;




end Behavioral;

