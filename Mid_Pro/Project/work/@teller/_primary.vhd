library verilog;
use verilog.vl_types.all;
entity Teller is
    port(
        teller          : in     vl_logic_vector(2 downto 0);
        tcount          : out    vl_logic_vector(1 downto 0)
    );
end Teller;
