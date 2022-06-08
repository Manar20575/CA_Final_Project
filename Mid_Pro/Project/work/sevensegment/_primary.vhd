library verilog;
use verilog.vl_types.all;
entity sevensegment is
    port(
        data            : in     vl_logic_vector(7 downto 0);
        display         : out    vl_logic_vector(6 downto 0)
    );
end sevensegment;
