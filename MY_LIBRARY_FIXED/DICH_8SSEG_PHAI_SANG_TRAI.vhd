--CAC KI TU CHAR7-CHAR0 LA KI TU CAC BAN MUON CHAY, SO LUONG CAC CHAR LA KHONG BAT BUOC
--NHUNG CHO CAN CHINH SUA CO DAU --#######
library  ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DICH_8SSEG_PHAI_SANG_TRAI is 
	port( ckht: in std_logic;
			rst,ena_db: in std_logic;
			sseg7,sseg6,sseg5,sseg4: out std_logic_vector(6 downto 0);
			sseg3,sseg2,sseg1,sseg0: out std_logic_vector(6 downto 0));
end DICH_8SSEG_PHAI_SANG_TRAI;
architecture behavioral of DICH_8SSEG_PHAI_SANG_TRAI is 

constant char7: std_logic_vector:="1111001";
constant char6: std_logic_vector:="0000010";
constant char5: std_logic_vector:="1111001";
constant char4: std_logic_vector:="0011001";
constant char3: std_logic_vector:="1111001";
constant char2: std_logic_vector:="1111001";
constant char1: std_logic_vector:="1111000";
constant char0: std_logic_vector:="0010010";
constant n_step: integer:=16;						--##### cac ban tu tinh va dieu chinh
constant char_len: integer:=56;					--##### so luong char*6
signal char_one: std_logic_vector(55 downto 0):=(others=>'1');
signal char_ext_org, char_ext_next,char_ext_reg: std_logic_vector(char_len+55 downto 0);
signal count_next, count_reg: integer range 0 to n_step:=0;
begin
	char_ext_org<=char_one & char7 & char6 & char5 & char4 & char3 & char2 & char1 & char0;
	--register
	process(ckht,rst)
	begin
		if rst ='1' then char_ext_reg<=char_ext_org;
								count_reg<=0;
		elsif falling_edge(ckht) then char_ext_reg<= char_ext_next;
												count_reg<=count_next;
		end if;
	end process;
	--next state
	char_ext_next<= 	char_ext_reg when ena_db='0'  else
							char_ext_reg(104 downto 0)&"1111111" when count_reg<n_step else
							char_ext_org;
	count_next<= 	count_reg 	when ena_db='0'			else
						count_reg+1 when count_reg<n_step 	else
						0;
	sseg7<= char_ext_reg(111 downto 105);
	sseg6<= char_ext_reg(104 downto 98);
	sseg5<= char_ext_reg(97 downto 91);
	sseg4<= char_ext_reg(90 downto 84);
	sseg3<= char_ext_reg(83 downto 77);
	sseg2<= char_ext_reg(76 downto 70);
	sseg1<= char_ext_reg(69 downto 63);
	sseg0<= char_ext_reg(62 downto 56);
end behavioral;