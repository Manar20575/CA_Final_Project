library verilog;
use verilog.vl_types.all;
entity seg is
    port(
        data            : in     vl_logic_vector(3 downto 0);
        display         : out    vl_logic_vector(6 downto 0)
    );
end seg;
