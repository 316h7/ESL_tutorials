-- File: record_play.vhd
-- Generated by MyHDL 0.11
-- Date: Thu Nov 26 23:43:13 2020


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

use work.pck_myhdl_011.all;

entity record_play is
    port (
        clk_i: in std_logic;
        button_a: in std_logic;
        button_b: in std_logic;
        leds_o: out unsigned(4 downto 0)
    );
end entity record_play;


architecture MyHDL of record_play is



signal reset: std_logic;
signal do_sample: std_logic;
signal addr: unsigned(10 downto 0);
signal data_i: unsigned(0 downto 0);
signal data_o: unsigned(0 downto 0);
signal state: unsigned(2 downto 0);
signal end_addr: unsigned(10 downto 0);
signal wr: std_logic;
signal chunk_insts_2_cntr: unsigned(16 downto 0);
signal chunk_insts_3_cntr: unsigned(0 downto 0);
type t_array_chunk_insts_0_mem is array(0 to 2048-1) of unsigned(0 downto 0);
signal chunk_insts_0_mem: t_array_chunk_insts_0_mem;

begin




RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_0: process (clk_i) is
begin
    if rising_edge(clk_i) then
        if bool(wr) then
            chunk_insts_0_mem(to_integer(addr)) <= data_i;
        end if;
        data_o <= chunk_insts_0_mem(to_integer(addr));
    end if;
end process RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_0;

RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_1: process (clk_i) is
begin
    if rising_edge(clk_i) then
        wr <= '0';
        if bool(reset) then
            state <= to_unsigned(0, 3);
        elsif bool(do_sample) then
            if (state = 0) then
                leds_o <= to_unsigned(21, 5);
                if (button_a = '1') then
                    state <= to_unsigned(1, 3);
                end if;
            elsif (state = 1) then
                leds_o <= to_unsigned(26, 5);
                if (button_a = '0') then
                    addr <= to_unsigned(0, 11);
                    data_i <= to_unsigned(button_b, 1);
                    wr <= '1';
                    state <= to_unsigned(2, 3);
                end if;
            elsif (state = 2) then
                addr <= (addr + 1);
                data_i <= to_unsigned(button_b, 1);
                wr <= '1';
                leds_o <= resize(unsigned'(1 & button_b & button_b & button_b & button_b), 5);
                if (button_a = '1') then
                    end_addr <= (addr + 1);
                    state <= to_unsigned(3, 3);
                end if;
            elsif (state = 3) then
                leds_o <= to_unsigned(16, 5);
                if (button_a = '0') then
                    addr <= to_unsigned(0, 11);
                    state <= to_unsigned(4, 3);
                end if;
            elsif (state = 4) then
                leds_o <= resize(unsigned'(1 & data_o(0) & data_o(0) & data_o(0) & data_o(0)), 5);
                addr <= (addr + 1);
                if (addr = end_addr) then
                    addr <= to_unsigned(0, 11);
                end if;
                if (button_a = '1') then
                    state <= to_unsigned(1, 3);
                end if;
            end if;
        end if;
    end if;
end process RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_1;

RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_2_LOC_INSTS_CHUNK_INSTS_0: process (clk_i) is
begin
    if rising_edge(clk_i) then
        chunk_insts_2_cntr <= (chunk_insts_2_cntr + 1);
        do_sample <= '0';
        if (chunk_insts_2_cntr = 119999) then
            do_sample <= '1';
            chunk_insts_2_cntr <= to_unsigned(0, 17);
        end if;
    end if;
end process RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_2_LOC_INSTS_CHUNK_INSTS_0;

RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_3_LOC_INSTS_CHUNK_INSTS_0: process (clk_i) is
begin
    if rising_edge(clk_i) then
        if (chunk_insts_3_cntr < 1) then
            chunk_insts_3_cntr <= (chunk_insts_3_cntr + 1);
            reset <= '1';
        else
            reset <= '0';
        end if;
    end if;
end process RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_3_LOC_INSTS_CHUNK_INSTS_0;

end architecture MyHDL;