library verilog;
use verilog.vl_types.all;
entity slowClock is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        slow_clk        : out    vl_logic
    );
end slowClock;
