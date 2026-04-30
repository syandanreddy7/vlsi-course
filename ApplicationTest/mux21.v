module mux21 (
    input wire d0,    // Data input 0
    input wire d1,    // Data input 1
    input wire s,     // Select signal
    output wire y     // Output
);
    // Logic: if s=0, y=d0; if s=1, y=d1
    assign y = s ? d1 : d0;
endmodule