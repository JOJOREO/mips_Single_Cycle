----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:30:11 06/09/2021 
-- Design Name: 
-- Module Name:    Mips_Youssef_Hatem_Mahmoud_18102964 - Behavioral 
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

entity Mips_Youssef_Hatem_Mahmoud_18102964 is

Port ( clk : in  STD_LOGIC:='0');

end Mips_Youssef_Hatem_Mahmoud_18102964;


architecture Behavioral of Mips_Youssef_Hatem_Mahmoud_18102964 is

	


Component Adder_Youssef_Hatem_Mahmoud_18102964 is

Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));

end Component;

Component Alu_Ctrl_unit_Youssef_Hatem_Mahmoud_18102964 is

    Port ( alu_op : in  STD_LOGIC_VECTOR (1 downto 0);
           func : in  STD_LOGIC_VECTOR (5 downto 0);
           op : out  STD_LOGIC_VECTOR (3 downto 0));


end Component;

Component Alu_Youssef_Hatem_Mahmoud_18102964 is

 Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC_VECTOR (3 downto 0);
           c : out  STD_LOGIC_VECTOR (31 downto 0);
			  z: out STD_LOGIC);

end Component;

Component Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964 is

Port ( op_code : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDest : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           aluop : out  STD_LOGIC_VECTOR (1 downto 0));

end Component;

Component Instruction_Memory_Youssef_Hatem_Mahmoud_18102964 is

Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC:='0';
           instruction : OUT  STD_LOGIC_VECTOR (31 downto 0));

end Component;

Component Mux_21_32B_Youssef_Hatem_Mahmoud_18102964 is
PORT(
a : IN std_logic_vector(31 downto 0);
		b : IN std_logic_vector(31 downto 0);
		s : IN std_logic;          
		outp : OUT std_logic_vector(31 downto 0)
		);

end Component;

Component Mux_21_5B_Youssef_Hatem_Mahmoud_18102964 is

PORT(
		a : IN std_logic_vector(4 downto 0);
		b : IN std_logic_vector(4 downto 0);
		s : IN std_logic;          
		outp : OUT std_logic_vector(4 downto 0)
		);
		
end Component;

Component Register_File_Youssef_Hatem_Mahmoud_18102964 is

Port ( Read_Reg_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Read_Reg_2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_reg : in  STD_LOGIC_VECTOR (4 downto 0);
           Read_Data_1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2 : out  STD_LOGIC_VECTOR (31 downto 0);
           Write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           RegWrite : in  STD_LOGIC;
			  clk : in  STD_LOGIC);


end Component;

Component Shift_Left_Youssef_Hatem_Mahmoud_18102964 is

Port ( ip : in  STD_LOGIC_VECTOR (31 downto 0);
           op : OUT  STD_LOGIC_VECTOR (31 downto 0));

end Component;

Component Sign_extend_Youssef_Hatem_Mahmoud_18102964 is

 Port ( ip : in  STD_LOGIC_VECTOR (15 downto 0);
           op : out  STD_LOGIC_VECTOR (31 downto 0));


end Component;

Component dataMemory_Youssef_hatem_mahmoud_18102964 is

 Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           writedata : in  STD_LOGIC_VECTOR (31 downto 0);
           memWrite : in  STD_LOGIC;
           memRead : in  STD_LOGIC;
           clk : in  STD_LOGIC:='0';
           readData : OUT  STD_LOGIC_VECTOR (31 downto 0));

end Component;


Component pc_Youssef_Hatem_mahmoud_18102964 is

Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           outp : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);

end Component;


--signals
--pc signal

signal PCin : STD_LOGIC_VECTOR (31 downto 0);--used
signal PCout : STD_LOGIC_VECTOR (31 downto 0);--used
signal PC_Adder_Out : STD_LOGIC_VECTOR (31 downto 0);--used
signal PC_Branch_Out: STD_LOGIC_VECTOR (31 downto 0);
--Control_Unit Signals
signal ALUSrc_Signal : STD_LOGIC;
signal regWrite_Signal : STD_LOGIC; --used
signal regDest_Signal : STD_LOGIC;--used
signal Branch_Signal : STD_LOGIC;
signal memRead_Signal : STD_LOGIC;--used
signal memWrite : STD_LOGIC;
signal memtoReg_Signal : STD_LOGIC;
signal ALUOp_Signal : STD_LOGIC_VECTOR (1 downto 0);--used
--------------------------------------------------------------------

signal WriteReg : STD_LOGIC_VECTOR (4 downto 0);
signal WriteData : STD_LOGIC_VECTOR (31 downto 0);--used
signal ALUSelectors : STD_LOGIC_VECTOR (3 downto 0);--used
signal ALUOp_Code : STD_LOGIC_VECTOR (31 downto 0);
signal MemData : STD_LOGIC_VECTOR (31 downto 0);
signal Zero_Flag : STD_LOGIC;

