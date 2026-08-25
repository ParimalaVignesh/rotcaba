-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ecg_classifier_clf_w_L0_b_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 7; 
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


architecture rtl of ecg_classifier_clf_w_L0_b_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1110101", 1 => "1111100", 2 => "1110011", 3 => "1110010", 
    4 => "1110001", 5 => "1101111", 6 => "1101100", 7 => "1110011", 
    8 => "1111011", 9 => "1110011", 10 => "1111001", 11 => "1110111", 
    12 => "1101010", 13 => "1111100", 14 => "1101101", 15 => "1110001", 
    16 => "1110010", 17 => "1110001", 18 => "1110000", 19 => "1110000", 
    20 => "1101110", 21 => "1110101", 22 => "1110010", 23 => "1010110", 
    24 => "1110101", 25 => "1110011", 26 => "1110111", 27 => "1111000", 
    28 => "1110000", 29 => "1110011", 30 => "1110001", 31 => "1110110", 
    32 => "1101100", 33 => "1101110", 34 => "1110010", 35 => "1110010", 
    36 => "1110110", 37 => "1110010", 38 => "1010101", 39 => "1110001", 
    40 => "1110110", 41 => "1110101", 42 => "1110101", 43 => "1110101", 
    44 => "1111001", 45 => "1110100", 46 => "1110011", 47 => "1110100", 
    48 => "1110010", 49 => "1111001", 50 => "1110010", 51 => "1110110", 
    52 => "1111101", 53 => "1110011", 54 => "1110010", 55 => "1101100", 
    56 => "1110011", 57 => "1110101", 58 => "1110100", 59 => "1110100", 
    60 => "1101001", 61 => "1110011", 62 => "1110000", 63 => "1110010");



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

