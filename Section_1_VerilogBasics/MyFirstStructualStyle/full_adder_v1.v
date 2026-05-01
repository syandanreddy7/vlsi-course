module  full_adder_st(sum, c_out, a, b, c_in);
    
input a,b,c_in;
output sum,c_out;

wire N1, N2, N3, N4;

xor xor1(N1, a, b);
xor xor2(sum, N1, c_in);

and and1(N2, a, b);
and and2(N3, b, c_in);
and and3(N4, a, c_in);

or or1(c_out, N2, N3, N4);

endmodule