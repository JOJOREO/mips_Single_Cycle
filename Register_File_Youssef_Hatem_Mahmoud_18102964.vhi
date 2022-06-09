
-- VHDL Instantiation Created from source file Register_File_Youssef_Hatem_Mahmoud_18102964.vhd -- 03:23:03 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Register_File_Youssef_Hatem_Mahmoud_18102964
	PORT(
		Read_Reg_1 : IN std_logic_vector(4 downto 0);
		Read_Reg_2 : IN std_logic_vector(4 downto 0);
		Write_reg : IN std_logic_vector(4 downto 0);
		Write_data : IN std_logic_vector(31 downto 0);
		RegWrite : IN std_logic;
		clk : IN std_logic;          
		Read_Data_1 : OUT std_logic_vector(31 downto 0);
		Read_Data_2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Register_File_Youssef_Hatem_Mahmoud_18102964: Register_File_Youssef_Hatem_Mahmoud_18102964 PORT MAP(
		Read_Reg_1 => ,
		Read_Reg_2 => ,
		Write_reg => ,
		Read_Data_1 => ,
		Read_Data_2 => ,
		Write_data => ,
		RegWrite => ,
		clk => 
	);


