library verilog;
use verilog.vl_types.all;
entity unit is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        up              : in     vl_logic;
        down            : in     vl_logic;
        teller          : in     vl_logic_vector(2 downto 0);
        full            : out    vl_logic;
        empty           : out    vl_logic;
        pcount          : out    vl_logic_vector(3 downto 0);
        display1        : out    vl_logic_vector(6 downto 0);
        display2        : out    vl_logic_vector(6 downto 0);
        display3        : out    vl_logic_vector(6 downto 0)
    );
end unit;
