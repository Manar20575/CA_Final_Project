library verilog;
use verilog.vl_types.all;
entity flags is
    port(
        pcount          : in     vl_logic_vector(3 downto 0);
        empty           : out    vl_logic;
        full            : out    vl_logic
    );
end flags;
