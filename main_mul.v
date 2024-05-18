module main_mul (
    input [7:0] a,b,
    output[10:0] out
);

wire [6:0]a_o,b_o;
wire [9:0]m_out;
xor(out[10],a[7],b[7]);


assign a_o = (a[7]) ? (~a[6:0] + 1) : a[6:0];
assign b_o = (b[7]) ? (~b[6:0] + 1) : b[6:0];

multiplier M1(a_o,b_o,m_out);

assign out[9:0] = (a[7]^b[7]) ? (~m_out[9:0] + 1) : m_out[9:0];
    
endmodule