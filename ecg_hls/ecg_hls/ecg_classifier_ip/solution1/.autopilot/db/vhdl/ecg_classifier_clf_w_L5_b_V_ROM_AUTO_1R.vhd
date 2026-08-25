-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ecg_classifier_clf_w_L5_b_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 3; 
             AddressWidth     : integer := 7; 
             AddressRange    : integer := 128
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of ecg_classifier_clf_w_L5_b_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "000", 1 => "000", 2 => "000", 3 => "110", 
    4 => "110", 5 => "101", 6 => "111", 7 => "111", 
    8 => "111", 9 => "111", 10 => "111", 11 => "111", 
    12 => "111", 13 => "111", 14 => "111", 15 => "111", 
    16 => "111", 17 => "111", 18 => "000", 19 => "111", 
    20 => "111", 21 => "111", 22 => "111", 23 => "111", 
    24 => "111", 25 => "111", 26 => "111", 27 => "111", 
    28 => "111", 29 => "110", 30 => "000", 31 => "111", 
    32 => "111", 33 => "111", 34 => "111", 35 => "111", 
    36 => "111", 37 => "111", 38 => "111", 39 => "111", 
    40 => "111", 41 => "000", 42 => "111", 43 => "111", 
    44 => "111", 45 => "111", 46 => "111", 47 => "110", 
    48 => "111", 49 => "111", 50 => "111", 51 => "111", 
    52 => "111", 53 => "000", 54 => "111", 55 => "000", 
    56 => "111", 57 => "111", 58 => "111", 59 => "111", 
    60 => "111", 61 => "000", 62 => "111", 63 => "111", 
    64 => "110", 65 => "111", 66 => "111", 67 => "111", 
    68 => "110", 69 => "111", 70 => "110", 71 => "110", 
    72 => "111", 73 => "111", 74 => "000", 75 => "111", 
    76 => "110", 77 => "111", 78 => "000", 79 => "111", 
    80 => "111", 81 => "111", 82 => "110", 83 => "000", 
    84 => "111", 85 => "111", 86 => "111", 87 => "110", 
    88 => "111", 89 => "111", 90 => "111", 91 => "111", 
    92 => "111", 93 => "111", 94 => "111", 95 => "111", 
    96 => "000", 97 => "111", 98 => "111", 99 => "111", 
    100 => "111", 101 => "111", 102 => "111", 103 => "111", 
    104 => "110", 105 => "111", 106 => "111", 107 => "111", 
    108 => "111", 109 => "111", 110 => "111", 111 => "000", 
    112 => "111", 113 => "110", 114 => "111", 115 => "111", 
    116 => "111", 117 => "111", 118 => "111", 119 => "110", 
    120 => "111", 121 => "111", 122 => "111", 123 => "111", 
    124 => "111", 125 => "111", 126 => "000", 127 => "111");



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

