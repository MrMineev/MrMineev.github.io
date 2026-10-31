import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,4),B=(0,0),C=(6,0),O=(3,1);
pair K=(2,-2),D=(8/3,0),X=(8/3,10/3);
pair Y=(8/3,16/3),Z=(4,4);

filldraw(circle((3,1),sqrt(10)),
         rgb(247,255,247),green+linewidth(0.7));
filldraw(circle((3,13/3),sqrt(10)/3),
         rgb(234,237,255)+opacity(0.52),
         blue+linewidth(0.8));
draw(circle((13/3,5/3),5*sqrt(2)/3),
     rose+dashed+linewidth(0.65));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(D--Y,side+linewidth(0.8));
draw(K--Z,rose+linewidth(1.05));
draw(O--Z,green+dashed+linewidth(0.7));
draw(A--Z,side+dashed+linewidth(0.7));

dot("$A$",A,dir(150));
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$O$",O,dir(150));
dot("$K$",K,SW);
dot("$D$",D,S);
dot("$X$",X,dir(190));
dot("$Y$",Y,N);
dot("$Z$",Z,NE);
