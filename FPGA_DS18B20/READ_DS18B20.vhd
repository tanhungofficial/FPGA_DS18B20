library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
 
entity READ_DS18B20 is     
	Port (  	CKHT, RST:        in  		std_logic;   --50MHz              
				DS18B20:     		inout 	std_logic;                     
				DS_RESPOND:  		OUT     	std_logic;                           
				DS_TEMPERATURE:  OUT 		std_logic_vector(11 downto 0)); 
end READ_DS18B20;
  
architecture Behavioral of READ_DS18B20 is 
CONSTANT 	SKIP_ROM: 			STD_LOGIC_VECTOR(7 DOWNTO 0):= X"CC"; 
CONSTANT 	CONVERT_T: 			STD_LOGIC_VECTOR(7 DOWNTO 0):= X"44";
CONSTANT 	READ_SCRATCHPAD: 	STD_LOGIC_VECTOR(7 DOWNTO 0):= X"BE"; 
TYPE STATE_TYPE is  (             
								 RESET,  
								 SKIP_ROM_CC,   
								 WRITE_BYTE,  
								 WRITE_BIT_0, 
								 WRITE_BIT_1,            
								 READ_BIT,              
								 CONVERT_T_44,            
								 READ_SCRATCHPAD_BE,            
								 GET_TEMPERATURE,           
								 WAIT4MS             );   
 signal STATE: STATE_TYPE:= RESET;   
 signal J: 								integer range 0 to 200001:=0;   
 signal ds_in, ds_out, ds_ena: 	std_logic;  
 signal WR_STATE_I: 					integer range 0 to 4:=0;   
 signal WR_BYTE: 						std_logic_vector(7 downto 0):="00000000";   
 signal WR_PTR: 						integer range 0 to     8:=0;   
 signal WR_BIT_0_I: 					integer range 0 to 2:=0;   
 signal STATE_WR_BIT_0: 			integer range 0 to 2:=0;   
 signal S_RST: 						integer range 0 to 3:=0;   
 signal STATE_RD_BIT_0: 			integer range 0 to 3:=0;  
 signal RD_PTR: 						integer range 0 to 13:=0;   
 signal TEMP: 				std_logic_vector(11 downto 0); 
 
 
