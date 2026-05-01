module full_adder_st2(sum,c_out,a,b,c_in);


input a, b, c_in;
output sum, c_out;

wire N1, N2, N3;

HA_df1 HA1(N1, N2, a,b);
HA_df2 HA2(sum, N3, c_in, N1);

or or1(c_out, N2, N3);

endmodule