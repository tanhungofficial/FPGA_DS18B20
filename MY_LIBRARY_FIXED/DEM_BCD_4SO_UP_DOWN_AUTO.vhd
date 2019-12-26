library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DEM_BCD_4SO_UP_DOWN_AUTO is 
	port (	ckht: in std_logic;
				ena_db, pause, rst: in std_logic;
				nghin,tram, chuc, donvi: out std_logic_vector(3 downto 0));
end DEM_BCD_4SO_UP_DOWN_AUTO;
architecture behavioral of DEM_BCD_4SO_UP_DOWN_AUTO is
constant bcd_max: std_logic_vector(15 downto 0):="0000000010011001";	--#### ghi duoi dang bcd, vd 9999 la 1001 1001 1001 1010
constant bcd_min: std_logic_vector(15 downto 0):="0000000000000000";	--#### ghi duoi dang bcd, vd 000 la 0000 0000 0000  0000 
signal bcd_ext: std_logic_vector(15 downto 0);
signal nghin_reg, nghin_next,tram_reg, tram_next, chuc_reg, chuc_next, donvi_reg, donvi_next: std_logic_vector(3 downto 0);
signal mode_next, mode_reg: std_logic;
begin
	bcd_ext<= nghin_reg & tram_reg & chuc_reg & donvi_reg;
	--register
	process(ckht,rst)
	begin
		if rst = '1' then 	nghin_reg<=bcd_min(15 downto 12);
									tram_reg<=bcd_min(11 downto 8);
									chuc_reg<=bcd_min(7 downto 4);
									donvi_reg<=bcd_min(3 downto 0);
									mode_reg<='1';
		elsif falling_edge(ckht) then 	nghin_reg<=nghin_next;
												tram_reg<= tram_next;
												chuc_reg<=chuc_next;
												donvi_reg<= donvi_next;
												mode_reg<= mode_next;
		end if;
	end process;
	-- next state
	process(tram_reg, chuc_reg, donvi_reg, ena_db, pause)
	begin
		nghin_next<=nghin_reg;
		tram_next<=tram_reg;
		chuc_next<= chuc_reg;
		donvi_next<= donvi_reg;
		if (ena_db='1') and (pause = '0') then 
			--dem len
			if (bcd_ext< bcd_max) and (mode_reg ='1') then 
				if donvi_reg< x"9" then 	donvi_next<= donvi_reg+1;
				elsif chuc_reg<x"9" then 	chuc_next<= chuc_reg+1;
													donvi_next<=(others=>'0');
				elsif tram_reg<x"9"	then 	tram_next<= tram_reg+1;
													chuc_next<= (others=>'0');
													donvi_next<= (others=>'0');
				else 	nghin_next<= nghin_reg+1;
						tram_next<= (others=>'0');
						chuc_next<= (others=>'0');
						donvi_next<= (others=>'0');
				end if;
			--dem xuong
			elsif (bcd_ext>bcd_min) and (mode_reg='0')	then 	
				if donvi_reg >x"0" then 	donvi_next<= donvi_reg-1;
				elsif chuc_reg>x"0" then 	chuc_next<= chuc_reg-1;
													donvi_next<=x"9";
				elsif tram_reg>x"0"	then 	tram_next<= tram_reg-1;
													chuc_next<= x"9";
													donvi_next<= x"9";
				else 	nghin_next<= nghin_reg-1;
						tram_next<= x"9";
						chuc_next<= x"9";
						donvi_next<= x"9";
						
				end if;
			--#######
			end if;
			if bcd_ext<bcd_min then nghin_next<=bcd_min(15 downto 12);
											tram_next<=bcd_min(11 downto 8);
											chuc_next<=bcd_min(7 downto 4);
											donvi_next<=bcd_min(3 downto 0);
			elsif bcd_ext> bcd_max then 	nghin_next<=bcd_max(15 downto 12);
													tram_next<=bcd_max(11 downto 8);
													chuc_next<=bcd_max(7 downto 4);
													donvi_next<=bcd_max(3 downto 0);
			end if;
		end if;
	end process;
	mode_next<= '1' 		when 	bcd_ext = bcd_min	else
					'0'		when 	bcd_ext = bcd_max	else
					mode_reg;
	--output logic
	nghin<=nghin_reg;
	tram<= tram_reg;
	chuc<= chuc_reg;
	donvi<= donvi_reg;
end behavioral;