module halfAdder (sum, carry,a,b);
    output sum, carry; // Outputs are 'wire' by default
    input a, b;
    
    //note sum and carry are concurrent in nature 
    //all assign statements are concurrent in nature
           // Inputs are 'wire' by default
    assign sum = a^b;
    assign carry = a&b;

endmodule