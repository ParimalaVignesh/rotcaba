-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ecg_classifier_clf_w_L1_b_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 6; 
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


architecture rtl of ecg_classifier_clf_w_L1_b_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "101111", 1 => "110110", 2 => "101110", 3 => "110111", 
    4 => "101101", 5 => "101011", 6 => "110011", 7 => "110110", 
    8 => "110110", 9 => "101101", 10 => "110110", 11 => "101100", 
    12 => "110110", 13 => "110011", 14 => "110101", 15 => "101101", 
    16 => "110101", 17 => "110101", 18 => "110101", 19 => "110110", 
    20 => "110000", 21 => "110011", 22 => "110110", 23 => "101100", 
    24 => "110101", 25 => "110011", 26 => "101100", 27 => "110110", 
    28 => "110000", 29 => "110110", 30 => "110010", 31 => "110101", 
    32 => "101100", 33 => "101111", 34 => "110110", 35 => "110101", 
    36 => "101111", 37 => "110110", 38 => "110101", 39 => "101111", 
    40 => "110011", 41 => "110101", 42 => "110100", 43 => "110011", 
    44 => "110010", 45 => "110011", 46 => "110100", 47 => "110101", 
    48 => "110101", 49 => "111001", 50 => "101111", 51 => "110101", 
    52 => "110101", 53 => "101100", 54 => "110101", 55 => "101110", 
    56 => "101100", 57 => "101101", 58 => "110011", 59 => "110011", 
    60 => "110110", 61 => "110100", 62 => "101111", 63 => "110010");



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

