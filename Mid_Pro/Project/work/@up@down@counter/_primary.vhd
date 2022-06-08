library verilog;
use verilog.vl_types.all;
entity UpDownCounter is
    port(
        up_down         : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        count           : out    vl_logic_vector(2 downto 0)
    );
end UpDownCounter;
