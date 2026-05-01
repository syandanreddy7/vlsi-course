module half _adder_bh(sum, carry, a , b);
// reg - keyword is used for variables that 
// are assigned values in procedural blocks
// (like always or initial blocks). They hold the values in the 
// output till a new value comes in the output block.
output reg sum,carry;
input a,b;
always @(a,b) // sensitivity list - 
              // whenever there is a change in a or b,
              // the block will execute
begin 
    sum = a^b;
    carry = a&b;
end 

endmodule

// usually the if reg is not used the data types are wire data types. 
