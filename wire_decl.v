`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire a_b_and;
    wire c_d_and;
    wire abcd_or;
    
    assign a_b_and = a & b;
    assign c_d_and = c & d;
    assign abcd_or = a_b_and | c_d_and;
    
    assign out = abcd_or;
    assign out_n = ~abcd_or;

endmodule
