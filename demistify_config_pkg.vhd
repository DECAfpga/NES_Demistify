-- DeMiSTifyConfig_pkg.vhd
-- Copyright 2021 by Alastair M. Robinson

library ieee;
use ieee.std_logic_1164.all;

package demistify_config_pkg is
constant demistify_romspace : integer := 14; -- 16k address space to accommodate 8k + 4K of ROM
constant demistify_romsize1 : integer := 13; -- 8k for the first chunk
constant demistify_romsize2 : integer := 12; -- 4k for the second chunk, mirrored across the last 4k
end package;
