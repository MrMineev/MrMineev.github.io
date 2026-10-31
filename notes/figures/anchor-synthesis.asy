import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,4),B=(6,0),C=(0,0),D=(3,0);
pair EB=(18/7,36/7),FC=(24/7,18/7);
pair E=(9/7,18/7),F=(33/7,9/7);
pair W=(22/7,4/7);

filldraw(circle((45/14,5/2),sqrt(730)/14),
         rgb(247,255,247),green+linewidth(0.8));
draw(circle((9/7,13/7),sqrt(250)/7),
     rose+linewidth(0.8));
draw(arc((36/7,22/7),sqrt(520)/7,138,289),
     blue+linewidth(0.9));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(B--EB,blue+dashed+linewidth(0.7));
draw(C--FC,rose+dashed+linewidth(0.7));
draw(D--E,blue+linewidth(0.8));
draw(D--F,rose+linewidth(0.8));

dot("$A$",A,NW);
dot("$B$",B,SE);
dot("$C$",C,SW);
dot("$D$",D,S);
dot("$E_B$",EB,NE,blue);
dot("$F_C$",FC,NE,rose);
dot("$E$",E,W,blue);
dot("$F$",F,E,rose);
dot("$W$",W,dir(315),green);
label("$(ABE_B)$",(5.8,2.25),E,blue);
label("$(ACF_C)$",(-0.95,2.7),W,rose);
label("$(AEF)$",(3.35,4.55),NE,green);
