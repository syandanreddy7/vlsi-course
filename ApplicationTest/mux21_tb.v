module mux21_tb;
    reg d0, d1, s;    // Inputs are 'reg' in testbenches
    wire y;           // Outputs are 'wire'

    // Instantiate the design (Unit Under Test)
    mux21 uut ( .d0(d0), .d1(d1), .s(s), .y(y) );

    initial begin
        // Mandatory for Surfer to see the waves
        $dumpfile("mux_waves.vcd");
        $dumpvars(0, mux21_tb);

        // Stimulus: Try all combinations
        d0=1; d1=0; s=0; #10; // Should output d0 (1)
        d0=1; d1=0; s=1; #10; // Should output d1 (0)
        d0=0; d1=1; s=0; #10; // Should output d0 (0)
        d0=0; d1=1; s=1; #10; // Should output d1 (1)
        
        $display("Simulation complete.");
        $finish;
    end
endmodule