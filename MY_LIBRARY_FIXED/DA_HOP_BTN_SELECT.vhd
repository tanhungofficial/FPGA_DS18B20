--co 8 ngo vao cai nao ko dung thi port map len 0 hoac 1 deu duoc vi co n_in de khong che
--Khi dung n thi chi can thay doi constant n_in
--Nhung cho co thay doi co dau --#######
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity DA_HOP_BTN_SELECT is
	port(	ckht: in std_logic;
			btn,rst: in std_logic;
			i7,i6,i5,i4,i3,i2,i1,i0: in std_logic;
			o: out std_logic);
end DA_HOP_BTN_SELECT;
architecture behavioral of DA_HOP_BTN_SELECT is
constant n_in: integer:=7;								--#####neu dung n ngo vao thi cho n_in:=n-1;
type 		btn_state is ( zero, wait1,one, wait0);
signal 	btn_reg, btn_next: btn_state;
signal 	delay_next, delay_reg : unsigned (19 downto 0);
signal 	btn_cd,qff,btn_cd_hep: std_logic;
signal 	s,s_reg,s_next: std_logic_vector(2 downto 0):="000"; 			
begin
	process(ckht)
	begin
		if falling_edge(ckht) then delay_reg<= delay_next;
											btn_reg <= btn_next;
		end if;
	end process;
	--chong doi nut nhan 
	process(btn,delay_reg,btn_reg)
	begin
		delay_next<= delay_reg;
		btn_next<=   btn_reg;
		case btn_reg is
			when	zero => 	btn_cd <='0';
								if btn='1' then 	btn_next<= wait1;
														delay_next <= (others=>'1');
								end if;
			when	wait1 => btn_cd <='0';
								if btn='1'				then 	delay_next <= delay_reg-1;
									if delay_reg=0 	then	btn_next<=one; 
									end if;
								else btn_next<=zero;
								end if;
			when	one => 	btn_cd <='1';
								if btn='0'	then	btn_next<=wait0; 
														delay_next<=(others=>'1');
								end if;
			when	wait0 => btn_cd <='1';
								if btn='1' then 	btn_next<= one;
								else 					delay_next<=delay_reg-1; 
									if delay_reg = 0 then btn_next<=zero;
									end if;
								end if;
			end case;					
	end process;
	--lam hep xung
	process(ckht,rst)
	begin
		if rst='1' then s_reg<=(others=>'0');
		elsif falling_edge(ckht) then qff<= btn_cd;
												s_reg<=s_next;
		end if;
	end process;
	btn_cd_hep<= (not qff) and btn_cd;
	-- tin hieu cho phep oe
	s_next<= s_reg when btn_cd_hep='0' else
				s_reg+1 when s<n_in    else
				(others=>'0');
	s	<=	s_reg;
	with s select 										
		o<= 	i0 when "000",
				i1 when "001",
				i2 when "010",
				i3 when "011",	
				i4 when "100",
				i5 when "101",
				i6 when "110",
				i7 when others;	
	
end behavioral;