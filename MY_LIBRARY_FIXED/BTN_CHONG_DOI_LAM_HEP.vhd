library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity BTN_CHONG_DOI_LAM_HEP is 
	port(	ckht: in std_logic;
			btn:  in std_logic;
			btn_cd_hep: out std_logic);
end BTN_CHONG_DOI_LAM_HEP;

architecture behavioral of BTN_CHONG_DOI_LAM_HEP is
type btn_state is ( zero, wait1,one, wait0);
signal btn_reg, btn_next: btn_state;
signal delay_next, delay_reg : unsigned (19 downto 0);
signal btn_cd , qff: std_logic;
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
		btn_next<= btn_reg;
		case btn_reg is
			when 	zero => 	btn_cd <='0';
								if btn='1' then 	btn_next<= wait1;
														delay_next <= (others=>'1');
								else btn_next<=zero;
								end if;
			when 	wait1 => btn_cd <='0';
								if btn='1' then delay_next <= delay_reg-1;
									if 	delay_reg=0 then	btn_next<=one; end if;
								else btn_next<=zero;
								end if;
			when 	one => 	btn_cd <='1';
								if btn='1' then btn_next<= one;
								else btn_next<=wait0; delay_next<=(others=>'1');
								end if;
			when 	wait0 => btn_cd <='1';
								if btn='1' then btn_next<= one;
								else delay_next<=delay_reg-1; 
									if delay_reg = 0 then btn_next<=zero; end if;
								end if;
			end case;					
	end process;
	--lam hep xung
	process(ckht)
	begin
		if falling_edge(ckht) then qff<= btn_cd;
		end if;
	end process;
	btn_cd_hep<= (not qff) and btn_cd;
end behavioral;