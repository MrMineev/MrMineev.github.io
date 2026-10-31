import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,4),B=(0,0),C=(6,0),O=(3,1);
pair K=(2,-2),T=(10/3,0),D=(8/3,0);
pair W=(8/3,2),Z=(4,4);

filldraw(circle((3,1),sqrt(10)),
         rgb(247,255,247),green+linewidth(0.8));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(A--T,blue+linewidth(0.85));
draw(D--W,rose+linewidth(0.85));
draw(K--Z,green+linewidth(0.85));
draw((3,-2.45)--(3,4.55),
     side+dashed+linewidth(0.6));
draw(A--Z,side+dashed+linewidth(0.75));
draw(T--D,rose+linewidth(1));

dot("$A$",A,NW);
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$O$",O,dir(160));
dot("$K$",K,SW);
dot("$T$",T,dir(310));
dot("$D$",D,dir(220));
dot("$W$",W,dir(160));
dot("$Z_0$",Z,NE);
