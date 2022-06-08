library verilog;
use verilog.vl_types.all;
entity Taller is
    port(
        taller1         : in     vl_logic;
        taller2         : in     vl_logic;
        taller3         : in     vl_logic;
        sum             : out    vl_logic_vector(1 downto 0)
    );
end Taller;
