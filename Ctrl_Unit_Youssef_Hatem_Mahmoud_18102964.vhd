----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:14:39 06/09/2021 
-- Design Name: 
-- Module Name:    Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
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

entity Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964 is

Port ( op_code : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDest : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           aluop : out  STD_LOGIC_VECTOR (1 downto 0));

end Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964;

architecture Behavioral of Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964 is

begin
process(op_code)
begin
if (op_code = "000000") then 
RegDest <='1';
AluSrc <='0';
MemtoReg <='0';
RegWrite <='1';
MemRead <='0';
MemWrite <='0';
Branch <='0';
Aluop <="10";

elsif  (op_code = "100011")then 
RegDest <= '0';
AluSrc <='1';
MemtoReg <= '1';
RegWrite <= '1';
MemRead <= '1';
MemWrite <= '0';
Branch <='0';
Aluop<="00";

elsif (op_code = "101011") then 

AluSrc <='1';

RegWrite <= '0';
MemRead <= '0';
MemWrite <= '1';
Branch <='0';
Aluop<="00";

elsif (op_code = "000100")then 

AluSrc <='0';
RegWrite <= '0';
MemRead <= '0';
MemWrite <= '0';
Branch <='1';
Aluop<="01";

elsif (op_code = "001000")then 
        Aluop <= "00";
        RegDest <= '0';
        AluSrc <= '1';
        MemtoReg <= '0';
        RegWrite <= '1';
        MemRead <= '0';
        memWrite <= '0';
        Branch <= '0';
end if;
end process;


end Behavioral;

