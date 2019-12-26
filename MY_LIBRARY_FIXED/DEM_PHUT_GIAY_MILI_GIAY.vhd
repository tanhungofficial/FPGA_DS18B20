library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DEM_PHUT_GIAY_MILI_GIAY is 
	port (	ckht: in std_logic;
				ena_db, rst,start,stop: in std_logic;
				mi_giay,phut,giay: out std_logic_vector(6 downto 0));
end DEM_PHUT_GIAY_MILI_GIAY;
architecture behavioral of DEM_PHUT_GIAY_MILI_GIAY is
signal ms_reg, ms_next: 		std_logic_vector(6 downto 0):=(others=>'0');
signal phut_reg, phut_next: 	std_logic_vector(6 downto 0):=(others=>'0');
signal giay_reg, giay_next: 	std_logic_vector(6 downto 0):=(others=>'0');
signal run_reg,run_next: std_logic:='0';
begin
	--register
	process(ckht,rst)
	begin
		if rst = '1' then 	ms_reg<=(others=>'0');
									phut_reg<=(others=>'0');
									giay_reg<=(others=>'0');
									run_reg<='0';
		elsif falling_edge(ckht) then 	ms_reg<= ms_next;
													phut_reg<=phut_next;
													giay_reg<= giay_next;
													run_reg<=run_next;
		end if;
	end process;
	-- next state
	process(ms_reg, phut_reg, giay_reg, ena_db)
	begin
	ms_next<=ms_reg;
	phut_next<= phut_reg;
	giay_next<= giay_reg;
		if (ena_db='1') and run_reg='1' then 
				if ms_reg< 99 		then 		ms_next<= ms_reg+1;
				elsif giay_reg< 59 then 	giay_next<= giay_reg+1;
													ms_next<=(others=>'0');
				elsif phut_reg< 59	then 	phut_next<= phut_reg+1;
													giay_next<= (others=>'0');
													ms_next 	<= (others=>'0');					
				end if;
		end if;
	end process;
	run_next<= '1' when start='1' else
					'0' when stop='1'	else
					run_reg;
	--output logic
	mi_giay<= ms_reg;
	phut<= phut_reg;
	giay<= giay_reg;
end behavioral;