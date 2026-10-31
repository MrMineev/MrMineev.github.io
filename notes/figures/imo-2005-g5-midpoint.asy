import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,4),B=(6,0),C=(0,0),H=(2,2);
pair D=(3.72076,2.27924),E=(0.91170,1.82339);
pair V=(2,1.03899),X=(1.82339,3.64679);

filldraw(circle((2.24025,2.51948),1.499873),
         rgb(255,234,242),rose+linewidth(0.8));
draw(arc((4.5195,2.51948),2.922285,145,304),
     blue+linewidth(0.9));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(A--V,green+dashed+linewidth(0.8));
draw(D--E,side+linewidth(0.9));
draw(D--V,blue+linewidth(0.7));
draw(B--V,blue+linewidth(0.7));
draw(E--V,rose+linewidth(0.7));
draw(X--V,blue+linewidth(0.7));

dot("$A$",A,dir(55));
dot("$B$",B,E);
dot("$C$",C,W);
dot("$D$",D,dir(25));
dot("$E$",E,dir(200));
dot("$H$",H,dir(35));
dot("$V$",V,dir(225));
dot("$X$",X,dir(135));
label("$CE=EX$",(0.25,2.75),W,green);
label("$(ABV)$",(5.8,0.90),SE,blue);
label("$(ADE)$",(1.05,1.20),SW,rose);
