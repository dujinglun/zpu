onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_tb/top_i0/simulation_break
add wave -noupdate /top_tb/top_i0/cpu_reset
add wave -noupdate /top_tb/top_i0/sysclk_p
add wave -noupdate /top_tb/top_i0/user_clock
add wave -noupdate /top_tb/top_i0/user_sma_clock_p
add wave -noupdate -expand -group clocks /top_tb/top_i0/sys_clk
add wave -noupdate -expand -group clocks /top_tb/top_i0/clk_100
add wave -noupdate -expand -group clocks /top_tb/top_i0/clk_box
add wave -noupdate -expand -group clocks /top_tb/top_i0/clk_vga
add wave -noupdate -expand -group clocks /top_tb/top_i0/clk_gtx_125
add wave -noupdate -expand -group clocks /top_tb/top_i0/reset
add wave -noupdate -expand -group clocks /top_tb/top_i0/reset_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_clk0_m2c_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_clk0_m2c_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_clk1_m2c_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_clk1_m2c_p
add wave -noupdate -group FMC /top_tb/top_i0/iic_scl_main
add wave -noupdate -group FMC /top_tb/top_i0/iic_sda_main
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la00_cc_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la00_cc_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la01_cc_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la01_cc_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la02_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la02_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la03_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la03_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la04_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la04_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la05_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la05_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la06_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la06_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la07_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la07_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la08_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la08_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la09_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la09_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la10_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la10_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la11_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la11_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la12_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la12_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la13_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la13_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la14_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la14_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la15_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la15_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la16_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la16_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la17_cc_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la17_cc_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la18_cc_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la18_cc_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la19_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la19_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la20_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la20_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la21_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la21_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la22_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la22_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la23_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la23_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la24_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la24_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la25_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la25_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la26_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la26_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la27_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la27_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la28_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la28_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la29_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la29_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la30_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la30_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la31_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la31_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la32_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la32_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la33_n
add wave -noupdate -group FMC /top_tb/top_i0/fmc_la33_p
add wave -noupdate -group FMC /top_tb/top_i0/fmc_prsnt_m2c_l
add wave -noupdate -group FMC /top_tb/top_i0/fmc_pwr_good_flash_rst_b
add wave -noupdate -divider GPIO
add wave -noupdate /top_tb/top_i0/gpio_button
add wave -noupdate /top_tb/top_i0/gpio_header_ls
add wave -noupdate /top_tb/top_i0/gpio_led
add wave -noupdate /top_tb/top_i0/gpio_switch
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {217317 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1048576 ns}