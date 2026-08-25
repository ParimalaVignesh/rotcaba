-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ecg_denoiser_conv_layer01234_fused_denoiser_w_L2_b_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 17; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 64
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


architecture rtl of ecg_denoiser_conv_layer01234_fused_denoiser_w_L2_b_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "10011110011011001", 1 => "11010001111000111", 2 => "10111010001101010", 3 => "10101001010110111", 
    4 => "10111101000011101", 5 => "10100010000100111", 6 => "10010101011100101", 7 => "11010000111001100", 
    8 => "10010011101010010", 9 => "11001111101101110", 10 => "10011100001000010", 11 => "10110011001010011", 
    12 => "10011011110101110", 13 => "10111110101111000", 14 => "10101100001011110", 15 => "11011000111110111", 
    16 => "11000110111101100", 17 => "10111011110001100", 18 => "10111000110101000", 19 => "11011000110100000", 
    20 => "11001000011100010", 21 => "11010010111011111", 22 => "10110101100011001", 23 => "10010101001111010", 
    24 => "11000100000011100", 25 => "10101100100000110", 26 => "10010100010001110", 27 => "11010110011101011", 
    28 => "10100010111100011", 29 => "10111010100000110", 30 => "10010010011001000", 31 => "10111100100110001", 
    32 => "10011111110011101", 33 => "11000010110110101", 34 => "10110011101110111", 35 => "10101111010111010", 
    36 => "11010000001001100", 37 => "10100000100010010", 38 => "11001100110101110", 39 => "11001010111011011", 
    40 => "11000100100010111", 41 => "11010001001001010", 42 => "10100100001001111", 43 => "11001010001010101", 
    44 => "11010111011101100", 45 => "11010101111001000", 46 => "10110001000100011", 47 => "10111000010100110", 
    48 => "11000010111101000", 49 => "10110111100010110", 50 => "11010011010111100", 51 => "11010000100101101", 
    52 => "11010100000001111", 53 => "11010101110000110", 54 => "11010010001101010", 55 => "11000010111011001", 
    56 => "10111100001111010", 57 => "11000011000000100", 58 => "11010110011011011", 59 => "11010100010110011", 
    60 => "11000101011011010", 61 => "10100011100101100", 62 => "11010001110111100", 63 => "11001001000100110");



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

