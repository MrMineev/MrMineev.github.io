import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,4),B=(0,0),C=(6,0),O=(3,1);
pair D=(10/3,0),X=(10/3,8/3);
pair Y=(10/3,20/3),Z=(70/13,40/13);
pair S=(4,14/3);

filldraw(circle((3,1),sqrt(10)),
         rgb(247,255,247),green+linewidth(0.7));
filldraw(circle((4,14/3),sqrt(40)/3),
         rgb(255,234,242)+opacity(0.50),
         rose+linewidth(0.8));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(D--Y,side+linewidth(0.7));
draw(A--D,side+dashed+linewidth(0.8));
draw(D--Z,blue+linewidth(1));
draw(S--Z,rose+linewidth(0.9));

dot("$A$",A,NW);
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$O$",O,dir(175));
dot("$D=W$",D,S);
dot("$X$",X,dir(185));
dot("$Y$",Y,N);
dot("$Z$",Z,dir(5));
dot("$S$",S,dir(125));
