import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,4),B=(6,0),C=(0,0),D=(3,0),P=(2,-3);
pair EB=(18/7,36/7),E=(9/7,18/7);
pair F=(33/7,9/7),Q=(22/7,4/7);

filldraw(circle((45/14,5/2),sqrt(730)/14),
         rgb(247,255,247),green+linewidth(0.8));
draw(arc((36/7,22/7),sqrt(520)/7,138,289),
     blue+linewidth(0.9));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(C--P,blue+dashed+linewidth(0.8));
draw(B--P,rose+dashed+linewidth(0.8));
draw(B--EB,blue+dashed+linewidth(0.8));
draw(D--E,blue+linewidth(0.9));
draw(D--F,rose+linewidth(0.9));
draw(A--Q,green+linewidth(0.7));
draw(A--C,side+linewidth(0.7));

dot("$A$",A,NW);
dot("$B$",B,SE);
dot("$C$",C,SW);
dot("$D$",D,S);
dot("$P$",P,S);
dot("$E_B$",EB,NE,blue);
dot("$E$",E,W,blue);
dot("$F$",F,E,rose);
dot("$Q$",Q,dir(315),green);
label("$CP\parallel DE$",(0.3,-2.7),W,blue);
label("$BP\parallel DF$",(4.65,-2.5),E,rose);
