//compiler directive - 
//specifies the time unit and time precision for the simulation
`timescale 1ns/100ps

module full_adder_bh_tb;

reg 

full_adder_bh FA1(sum, c_out, a, b, c_in);


// initial block - 
// executes only once at the beginning of the simulation
// cannot be synthesized
initial

begin
    // $monitor - will monitor any of the signal list we give in
    // like a print statement but it will print whenever there is a 
    //change in any of the signal in the list
    $monitor("time = %d \t a = %b \t b = %b \t c_in = %b \t sum = %b \t c_out = %b", $time, a, b, c_in, sum, c_out);   
    
    // at time zero all our our values have the below values
    a = 0; b = 0; c_in = 0;



end


endmodule