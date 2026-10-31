import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(3,5),B=(6,0),C=(0,0),M=(3,0),W=(3,1.8);
pair D1=(4.2,0),E1=(429/85,27/17),F1=(189/85,63/17);
pair D2=(1.8,0),E2=(321/85,63/17),F2=(81/85,27/17);

filldraw(circle((4.2,3.4),2),rgb(234,237,255),blue+linewidth(0.7));
filldraw(circle((1.8,3.4),2),rgb(255,234,242)+opacity(0.45),
         rose+linewidth(0.7));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(A--M,green+dashed+linewidth(0.9));
draw(D1--E1,blue+linewidth(0.7));
draw(D1--F1,blue+linewidth(0.7));
draw(D2--E2,rose+linewidth(0.7));
draw(D2--F2,rose+linewidth(0.7));

dot("$A$",A,N);
dot("$B$",B,E);
dot("$C$",C,W);
dot("$M$",M,S);
dot("$W$",W,S,green);
dot("$D_1$",D1,S,blue);
dot("$D_2$",D2,S,rose);
dot("$E_1$",E1,E,blue);
dot("$F_1$",F1,E,blue);
dot("$E_2$",E2,E,rose);
dot("$F_2$",F2,W,rose);
label("$(AE_1F_1)$",(6.15,3.5),E,blue);
label("$(AE_2F_2)$",(-0.15,3.5),W,rose);
