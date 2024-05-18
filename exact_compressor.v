module exact_comp (
    input p0,p1,p2,p3,cin,
    output cout,carry,sum
);

wire w;

full_adder f1(p0,p1,p2,cout,w);
full_adder f2(w,p3,cin,carry,sum);
    
endmodule