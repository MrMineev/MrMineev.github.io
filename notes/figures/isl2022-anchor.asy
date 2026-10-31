import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,4),B=(0,0),C=(6,0),O=(3,1);
pair D=(3,0),X=(3,3),Y=(3,6),Z=(24/5,18/5);
pair K=(2,-2);

filldraw(circle((3,1),sqrt(10)),
         rgb(247,255,247),green+linewidth(0.7));
filldraw(circle((7/2,9/2),sqrt(10)/2),
         rgb(234,237,255)+opacity(0.48),
         blue+linewidth(0.8));
draw(circle((9/2,3/2),3*sqrt(2)/2),
     rose+dashed+linewidth(0.65));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(D--Y,side+linewidth(0.8));
draw(K--Z,rose+linewidth(0.9));
draw(A--O,blue+dashed+linewidth(0.7));

dot("$A$",A,dir(145));
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$O$",O,dir(165));
dot("$D$",D,S);
dot("$X$",X,dir(175));
dot("$Y$",Y,N);
dot("$Z$",Z,dir(15));
dot("$K$",K,SW);
