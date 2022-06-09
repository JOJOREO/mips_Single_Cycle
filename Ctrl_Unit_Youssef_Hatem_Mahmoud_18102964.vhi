
-- VHDL Instantiation Created from source file Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964.vhd -- 02:35:00 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964
	PORT(
		op_code : IN std_logic_vector(5 downto 0);          
		RegDest : OUT std_logic;
		AluSrc : OUT std_logic;
		MemtoReg : OUT std_logic;
		RegWrite : OUT std_logic;
		MemRead : OUT std_logic;
		MemWrite : OUT std_logic;
		Branch : OUT std_logic;
		aluop : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964: Ctrl_Unit_Youssef_Hatem_Mahmoud_18102964 PORT MAP(
		op_code => ,
		RegDest => ,
		AluSrc => ,
		MemtoReg => ,
		RegWrite => ,
		MemRead => ,
		MemWrite => ,
		Branch => ,
		aluop => 
	);


