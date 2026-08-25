-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ecg_denoiser_conv_layer01234_fused_denoiser_w_L0_b_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 16; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 64
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of ecg_denoiser_conv_layer01234_fused_denoiser_w_L0_b_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1101010100110010", 1 => "1110011101011010", 2 => "1101010110110001", 3 => "1110011111011010", 
    4 => "1101010001101111", 5 => "1110001111000010", 6 => "1101100110100111", 7 => "1110011100001100", 
    8 => "1110001110010111", 9 => "1100111001001000", 10 => "1110001001111111", 11 => "1101100101000100", 
    12 => "1100100001111000", 13 => "1101111100100100", 14 => "1101110010111110", 15 => "1101011011101110", 
    16 => "1010011001000101", 17 => "1101001100010110", 18 => "1101011100011101", 19 => "1110001100001111", 
    20 => "1100011110010100", 21 => "1101110110100100", 22 => "1101001011110011", 23 => "1101110000110110", 
    24 => "1100101010010111", 25 => "1101101001001010", 26 => "1110010010011001", 27 => "1100111111101010", 
    28 => "1011101001110111", 29 => "1100111000110110", 30 => "1101011100011101", 31 => "1100100100000000", 
    32 => "1100101100100011", 33 => "1101010110100001", 34 => "1101100011101001", 35 => "1101010011011000", 
    36 => "1100111001100011", 37 => "1101011111100011", 38 => "1101010011011100", 39 => "1101001101000000", 
    40 => "1100001011110101", 41 => "1110000011000010", 42 => "1101001010000001", 43 => "1100111001000110", 
    44 => "1100100000101101", 45 => "1110001000101110", 46 => "1100010000010110", 47 => "1101011111010100", 
    48 => "1101010111101110", 49 => "1101110000111110", 50 => "1101111011101110", 51 => "1110000100000011", 
    52 => "1100111010011110", 53 => "1101010000101101", 54 => "1101011110100000", 55 => "1101011101011001", 
    56 => "1110000000110000", 57 => "1100100010101100", 58 => "1011101110111000", 59 => "1101011010001001", 
    60 => "1100111001001000", 61 => "1101000111000100", 62 => "1100111011111101", 63 => "1110001110100001");



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

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

