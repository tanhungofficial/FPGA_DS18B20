library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DEM_GIO_PHUT_GIAY is 
	port (	ckht: in std_logic;
				ena_db, rst,up,down: in std_logic;
				mode: in std_logic_vector(1 downto 0);
				gio,phut,giay: out std_logic_vector(5 downto 0));
end DEM_GIO_PHUT_GIAY;
architecture behavioral of DEM_GIO_PHUT_GIAY is
signal time_org:					std_logic_vector(17 downto 0):="000000000000000000";
signal gio_reg, gio_next: 		std_logic_vector(5 downto 0):=time_org(17 downto 12);
signal phut_reg, phut_next: 	std_logic_vector(5 downto 0):=time_org(11 downto 6);
signal giay_reg, giay_next: 	std_logic_vector(5 downto 0):=time_org(5 downto 0);
begin
	--register
	process(ckht,rst)
	begin
		if rst = '1' then 	gio_reg<=time_org(17 downto 12);
									phut_reg<=time_org(11 downto 6);
									giay_reg<=time_org(5 downto 0);
		elsif falling_edge(ckht) then 	gio_reg<= gio_next;
												phut_reg<=phut_next;
												giay_reg<= giay_next;
		end if;
	end process;
	-- next state
	process(gio_reg, phut_reg, giay_reg, ena_db,mode)
	begin
		gio_next<=gio_reg;
		phut_next<= phut_reg;
		giay_next<= giay_reg;
		--che do dong ho
		if ena_db='1' and mode="00" then 
				if giay_reg< 59  then 		giay_next<= giay_reg+1;
				elsif phut_reg< 59 then 	phut_next<= phut_reg+1;
													giay_next<=(others=>'0');
				elsif gio_reg< 23	then 		gio_next<= gio_reg+1;
													phut_next<= (others=>'0');
													giay_next<= (others=>'0');
				else 								gio_next<= (others=>'0');
													phut_next<= (others=>'0');
													giay_next<= (others=>'0');
						
				end if;
		--cho do chinh gio
		elsif mode="01" then
			if up='1' then
				if gio_reg<23 		then gio_next<=gio_reg+1;
				else 					gio_next<= (others=>'0');
				end if;
			elsif down = '1' then
				if gio_reg > 0 	then gio_next <= gio_reg -1;
				else gio_next <= "010111";
				end if;
			else
				gio_next<= gio_reg;
			end if;	
		--che do chinh phut
		elsif	mode ="10" then 	
			if up='1' then
				if  phut_reg<59 		then phut_next <= phut_reg+1;
				else 								  phut_next<= (others=>'0');
				end if;
			elsif down = '1' then
				if phut_reg > 0 	then phut_next <= phut_reg -1;
				else phut_next <= "111011";
				end if;
			else
				phut_next<= phut_reg;
			end if;	
		--chinh giay
		elsif mode="11" then
			if up='1' then
				if  giay_reg < 59 		then giay_next<=giay_reg+1;
				else 								  giay_next<= (others=>'0');
				end if;
			elsif down = '1' then
				if giay_reg > 0 	then giay_next <= giay_reg -1;
				else giay_next <= "111011";
				end if;
			else
				giay_next<= giay_reg;
			end if;			
		end if;
	end process;
	--output logic
	gio<= gio_reg;
	phut<= phut_reg;
	giay<= giay_reg;
end behavioral;