signal AluSrc_OUT : STD_LOGIC_VECTOR (31 downto 0);
signal SignExtend_Out: STD_LOGIC_VECTOR (31 downto 0);--used
signal ShiftLeft_Out: STD_LOGIC_VECTOR (31 downto 0);--used
signal ReadData1 : STD_LOGIC_VECTOR (31 downto 0);
signal ReadData2 : STD_LOGIC_VECTOR (31 downto 0);
--Instruction_memory Signals
signal Instructions_31B : STD_LOGIC_VECTOR (31 downto 0);
signal Instructions_31_26 : STD_LOGIC_VECTOR (5 downto 0);--used
signal Instructions_25_21 : STD_LOGIC_VECTOR (4 downto 0);
signal Instructions_20_16 : STD_LOGIC_VECTOR (4 downto 0);
signal Instructions_15_11 : STD_LOGIC_VECTOR (4 downto 0);
signal Instructions_15_0: STD_LOGIC_VECTOR (15 downto 0);
signal Instructions_5_0 : STD_LOGIC_VECTOR (5 downto 0);--used

signal  AndGate : STD_LOGIC;


begin


Instructions_31_26 <= Instructions_31B(31 downto 26);
Instructions_25_21 <= Instructions_31B(25 downto 21);
Instructions_20_16 <= Instructions_31B(20 downto 16);
Instructions_15_11 <= Instructions_31B(15 downto 11);
Instructions_15_0 <= Instructions_31B(15 downto 0);
Instructions_5_0 <= Instructions_31B(5 downto 0);


AndGate <= Zero_Flag and Branch_Signal;


	Inst_Alu_Youssef_Hatem_Mahmoud_18102964: Alu_Youssef_Hatem_Mahmoud_18102964 PORT MAP(ReadData1,AluSrc_OUT,ALUSelectors,ALUOp_Code,Zero_Flag);
	Inst_Pc_Adder_Youssef_Hatem_Mahmoud_18102964: Adder_Youssef_Hatem_Mahmoud_18102964 PORT MAP(PCout,STD_LOGIC_VECTOR(to_unsigned(4, 32)), PC_Adder_Out);
	Inst_Branch_Adder_Youssef_Hatem_Mahmoud_18102964: Adder_Youssef_Hatem_Mahmoud_18102964 PORT MAP(PC_Adder_Out,ShiftLeft_Out,PC_Branch_Out);
	
	Inst_Alu_Ctrl_unit_Youssef_Hatem_Mahmoud_18102964: Alu_Ctrl_unit_Youssef_Hatem_Mahmoud_18102964 PORT MAP(ALUOp_Signal,Instructions_5_0,ALUSelectors);
	Inst_Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964: Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964 PORT MAP(Instructions_31_26,regDest_Signal,ALUSrc_Signal,memtoReg_Signal,regWrite_Signal ,memRead_Signal , memWrite,Branch_Signal ,ALUOp_Signal);
	Inst_Instruction_Memory_Youssef_Hatem_Mahmoud_18102964: Instruction_Memory_Youssef_Hatem_Mahmoud_18102964 PORT MAP( PCout, clk,Instructions_31B );
	Inst_Alu_Mux_21_32B_Youssef_Hatem_Mahmoud_18102964: Mux_21_32B_Youssef_Hatem_Mahmoud_18102964 PORT MAP(ReadData2,SignExtend_Out,ALUSrc_Signal ,AluSrc_OUT );
	
	Inst_DataMemory_Mux_21_32B_Youssef_Hatem_Mahmoud_18102964: Mux_21_32B_Youssef_Hatem_Mahmoud_18102964 PORT MAP(MemData,ALUOp_Code,memtoReg_Signal,WriteData);
	
	Inst_Branch_Mux_21_32B_Youssef_Hatem_Mahmoud_18102964: Mux_21_32B_Youssef_Hatem_Mahmoud_18102964 PORT MAP(PC_Adder_Out,ShiftLeft_Out ,AndGate,PCin);
	Inst_Pc_to_inst_memory_Mux_21_5B_Youssef_Hatem_Mahmoud_18102964: Mux_21_5B_Youssef_Hatem_Mahmoud_18102964 PORT MAP(Instructions_20_16,Instructions_15_11,regDest_Signal ,WriteReg);
	Inst_Register_File_Youssef_Hatem_Mahmoud_18102964: Register_File_Youssef_Hatem_Mahmoud_18102964 PORT MAP(Instructions_25_21 ,Instructions_20_16,WriteReg,ReadData1 ,ReadData2 ,WriteData ,regWrite_Signal ,clk);
	Inst_Shift_Left_Youssef_Hatem_Mahmoud_18102964: Shift_Left_Youssef_Hatem_Mahmoud_18102964 PORT MAP(SignExtend_Out,ShiftLeft_Out);
	Inst_Sign_extend_Youssef_Hatem_Mahmoud_18102964: Sign_extend_Youssef_Hatem_Mahmoud_18102964 PORT MAP(Instructions_15_0,SignExtend_Out);
	Inst_dataMemory_Youssef_hatem_mahmoud_18102964: dataMemory_Youssef_hatem_mahmoud_18102964 PORT MAP(ALUOp_Code,ReadData2,memWrite,memRead_Signal ,clk,MemData);

	Inst_pc_Youssef_Hatem_mahmoud_18102964: pc_Youssef_Hatem_mahmoud_18102964 PORT MAP(PCin,PCout,clk);

	
end Behavioral;

