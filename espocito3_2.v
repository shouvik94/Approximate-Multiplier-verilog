module espocito3_2 (
    input p0,p1,p2,
    output o2,o1
);

wire w1;

and (w1,p0,p1);
or (o2,p2,w1);
or (o1,p0,p1);
    
endmodule