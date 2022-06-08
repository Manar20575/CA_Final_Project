library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        up              : in     vl_logic;
        down            : in     vl_logic;
        pcount          : out    vl_logic_vector(2 downto 0);
        empty           : out    vl_logic;
        full            : out    vl_logic
    );
end counter;
