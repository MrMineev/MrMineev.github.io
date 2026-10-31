import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);

pair A=(3,5),B=(6,0),C=(0,0),D=(4.2,0);
pair E=(429/85,27/17),F=(189/85,63/17);

filldraw(circle((5.1,2.86),2.998266),
         rgb(234,237,255),blue+linewidth(0.7));
filldraw(circle((2.1,2.14),2.998266),
         rgb(255,234,242)+opacity(0.45),rose+linewidth(0.7));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(C--D,blue+linewidth(1));
draw(B--D,rose+linewidth(1));
draw(A--F,blue+linewidth(1));
draw(A--E,rose+linewidth(1));

dot("$A$",A,N);
dot("$B$",B,E);
dot("$C$",C,W);
dot("$D$",D,S);
dot("$E$",E,E,rose);
dot("$F$",F,W,blue);
label("$(ABD)$",(6.65,3.55),E,blue);
label("$(ACD)$",(-0.30,2.8),W,rose);
