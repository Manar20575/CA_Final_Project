library verilog;
use verilog.vl_types.all;
entity waiting_time is
    port(
        pcount          : in     vl_logic_vector(3 downto 0);
        tcount          : in     vl_logic_vector(1 downto 0);
        wtime           : out    vl_logic_vector(4 downto 0)
    );
end waiting_time;
