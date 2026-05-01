module full_adder_bh(sum, c_out, a, b, c_in);

output reg sum, c_out;
input a, b, c_in;

always @(a,b,c_in)

begin
    sum = a^b^c_in;
    c_out = (a&b) | (b&c_in) | (a&c_in);
end

endmodule