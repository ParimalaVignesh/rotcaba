-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ecg_denoiser_conv_layer01234_fused_denoiser_w_L3_b_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 17; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 32
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);
 
          address1        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1             : in std_logic; 
          q1              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of ecg_denoiser_conv_layer01234_fused_denoiser_w_L3_b_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "11011010101111000", 1 => "11000001010011110", 2 => "11010011000111100", 3 => "11000010111101011", 
    4 => "10101111110110100", 5 => "11011000010110000", 6 => "11010001001101011", 7 => "10101001110100000", 
    8 => "10110000000010011", 9 => "11001110101100111", 10 => "10110111101111000", 11 => "11011001100111011", 
    12 => "10111100111100110", 13 => "11001101100100010", 14 => "11000101001011101", 15 => "10111001110100100", 
    16 => "11001101011111110", 17 => "11000101101011100", 18 => "10110111100000001", 19 => "11010010100001100", 
    20 => "10111110111001100", 21 => "11010001011000110", 22 => "11001010101101100", 23 => "10110011111011111", 
    24 => "11010011111011110", 25 => "10111001101101111", 26 => "10111110011110011", 27 => "11010101100011010", 
    28 => "11010011110111100", 29 => "11000010100010000", 30 => "11010010100111010", 31 => "10101101111010110");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;
 
        if (ce1 = '1') then  
            q1 <= mem0(CONV_INTEGER(address1_tmp)); 
        end if;

end if;
end process;

end rtl;

