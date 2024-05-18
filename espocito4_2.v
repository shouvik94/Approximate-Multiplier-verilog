module espocito4_2(
   input a,b,c,d,
   output o1,o2
);

wire w1,w2,w3,w4;

and (w1,a,b);
or (w2,w1,c);
or (o1,w2,d);
and (w3,c,d);
or (w4,w3,a);
or (o2,w4,b);
    
endmodule