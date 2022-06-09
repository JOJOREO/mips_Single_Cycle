
-- VHDL Instantiation Created from source file dataMemory_Youssef_hatem_mahmoud_18102964.vhd -- 03:31:01 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT dataMemory_Youssef_hatem_mahmoud_18102964
	PORT(
		address : IN std_logic_vector(31 downto 0);
		writedata : IN std_logic_vector(31 downto 0);
		memWrite : IN std_logic;
		memRead : IN std_logic;
		clk : IN std_logic;          
		readData : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_dataMemory_Youssef_hatem_mahmoud_18102964: dataMemory_Youssef_hatem_mahmoud_18102964 PORT MAP(
		address => ,
		writedata => ,
		memWrite => ,
		memRead => ,
		clk => ,
		readData => 
	);