begin      
 ds18b20 <= ds_out when ds_ena = '1' else               
            'Z';          
 process(STATE,ckht, rst)      
 begin          
	 if(rst='1') then  	STATE          <= RESET;                        
								WR_STATE_I     <= 0;                       
								WR_BIT_0_I     <= 0;                        
								STATE_WR_BIT_0 <= 0;                         
								WR_PTR         <= 0;                         
								STATE_RD_BIT_0 <= 0;                         
								WR_BYTE        <= "00000001";                  
	 elsif rising_edge(ckht) then               
		 case STATE is                  
				when RESET  =>  
					  case S_RST is                	 
								when 0 =>   ds_out <= '0';                                       
												ds_ena <= '1';                                         
												if J = 25000 then  J <= 0; S_RST <= 1;   
												else               J <= J+1;     
												end if;                                               
								when 1 =>  ds_ena <= '0';      							
												if J = 500 then   J <= 0;   S_RST <= 2;      
												else              J <= J+1;            
												end if;                                  
								when 2 =>  ds_ena <= '0';    
												if J = 12000 then J <= 0; S_RST <= 3;        
												else              J <= J+1;                                  
												end if;    
												
												if J= 3000 then   DS_RESPOND   <= DS18B20;    
																		ds_in   <= DS18B20;              
												end if;    
								when 3 =>  S_RST <= 0;                   
												if DS_IN = '0' then   STATE <= SKIP_ROM_CC;           
												else                  STATE <= RESET; 
												end if;                                 
								when others =>      STATE <= RESET;                                                         
						end case;                                                            
				when SKIP_ROM_CC=>   WR_BYTE <= SKIP_ROM;           
											STATE   <=  WRITE_BYTE;                                                              
				when WRITE_BYTE=>                    
					  case WR_PTR is                          
							when 0 to 7 => if (WR_BYTE(WR_PTR)='0') then                                         
														STATE <= WRITE_BIT_0;                                             
												else             
														STATE <= WRITE_BIT_1;                           
												end if;                    											
												WR_PTR  <=  WR_PTR + 1;                                         
							when 8=>       if (WR_STATE_I=0) then 
													 WR_STATE_I <= 1;                    
													 STATE <= CONVERT_T_44;    
											   elsif (WR_STATE_I=1) then WR_STATE_I <=2;          
															STATE <= RESET;                        
												elsif (WR_STATE_I=2) then  WR_STATE_I <= 3;      
													STATE <= READ_SCRATCHPAD_BE;        
												elsif (WR_STATE_I=3) then  WR_STATE_I <= 0;
													STATE <= GET_TEMPERATURE;  
												end if;                              
												WR_PTR <=0;                   
							when others =>  STATE <= RESET;         
						end case;                                 
				when WRITE_BIT_0=>            
						case WR_BIT_0_I is            
							when 0=>    ds_out <= '0';          
											ds_ena <= '1';                                      
											if (J=3500) then   J <= 0;                                               
																		WR_BIT_0_I <= 1;         																		
											else             	J<=J+1;                          
											end if;                                                            
							when 1=>    ds_ena <= '0';                                    
											if (J=250) then    J <= 0;                                                          
																	WR_BIT_0_I <= 2;                                           
											else             	J <= J+1;        
											end if;                                       
							when 2=>    STATE <= WRITE_BYTE;                                    
												WR_BIT_0_I <=0;                                                          
							when others =>  WR_BIT_0_I<=0;                       
						end case;                                    
				when WRITE_BIT_1=>                      
						case STATE_WR_BIT_0 is                          
							when 0=>    ds_out <= '0';                                 
											ds_ena <= '1';                                 
											if (J=400) then     J <= 0;                     
																	STATE_WR_BIT_0 <= 1;                                       
											else                 J <= J+1;                                       
											end if;                                                                   
							when 1=>    ds_ena <= '0';                                         
											if (J=3600) then  J <=0;                                                        
											STATE_WR_BIT_0 <=2;                                     
							else              J <= J+1;                               
							end if;                                                     
							when 2=>    STATE <= WRITE_BYTE;
											STATE_WR_BIT_0 <= 0;     
							when others =>      STATE_WR_BIT_0 <=0;        
						end case;                                   
				when CONVERT_T_44=>     WR_BYTE     <= CONVERT_T;           
												STATE   <= WRITE_BYTE;                                    
				when READ_SCRATCHPAD_BE=>  WR_BYTE  <= READ_SCRATCHPAD;   
												STATE   <= WRITE_BYTE;                                    
				when READ_BIT=>                       
						case STATE_RD_BIT_0 is  
							when 0 =>   ds_out <= '0';                                    
											ds_ena <= '1';                                      
											if (J=200) then   STATE_RD_BIT_0 <= 1;              
																	J <= 0;                                     
											else              J <= J+1;                             
											end if;                          
							when 1 =>   ds_ena <= '0';                                   
											if (J=200) then   STATE_RD_BIT_0 <= 2;                       
																	J <= 0;                                     
											else            	J <= J+1;                                    
											end if;                                               
							when 2=>    ds_ena <= '0';                            
											ds_in   <=  DS18B20;                                  
											if (J=50) then      STATE_RD_BIT_0 <= 3;              
																	J <= 0;                                      
											else                J <= J+1;                
											end if;                                                                  
							when 3=>    ds_ena<= '0';                                      
											if (J=2750) then  J <= 0;                                      
																	STATE_RD_BIT_0 <= 0;                                               
																	STATE <= GET_TEMPERATURE;                                     
											else              J <= J+1;                                   
											end if;                           
							when others =>  STATE_RD_BIT_0<=0;                       
						end case;                                        
				when GET_TEMPERATURE=>                       
						case RD_PTR is                          
							when 0      =>  STATE  <= READ_BIT;     
													RD_PTR <= RD_PTR+1;                                                                           
							when 1 to 12=>  STATE <= READ_BIT;                                          
													TEMP(RD_PTR-1)<= ds_in;                                           
													RD_PTR  <=  RD_PTR+1;                                                    
							when 13     =>  RD_PTR  <= 0;                                       
													STATE   <= WAIT4MS;                      
						end case;                 
				when WAIT4MS    =>     
						if (J>=200000) then  STATE <= RESET;               
													J   <= 0;  
						else      
													J   <= J+1;        
													STATE <= WAIT4MS;        
						end if;                  
				when others     =>      STATE   <=  RESET;               
		end case;           
  end if;
  end process;    
  DS_TEMPERATURE <= TEMP;
  end Behavioral; 
 