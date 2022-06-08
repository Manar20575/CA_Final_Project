library verilog;
use verilog.vl_types.all;
entity twodigit is
    port(
        num             : inout  vl_logic;
        first_digit     : out    vl_logic_vector(3 downto 0);
        second_digit    : out    vl_logic_vector(3 downto 0)
    );
end twodigit;
