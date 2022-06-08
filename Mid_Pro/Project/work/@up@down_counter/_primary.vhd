library verilog;
use verilog.vl_types.all;
entity UpDown_counter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        updown          : in     vl_logic;
        pcount          : out    vl_logic_vector(3 downto 0);
        alarm           : out    vl_logic
    );
end UpDown_counter;
