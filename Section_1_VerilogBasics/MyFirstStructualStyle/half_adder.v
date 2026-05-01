//structual style is only used to put block together and connect them.
// this is an example of structural style of half adder. 
// we will use it only for the purpose of learning how to connect blocks together.

module half_adder_st(sum, carry, a, b);

output sum, carry; // Outputs are 'wire' by default
input a, b;

// xor - is a primitive gate so we create an instance 
// of it and connect the inputs and outputs.
xor xor1(sum, a, b);

// and - is a primitive gate so we create an instance
// of it and connect the inputs and outputs.
and and1(carry, a, b);




endmodule
