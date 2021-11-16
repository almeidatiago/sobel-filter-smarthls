-- ----------------------------------------------------------------------------
-- Smart High-Level Synthesis Tool Version 2021.1.2
-- Copyright (c) 2015-2021 Microchip Technology Inc. All Rights Reserved.
-- For support, please contact: smarthls@microchip.com
-- Date: Tue Nov 16 16:39:41 2021
-- ----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


library work;
use work.legup_types_pkg.all;
entity sobel_filter_top_vhdl is
port (
	             i_clk	:	in	std_logic;
	           i_reset	:	in	std_logic;
	           i_start	:	in	std_logic;
	           o_ready	:	out	std_logic;
	          o_finish	:	out	std_logic;
	        o_in_clken	:	out	std_logic;
	    o_in_read_en_a	:	out	std_logic;
	    o_in_address_a	:	out	std_logic_vector(17 downto 0);
	  i_in_read_data_a	:	in	std_logic_vector(7 downto 0);
	    o_in_read_en_b	:	out	std_logic;
	    o_in_address_b	:	out	std_logic_vector(17 downto 0);
	  i_in_read_data_b	:	in	std_logic_vector(7 downto 0);
	       o_out_clken	:	out	std_logic;
	  o_out_write_en_a	:	out	std_logic;
	o_out_write_data_a	:	out	std_logic_vector(7 downto 0);
	   o_out_read_en_a	:	out	std_logic;
	   o_out_address_a	:	out	std_logic_vector(17 downto 0);
	 i_out_read_data_a	:	in	std_logic_vector(7 downto 0);
	  o_out_write_en_b	:	out	std_logic;
	o_out_write_data_b	:	out	std_logic_vector(7 downto 0);
	   o_out_read_en_b	:	out	std_logic;
	   o_out_address_b	:	out	std_logic_vector(17 downto 0);
	 i_out_read_data_b	:	in	std_logic_vector(7 downto 0)
);
end sobel_filter_top_vhdl;

architecture behavior of sobel_filter_top_vhdl is

component sobel_filter_top
port (
	             clk	:	in	std_logic;
	           reset	:	in	std_logic;
	           start	:	in	std_logic;
	           ready	:	out	std_logic;
	          finish	:	out	std_logic;
	        in_clken	:	out	std_logic;
	    in_read_en_a	:	out	std_logic;
	    in_address_a	:	out	std_logic_vector(17 downto 0);
	  in_read_data_a	:	in	std_logic_vector(7 downto 0);
	    in_read_en_b	:	out	std_logic;
	    in_address_b	:	out	std_logic_vector(17 downto 0);
	  in_read_data_b	:	in	std_logic_vector(7 downto 0);
	       out_clken	:	out	std_logic;
	  out_write_en_a	:	out	std_logic;
	out_write_data_a	:	out	std_logic_vector(7 downto 0);
	   out_read_en_a	:	out	std_logic;
	   out_address_a	:	out	std_logic_vector(17 downto 0);
	 out_read_data_a	:	in	std_logic_vector(7 downto 0);
	  out_write_en_b	:	out	std_logic;
	out_write_data_b	:	out	std_logic_vector(7 downto 0);
	   out_read_en_b	:	out	std_logic;
	   out_address_b	:	out	std_logic_vector(17 downto 0);
	 out_read_data_b	:	in	std_logic_vector(7 downto 0)
);
end component;

begin


sobel_filter_top_inst : sobel_filter_top
port map (
	               clk	=>	i_clk,
	             reset	=>	i_reset,
	             start	=>	i_start,
	             ready	=>	o_ready,
	            finish	=>	o_finish,
	          in_clken	=>	o_in_clken,
	      in_read_en_a	=>	o_in_read_en_a,
	      in_address_a	=>	o_in_address_a,
	    in_read_data_a	=>	i_in_read_data_a,
	      in_read_en_b	=>	o_in_read_en_b,
	      in_address_b	=>	o_in_address_b,
	    in_read_data_b	=>	i_in_read_data_b,
	         out_clken	=>	o_out_clken,
	    out_write_en_a	=>	o_out_write_en_a,
	  out_write_data_a	=>	o_out_write_data_a,
	     out_read_en_a	=>	o_out_read_en_a,
	     out_address_a	=>	o_out_address_a,
	   out_read_data_a	=>	i_out_read_data_a,
	    out_write_en_b	=>	o_out_write_en_b,
	  out_write_data_b	=>	o_out_write_data_b,
	     out_read_en_b	=>	o_out_read_en_b,
	     out_address_b	=>	o_out_address_b,
	   out_read_data_b	=>	i_out_read_data_b
);


end behavior;
