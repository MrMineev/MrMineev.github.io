import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(3,6),B=(6,0),C=(0,0),M=(3,0),W=(3,1.5);
pair P1=(4.2,0),D1=(132/25,36/25),E1=(42/25,84/25);
pair P2=(1.8,0),D2=(108/25,84/25),E2=(18/25,36/25);

filldraw(circle((4.2,3.75),2.55),rgb(234,237,255),
         blue+linewidth(0.7));
filldraw(circle((1.8,3.75),2.55),
         rgb(255,234,242)+opacity(0.42),rose+linewidth(0.7));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(A--M,green+dashed+linewidth(0.8));
draw(P1--D1,blue+linewidth(0.9));
draw(P1--E1,blue+linewidth(0.9));
draw(P2--D2,rose+linewidth(0.9));
draw(P2--E2,rose+linewidth(0.9));

dot("$A$",A,N);
dot("$B$",B,E);
dot("$C$",C,W);
dot("$P_1$",P1,S,blue);
dot("$P_2$",P2,S,rose);
dot("$D_1$",D1,E,blue);
dot("$D_2$",D2,E,rose);
dot("$E_1$",E1,W,blue);
dot("$E_2$",E2,W,rose);
dot("$W$",W,S,green);
label("$(AD_1E_1)$",(6.75,4.2),E,blue);
label("$(AD_2E_2)$",(-0.75,4.2),W,rose);
