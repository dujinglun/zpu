-----------------------------------------------------
-- SPARTAN-3E STARTER KIT BOARD
-- top
-- contains buffers (iobuf, bufg, iobufds etc.)
-----------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


entity top is
    port (
        -- ==== Analog-to-Digital Converter (ADC) ====
        -- some connections shared with SPI Flash, DAC, ADC, and AMP
        AD_CONV         : out   std_logic;

        -- ==== Programmable Gain Amplifier (AMP) ====
        -- some connections shared with SPI Flash, DAC, ADC, and AMP
        AMP_CS          : out   std_logic; -- active low chip select
        AMP_DOUT        : in    std_logic;
        AMP_SHDN        : out   std_logic; -- active high shutdown, reset

        -- ==== Pushbuttons (BTN) ====
        BTN_EAST        : in    std_logic;
        BTN_NORTH       : in    std_logic;
        BTN_SOUTH       : in    std_logic;
        BTN_WEST        : in    std_logic;

        -- ==== Clock inputs (CLK) ====
        CLK_50MHZ       : in    std_logic;
                                
        CLK_AUX         : in    std_logic;
        CLK_SMA         : in    std_logic;

        -- ==== Digital-to-Analog Converter (DAC) ====
        -- some connections shared with SPI Flash, DAC, ADC, and AMP
        DAC_CLR         : out   std_logic; -- async, active low reset input
        DAC_CS          : out   std_logic; -- active low chip select, conv start with rising edge

        -- ==== 1-Wire Secure EEPROM (DS)
        DS_WIRE         : inout std_logic;

        -- ==== Ethernet PHY (E) ====
        E_COL           : in    std_logic; -- MII collision detect
        E_CRS           : in    std_logic; -- carrier sense
        E_MDC           : out   std_logic; -- management clock
        E_MDIO          : inout std_logic; -- management data IO
        E_RX_CLK        : in    std_logic; -- receive clock 25MHz@100BaseTx or 2.5MHz@10Base-T
        E_RX_DV         : in    std_logic; -- receive data valid
        E_RXD           : in    std_logic_vector(3 downto 0);
        E_RX_ER         : in    std_logic;
        E_TX_CLK        : in    std_logic; -- transmit clock 25MHz@100BaseTx or 2.5MHz@10Base-T
        E_TX_EN         : out   std_logic; -- transmit enable
        E_TXD           : out   std_logic_vector(3 downto 0);
        E_TX_ER         : out   std_logic;

        -- ==== FPGA Configuration Mode, INIT_B Pins (FPGA) ====
        FPGA_M0         : inout std_logic;
        FPGA_M1         : inout std_logic;
        FPGA_M2         : inout std_logic;
        FPGA_INIT_B     : inout std_logic;
        FPGA_RDWR_B     : in    std_logic;
        FPGA_HSWAP      : in    std_logic;

        -- ==== FX2 Connector (FX2) ====
        FX2_CLKIN       : inout std_logic;
        FX2_CLKIO       : inout std_logic;
        FX2_CLKOUT      : inout std_logic;

        FX2_IO          : inout std_logic_vector(40 downto 1);

        --FX2_IO          : inout std_ulogic_vector(4 downto 1); -- shared with J1
        --FX2_IO          : inout std_ulogic_vector(8 downto 5); -- shared with J2
        --FX2_IO          : inout std_ulogic_vector(12 downto 9); -- shared with J4

        -- The discrete LEDs are shared with the following 8 FX2 connections
        --FX2_IO          : inout std_ulogic_vector(20 downto 13);

        --FX2_IO            : inout std_ulogic_vector(34 downto 21);
        --FX2_IO            : in    std_ulogic_vector(38 downto 35);
        --FX2_IO            : inout std_ulogic_vector(39 downto 39);
        --FX2_IO            : in    std_ulogic_vector(40 downto 40);

        -- ==== 6-pin header J1 ====
        -- These are shared connections with the FX2 connector
        --J1              : inout std_logic_vector(3 downto 0);

        -- ==== 6-pin header J2 ====
        -- These are shared connections with the FX2 connector
        --J2              : inout std_logic_vector(3 downto 0);

        -- ==== 6-pin header J4 ====
        -- These are shared connections with the FX2 connector
        --J4              : inout std_logic_vector(3 downto 0);

        -- ==== Character LCD (LCD) ====
        LCD_E           : out   std_logic;
        LCD_RS          : out   std_logic;
        LCD_RW          : out   std_logic;

        -- LCD data connections are shared with StrataFlash connections SF_D<11:8>
        --SF_D          : inout std_ulogic_vector(11 downto 8);

        -- ==== Discrete LEDs (LED) ====
        -- These are shared connections with the FX2 connector
        --LED             : out   std_logic_vector(7 downto 0);

        -- ==== PS/2 Mouse/Keyboard Port (PS2) ====
        PS2_CLK         : inout std_logic;
        PS2_DATA        : inout std_logic;

        -- ==== Rotary Pushbutton Switch (ROT) ====
        ROT_A           : in    std_logic;
        ROT_B           : in    std_logic;
        ROT_CENTER      : in    std_logic;

        -- ==== RS-232 Serial Ports (RS232) ====
        RS232_DCE_RXD   : in    std_logic;
        RS232_DCE_TXD   : out   std_logic;
        RS232_DTE_RXD   : in    std_logic;
        RS232_DTE_TXD   : out   std_logic;

        -- ==== DDR SDRAM (SD) ==== (I/O Bank 3, VCCO=2.5V)
        SD_A            : out   std_logic_vector(12 downto 0); -- address inputs
        SD_DQ           : inout std_logic_vector(15 downto 0); -- data IO
        SD_BA           : out   std_logic_vector(1 downto 0);  -- bank address inputs
        SD_RAS          : out   std_logic;                     -- command output
        SD_CAS          : out   std_logic;                     -- command output
        SD_WE           : out   std_logic;                     -- command output 
        SD_UDM          : out   std_logic;                     -- data mask
        SD_LDM          : out   std_logic;                     -- data mask
        SD_UDQS         : inout std_logic;                     -- data strobe
        SD_LDQS         : inout std_logic;                     -- data strobe
        SD_CS           : out   std_logic;                     -- active low chip select
        SD_CKE          : out   std_logic;                     -- active high clock enable
        SD_CK_N         : out   std_logic;                     -- differential clock
        SD_CK_P         : out   std_logic;                     -- differential clock

        -- Path to allow connection to top DCM connection
        SD_CK_FB        : in    std_logic;

        -- ==== Intel StrataFlash Parallel NOR Flash (SF) ====
        SF_A            : out   std_logic_vector(23 downto 0); -- sf_a<24> = fx_io32 :-(
        SF_BYTE         : out   std_logic;
        SF_CE0          : out   std_logic;
        SF_D            : inout std_logic_vector(15 downto 1);
        SF_OE           : out   std_logic;
        SF_STS          : in    std_logic;
        SF_WE           : out   std_logic;

        -- ==== STMicro SPI serial Flash (SPI) ====
        -- some connections shared with SPI Flash, DAC, ADC, and AMP
        SPI_MOSI        : out   std_logic; -- master out slave in
        SPI_MISO        : in    std_logic; -- master in  slave out
        SPI_SCK         : out   std_logic; -- clock
        SPI_SS_B        : out   std_logic; -- active low slave select

        SPI_ALT_CS_JP11 : out   std_logic;

        -- ==== Slide Switches (SW) ====
        SW              : in    std_logic_vector(3 downto 0);

        -- ==== VGA Port (VGA) ====
        VGA_BLUE        : out   std_logic;
        VGA_GREEN       : out   std_logic;
        VGA_HSYNC       : out   std_logic;
        VGA_RED         : out   std_logic;
        VGA_VSYNC       : out   std_logic;

        -- ==== Xilinx CPLD (XC) ====
        XC_CMD          : out   std_logic_vector(1 downto 0);
        XC_CPLD_EN      : out   std_logic;
        XC_D            : inout std_logic_vector(2 downto 0);
        XC_TRIG         : in    std_logic;
        XC_GCK0         : inout std_logic;
        GCLK10          : inout std_logic
    );
end entity top;


library work;
use work.types.all;
use work.fpga_components.box;

library global;
use global.global_signals.all;

library gaisler;
use gaisler.misc.all; -- types
use gaisler.uart.all; -- types
use gaisler.net.all;  -- types


architecture rtl of top is

    constant spi_ss_b_disable    : std_ulogic := '1'; -- 1 = disable SPI serial flash
    constant dac_cs_disable      : std_ulogic := '1'; -- 1 = disable DAC 
    constant amp_cs_disable      : std_ulogic := '1'; -- 1 = disable programmable pre-amplifier
    constant ad_conv_disable     : std_ulogic := '0'; -- 0 = disable ADC
    constant sf_ce0_disable      : std_ulogic := '1';
    constant fpga_init_b_disable : std_ulogic := '1'; -- 1 = disable pflatform flash PROM

    -- connect ldc to fpga
    constant sf_ce0_lcd_to_fpga  : std_ulogic := '1';
    constant lcd_rw_lcd_to_fpga  : std_ulogic := '1';


    signal top_fpga_clk        : fpga_clk_in_t;
    signal top_fpga_rotary_sw  : fpga_rotary_sw_in_t;
    
    signal top_fpga_uarti      : uart_in_type;
    signal box_i0_uarto        : uart_out_type;
    
    signal top_fpga_gpioi      : gpio_in_type;
    signal box_i0_gpioo        : gpio_out_type;
            
    signal top_fpga_ethi       : eth_in_type;
    signal box_io_etho         : eth_out_type;

    signal box_i0_vgao         : apbvga_out_type;

    signal box_i0_ddr_cke      : std_logic_vector(1 downto 0);
    signal box_i0_ddr_csb      : std_logic_vector(1 downto 0);
    signal box_i0_ddr_dm       : std_logic_vector(1 downto 0);
    signal box_i0_ddr_dqs      : std_logic_vector(1 downto 0);
    signal box_i0_ddr_ad       : std_logic_vector(13 downto 0);
    signal box_i0_ddr_clk      : std_logic_vector(2 downto 0);
    signal box_i0_ddr_clkb     : std_logic_vector(2 downto 0);


    signal debug_trace         : debug_signals_t;
    signal debug_trace_box     : debug_signals_t;
    signal debug_trace_dcm     : debug_signals_t;
    signal la_pod_a2           : std_ulogic_vector(7 downto 0);
    signal la_pod_a3           : std_ulogic_vector(7 downto 0);
    signal la_pod_c2           : std_ulogic_vector(7 downto 0);

    function simulation_active return std_ulogic is
        variable result : std_ulogic;
    begin
        result := '0';
        -- pragma translate_off
        result := '1';
        -- pragma translate_on
        return result;
    end function simulation_active;

begin
    
    -- drive unused outputs
    AD_CONV              <= ad_conv_disable;
    AMP_CS               <= amp_cs_disable;
    AMP_SHDN             <= '1'; 
                         
    DAC_CLR              <= '0';
    DAC_CS               <= dac_cs_disable;
                         
    DS_WIRE              <= 'Z';

    -- set M[2:0]=000 to enable platfrom flash PROM (XCF04S)
    FPGA_M0              <= 'Z';
    FPGA_M1              <= 'Z';
    FPGA_M2              <= 'Z'; 
    FPGA_INIT_B          <= fpga_init_b_disable;
                        
    FX2_CLKIN            <= 'Z';
    FX2_CLKIO            <= 'Z';
    FX2_CLKOUT           <= 'Z'; -- could also be used as input/ differential input

    FX2_IO(40 downto 33) <= (others => 'Z');
    
    GCLK10               <= 'Z';

    PS2_CLK              <= 'Z';
    PS2_DATA             <= 'Z';
                    
    RS232_DTE_TXD        <= '0';
                         
    SF_A                 <= (others => '0');
    SF_D(15 downto 12)   <= (others => 'Z');
    SF_D( 7 downto  1)   <= (others => 'Z');
    SF_BYTE              <= '0';
    SF_CE0               <= sf_ce0_lcd_to_fpga;
    SF_OE                <= '1';
    SF_WE                <= '0';
                         
    SPI_MOSI             <= '0';
    SPI_SCK              <= '0';
    SPI_SS_B             <= spi_ss_b_disable;
    SPI_ALT_CS_JP11      <= spi_ss_b_disable;
                         
    XC_CMD               <= "00";
    XC_CPLD_EN           <= '0';
    XC_D(2 downto 0)     <= (others => 'Z');
    XC_GCK0              <= 'Z';

    
    -- clock connections
    top_fpga_clk.clk50        <= CLK_50MHZ;
    top_fpga_clk.aux          <= CLK_AUX;
    top_fpga_clk.sma          <= CLK_SMA;

    -- input devices
    top_fpga_rotary_sw.a      <= ROT_A; 
    top_fpga_rotary_sw.b      <= ROT_B;
    top_fpga_rotary_sw.center <= ROT_CENTER;

    -- connetions for uart
    top_fpga_uarti.rxd        <= RS232_DCE_RXD; 
    top_fpga_uarti.ctsn       <= '0';
    top_fpga_uarti.extclk     <= '0';
    RS232_DCE_TXD             <= box_i0_uarto.txd;
    
    
    -- pads for gpio (buttons i)
    top_fpga_gpioi.sig_in            <= (others => '0');
    top_fpga_gpioi.sig_en            <= (others => '0');
    top_fpga_gpioi.din( 3 downto  0) <= SW;
    top_fpga_gpioi.din( 7 downto  4) <= BTN_WEST & BTN_NORTH & BTN_SOUTH & BTN_EAST;
    top_fpga_gpioi.din(11 downto  8) <= ROT_CENTER & '0' & ROT_B & ROT_A;
    top_fpga_gpioi.din(30 downto 12) <= (others => '0');
    top_fpga_gpioi.din(31)           <= simulation_active;


    -- connections for ethernet
    top_fpga_ethi.gtx_clk     <= '0';
    top_fpga_ethi.rmii_clk    <= '0';
    top_fpga_ethi.tx_clk      <= E_TX_CLK;
    top_fpga_ethi.rx_clk      <= E_RX_CLK;
    top_fpga_ethi.rxd         <= "0000" & E_RXD(3 downto 0);
    top_fpga_ethi.rx_dv       <= E_RX_DV;
    top_fpga_ethi.rx_er       <= E_RX_ER;
    top_fpga_ethi.rx_col      <= E_COL;
    top_fpga_ethi.rx_crs      <= E_CRS;
    top_fpga_ethi.mdio_i      <= E_MDIO;
    top_fpga_ethi.mdint       <= '0';
    top_fpga_ethi.phyrstaddr  <= (others => '0');
    top_fpga_ethi.edcladdr    <= (others => '0');
    E_TXD(3 downto 0)         <= box_io_etho.txd(3 downto 0);
    E_TX_EN                   <= box_io_etho.tx_en;
    E_TX_ER                   <= box_io_etho.tx_er;
    E_MDC                     <= box_io_etho.mdc;
    E_MDIO                    <= box_io_etho.mdio_o when box_io_etho.mdio_oe = '0' else 'Z';


    box_i0: box
        port map (
            fpga_clk        => top_fpga_clk,        -- : in    fpga_clk_in_t;
            fpga_rotary_sw  => top_fpga_rotary_sw,  -- : in    fpga_rotary_sw_in_t;

            uarti           => top_fpga_uarti,      -- : in    uart_in_type
            uarto           => box_i0_uarto,        -- : out   uart_out_type

            gpioi           => top_fpga_gpioi,      -- : in    gpio_in_type;
            gpioo           => box_i0_gpioo,        -- : out   gpio_out_type;
            
            ethi            => top_fpga_ethi,       -- : in    eth_in_type;
            etho            => box_io_etho,         -- : out   eth_out_type;

            vgao            => box_i0_vgao,         -- : out   apbvga_out_type;

            ddr_clk         => box_i0_ddr_clk,      -- : out   std_logic_vector(2 downto 0);
            ddr_clkb        => box_i0_ddr_clkb,     -- : out   std_logic_vector(2 downto 0);
            ddr_clk_fb      => SD_CK_FB,            -- : in    std_logic;
            ddr_cke         => box_i0_ddr_cke,      -- : out   std_logic_vector(1 downto 0);
            ddr_csb         => box_i0_ddr_csb,      -- : out   std_logic_vector(1 downto 0);
            ddr_web         => SD_WE,               -- : out   std_ulogic;                     -- ddr write enable
            ddr_rasb        => SD_RAS,              -- : out   std_ulogic;                     -- ddr ras
            ddr_casb        => SD_CAS,              -- : out   std_ulogic;                     -- ddr cas
            ddr_dm          => box_i0_ddr_dm,       -- : out   std_logic_vector (1 downto 0);  -- ddr dm
            ddr_dqs         => box_i0_ddr_dqs,      -- : inout std_logic_vector (1 downto 0);  -- ddr dqs
            ddr_ad          => box_i0_ddr_ad,       -- : out   std_logic_vector (13 downto 0); -- ddr address
            ddr_ba          => SD_BA,               -- : out   std_logic_vector (1 downto 0);  -- ddr bank address
            ddr_dq          => SD_DQ,               -- : inout std_logic_vector (63 downto 0); -- ddr data
                                         
            debug_trace     => debug_trace,
            debug_trace_box => debug_trace_box,
            debug_trace_dcm => debug_trace_dcm,
            break           => global_break         -- : out   cpu break command
        );
    SD_CK_P           <= box_i0_ddr_clk(0);
    SD_CK_N           <= box_i0_ddr_clkb(0);
                     
    SD_LDQS           <= box_i0_ddr_dqs(0);
    SD_UDQS           <= box_i0_ddr_dqs(1);
    SD_CKE            <= box_i0_ddr_cke(0);
    SD_CS             <= box_i0_ddr_csb(0);
    SD_LDM            <= box_i0_ddr_dm(0);
    SD_UDM            <= box_i0_ddr_dm(1);
    SD_A              <= box_i0_ddr_ad( 12 downto 0);
                     
    -- vga output    
    VGA_RED           <= box_i0_vgao.video_out_r(7);
    VGA_GREEN         <= box_i0_vgao.video_out_g(7);
    VGA_BLUE          <= box_i0_vgao.video_out_b(7);
    VGA_HSYNC         <= box_i0_vgao.hsync;
    VGA_VSYNC         <= box_i0_vgao.vsync;
    
    -- LCD output
    SF_D(11 downto 8) <= box_i0_gpioo.dout(11 downto 8);
    LCD_E             <= box_i0_gpioo.dout(13);
    LCD_RS            <= box_i0_gpioo.dout(14);
    LCD_RW            <= box_i0_gpioo.dout(15);
                    

    -- pads for gpio (led out)
    FX2_IO(20 downto 13)  <= std_logic_vector( box_i0_gpioo.dout( 7 downto 0) );

    -- connections to logic analyzer pods
    connect_pods: process( debug_trace_box)
    begin
        -- set defaults
        la_pod_a2 <= (others => '0');
        la_pod_a3 <= (others => '0');
        la_pod_c2 <= (others => '0');
        

    -- clk phase shift (bla_fpga_clkps.tla)
--  la_pod_a2(1)          <= debug_trace_box.psen;
--  la_pod_a2(2)          <= debug_trace_box.psincdec;
--  la_pod_a2(3)          <= debug_trace_box.psdone;
--  la_pod_a2(4)          <= debug_trace_box.psovfl;
--  la_pod_a2(5)          <= debug_trace_dcm.psready; 
--  la_pod_a2(6)          <= debug_trace_dcm.pserror;

--  la_pod_a3             <= std_ulogic_vector( debug_trace_dcm.timeout_cnt);
--  

    -- ahb grant problem (bla_fpga_grethernet.tla)
--  la_pod_a2(3 downto 0) <= std_ulogic_vector( box_io_etho.txd(3 downto 0));
--  la_pod_a2(4)          <= box_io_etho.tx_en;
--  la_pod_a2(5)          <= box_io_etho.tx_er;
--  la_pod_a2(6)          <= top_fpga_ethi.tx_clk;
--  la_pod_a2(7)          <= top_fpga_ethi.rx_col;
--                        <= top_fpga_ethi.rx_crs;

--  la_pod_a3(0)          <= debug_trace_box.hgrant_0;
--  la_pod_a3(1)          <= debug_trace_box.hgrant_1;
--  la_pod_a3(2)          <= debug_trace.r_ctrl_txen;
--  la_pod_a3(3)          <= debug_trace.tmsti_ready;
--  la_pod_a3(4)          <= debug_trace.tmsti_grant;
--  la_pod_a3(5)          <= debug_trace.r_txcnt(0); 
--  la_pod_a3(6)          <= debug_trace.r_txcnt(1);
--  la_pod_a3(7)          <= top_fpga_clk.clk50;
--  
--  la_pod_c2(3 downto 0) <= debug_trace.txdstate;
--  la_pod_c2(4)          <= debug_trace_box.ahbmo0_bureq;
--  la_pod_c2(5)          <= debug_trace_box.ahbmo1_bureq;

    end process connect_pods;

    -- map la_pod over fx2 pins
    FX2_IO( 8 downto  1) <= std_logic_vector( la_pod_a2);
    FX2_IO(12 downto  9) <= std_logic_vector( la_pod_a3(3 downto 0));
    FX2_IO(24 downto 21) <= std_logic_vector( la_pod_a3(7 downto 4));
    FX2_IO(32 downto 25) <= std_logic_vector( la_pod_c2);
      

end architecture rtl;