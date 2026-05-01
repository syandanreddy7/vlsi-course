module full_adder_st(sum, c_out, a, b , c_in)

output sum, c_out; // Outputs are 'wire' by default
input a,b,c_in;

wire N1, N2, N3, N4;

// now here we will use the exsisting half adder 
//to build the full adder.
// we will use the half adder in data flow style.

half_adder_df HA1(.sum(N1), .carry(N2), .a(a), .b(b));
half_adder_df HA2(.sum(sum), .carry(N3), .a(c_in), .b(N1));


or or1(c_out, N2, N3);

endmodule