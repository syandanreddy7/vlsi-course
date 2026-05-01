module full_adder_df(sum, c_out, a, b, c_in);

input a,b,c_in;
output sum, c_out; // Outputs are 'wire' by default

assign sum = a^b^c_in; // XOR operation for sum
assign c_out = (a&b) | (b&c_in) | (a&c_in); // OR of ANDs for carry out

endmodule