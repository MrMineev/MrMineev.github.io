import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(0,3),B=(0,0),C=(5,0),D=(4,6);
pair P=(10/7,15/7),W=(3,7/3);
pair E1=(7/4,0),F1=(13/5,99/20);
pair Q1=(33/14,99/28),R1=(115/56,99/56);
pair E2=(13/4,0),F2=(7/5,81/20);
pair Q2=(27/14,81/28),R2=(145/56,81/56);

filldraw(circle((106/49,3127/1176),sqrt(1114945)/1176),
         rgb(234,237,255),blue+linewidth(0.7));
filldraw(circle((109/49,2533/1176),13*sqrt(5185)/1176),
         rgb(255,234,242)+opacity(0.48),rose+linewidth(0.7));
draw(A--B--C--D--cycle,side+linewidth(0.8));
draw(A--C,side+dashed+linewidth(0.7));
draw(B--D,side+dashed+linewidth(0.7));
draw(E1--F1,blue+linewidth(0.8));
draw(E2--F2,rose+linewidth(0.8));

dot("$A$",A,NW);
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$D$",D,N);
dot("$P$",P,dir(205));
dot("$W$",W,dir(20),green);
dot("$E_1$",E1,S,blue);
dot("$F_1$",F1,dir(145),blue);
dot("$Q_1$",Q1,dir(20),blue);
dot("$R_1$",R1,dir(250),blue);
dot("$E_2$",E2,S,rose);
dot("$F_2$",F2,dir(185),rose);
dot("$Q_2$",Q2,dir(160),rose);
dot("$R_2$",R2,dir(330),rose);
