-- ENA_DB LA  TAN SO XUNG DICH
--CAN THEM HOAC BO BOT CAC KI TU DICH
-- NHUNG CHO CAN THAY DOI CO DAU --########
-- FILE NAY CÓ THE THAY THE CHO 2 FILE CON LAI
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity LCD_DICH_HANG_X_2CHIEU is
    Port ( 		CKHT:  			IN STD_LOGIC;
				RST: 			IN STD_LOGIC;
				ENA_DB: 		IN STD_LOGIC;
				TSP: 			IN STD_LOGIC;  --#### NEU DICH PST THI CHO TSP=>'0', NEU DICH TSP CHO TSP => '1', CO THE DUNG DE DAO CHIEU
				PAUSE: 			IN STD_LOGIC;
				LCD_HANG_X :OUT  STD_LOGIC_VECTOR (127 downto 0));
end LCD_DICH_HANG_X_2CHIEU;

architecture Behavioral of LCD_DICH_HANG_X_2CHIEU is
CONSTANT N_CHAR: 		INTEGER := 15;							-- DUNG N KI TU THI DIEN N, VI DU: HUNG --> N=4
CONSTANT N_STEP: 		INTEGER := N_CHAR + 15;
CONSTANT N_BIT: 		INTEGER := N_CHAR*8;
CONSTANT CS: 			STD_LOGIC_VECTOR(7 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
SIGNAL ORG_STRING: 	STD_LOGIC_VECTOR(N_BIT - 1 DOWNTO 0);
SIGNAL EXT_STRING : 	STD_LOGIC_VECTOR(255 + N_BIT DOWNTO 0);
SIGNAL COUNT_REG, COUNT_NEXT: INTEGER RANGE 0 TO N_STEP:=0;
begin
	--KI TU DICH
	ORG_STRING(7 DOWNTO 0)		<=	CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8);
	ORG_STRING(15 DOWNTO 8)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('G'),8);
	ORG_STRING(23 DOWNTO 16)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8);
	ORG_STRING(31 DOWNTO 24)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('Y'),8);
	ORG_STRING(39 DOWNTO 32)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('E'),8);
	ORG_STRING(47 DOWNTO 40)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8);
	ORG_STRING(55 DOWNTO 48)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	ORG_STRING(63 DOWNTO 56)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('T'),8);
	ORG_STRING(71 DOWNTO 64)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('A'),8);
	ORG_STRING(79 DOWNTO 72)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8);
	ORG_STRING(87 DOWNTO 80)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	ORG_STRING(95 DOWNTO 88)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8);
	ORG_STRING(103 DOWNTO 96)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8);
	ORG_STRING(111 DOWNTO 104)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8);
	ORG_STRING(119 DOWNTO 112)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('G'),8);
	EXT_STRING <= CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS& ORG_STRING &CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS&CS;  --TAO CHUOI
	PROCESS(CKHT)
	BEGIN
		IF RST = '1' 					THEN COUNT_REG <= 0;
		ELSIF FALLING_EDGE(CKHT)	THEN COUNT_REG <= COUNT_NEXT;
		END IF;
	END PROCESS;
	COUNT_NEXT <= COUNT_REG 	WHEN ENA_DB = '0'	OR PAUSE = '1'				ELSE
					  COUNT_REG +1 WHEN TSP = '0' AND COUNT_REG < N_STEP		ELSE
					  COUNT_REG -1 WHEN TSP = '1' AND COUNT_REG > 0 			ELSE
					  N_STEP			WHEN TSP = '1' 									ELSE
					  0;
	LCD_HANG_X <= EXT_STRING(COUNT_REG*8 + 127 DOWNTO COUNT_REG*8);
end Behavioral;