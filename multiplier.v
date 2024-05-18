module multiplier (
    input [6:0] a,b,
    output[9:0] out
);

wire e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,eco1,ec1,es1,hc1,hs1,eco2,ec2,es2,fc1,fs1,pc1,ps1,pc2,ps2,pc3,ps3,fc2,fs2,eco3,ec3,es3,eco4,ec4,es4,eco5,ec5,es5,fc3,fs3,fc4,fc5,fc6,fc7,fc8,fc9,fc10;

espocito3_2 E1(a[2]&b[2],b[3]&a[1],b[4]&a[0],e1,e2);
espocito3_2 E2(a[5]&b[0],b[1]&a[4],b[2]&a[3],e3,e4);
espocito3_2 E3(b[3]&a[2],b[4]&a[1],b[5]&a[0],e5,e6);
espocito4_2 E4(a[6]&b[0],b[1]&a[5],b[2]&a[4],b[3]&a[3],e7,e8);
espocito3_2 E5(b[4]&a[2],b[5]&a[1],b[6]&a[0],e9,e10);
exact_comp Ex1(b[1]&a[6],b[2]&a[5],b[3]&a[4],b[4]&a[3],0,eco1,ec1,es1);
half_adder H1(b[5]&a[2],b[6]&a[1],hc1,hs1);
exact_comp Ex2(b[2]&a[6],b[3]&a[5],b[4]&a[4],b[5]&a[3],eco1,eco2,ec2,es2);
full_adder F1(b[3]&a[6],b[4]&a[5],eco2,fc1,fs1);
proposed P1(a[4]&b[0],b[1]&a[3],e1,e2,pc1,out[0]);
proposed P2(e3,e4,e5,e6,pc2,ps2);
proposed P3(e7,e8,e9,e10,pc3,ps3);
full_adder F2(es1,hs1,e9&e10,fc2,fs2);
exact_comp Ex3(ec1,hc1,es2,b[6]&a[2],0,eco3,ec3,es3);
exact_comp Ex4(ec2,fs1,b[5]&a[4],b[6]&a[3],eco3,eco4,ec4,es4);
exact_comp Ex5(fc1,b[4]&a[6],b[5]&a[5],b[6]&a[4],eco4,eco5,ec5,es5);
full_adder F3(b[5]&a[6],b[6]&a[5],eco5,fc3,fs3);
full_adder F4(pc1,ps2,0,fc4,out[1]);
full_adder F5(pc2,ps3,fc4,fc5,out[2]);
full_adder F6(pc3,fs2,fc5,fc6,out[3]);
full_adder F7(fc2,es3,fc6,fc7,out[4]);
full_adder F8(ec3,es4,fc7,fc8,out[5]);
full_adder F9(ec4,es5,fc8,fc9,out[6]);
full_adder F10(ec5,fs3,fc9,fc10,out[7]);
full_adder F11(fc3,b[6]&a[6],fc10,out[9],out[8]);


endmodule