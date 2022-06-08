library verilog;
use verilog.vl_types.all;
entity Unit is
    port(
        clk             : in     vl_logic;
        updown          : in     vl_logic;
        reset           : in     vl_logic;
        push            : in     vl_logic;
        teller          : in     vl_logic_vector(2 downto 0);
        full            : out    vl_logic;
        empty           : out    vl_logic;
        alarm           : out    vl_logic;
        display1        : out    vl_logic_vector(6 downto 0);
        display2        : out    vl_logic_vector(6 downto 0);
        display3        : out    vl_logic_vector(6 downto 0)
    );
end Unit;
