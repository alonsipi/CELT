----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:57:08 12/15/2020 
-- Design Name: 
-- Module Name:    main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( CLK : in  STD_LOGIC;
           INC : in  STD_LOGIC;
           DEC : in  STD_LOGIC;
           SALIDA : out  STD_LOGIC_VECTOR (7 downto 0));
end main;

architecture a_main of main is

component contador is
	Port (CLK : in STD_LOGIC;
			EN : in STD_LOGIC;
			Q : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component gen_enable is
	Port (CLK : in STD_LOGIC;
			VALOR : in STD_LOGIC_VECTOR (31 downto 0);
			EN: out STD_LOGIC);
end component;

component aut_control is
	Port (CLK : in STD_LOGIC;
			INC : in STD_LOGIC;
			DEC : in STD_LOGIC;
			VALOR : out STD_LOGIC_VECTOR (31 downto 0));
end component;

signal one: STD_LOGIC_VECTOR (31 downto 0);
signal two: STD_LOGIC;

begin

U1 : contador port map (CLK, two, SALIDA);
U2 : gen_enable port map (CLK, one, two);
U3 : aut_control port map (CLK, INC, DEC, one);

end a_main;

