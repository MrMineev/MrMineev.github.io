import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,3), D1=(0,1), D2=(3,1), D3=(6,1);
pair Z1=(0,1), Z2=(3.6,-0.2), Z3=(3.6,2.2);

filldraw(circle((2,1),2),rgb(247,255,247),green+linewidth(0.8));
draw((-0.55,1)--(6.7,1),side+linewidth(0.8));
draw(A--D2,blue+dashed+linewidth(0.7));
draw(A--D3,rose+dashed+linewidth(0.7));
draw(A--Z2,blue+linewidth(0.8));
draw(A--Z3,rose+linewidth(0.8));

dot("$A$",A,N);
dot("$D_1=Z_1$",D1,W);
dot("$D_2$",D2,N,blue);
dot("$D_3$",D3,N,rose);
dot("$Z_2$",Z2,SE,blue);
dot("$Z_3$",Z3,E,rose);
label("$L$",(6.5,1),E,side);
label("$\mathrm{inv}_A(L)$",(0.25,2.6),NW,green);
