module full_adder (
    input a,b,cin,
    output cout,s
);

wire w1,w2,w3;
half_adder h1(a,b,w2,w1);
half_adder h2(cin,w1,w3,s);
or (cout,w2,w3);

    
endmodule