module proposed (
    input a,b,c,d,
    output carry,sum
);

wire w1,w2;

nor (w1,c,d);
xor (w2,a,b);
nor (sum,w1,w2);
or (carry,a,b);
    
endmodule