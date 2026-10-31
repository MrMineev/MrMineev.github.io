import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,4),B=(6,0),C=(0,0),H=(2,2),M=(3,0),Ap=(4,-2);
pair D=(3.72076,2.27924),E=(0.91170,1.82339);
pair X=(1.82339,3.64679),Q=(1.2,3.6);

filldraw(circle((3,1),sqrt(10)),rgb(247,255,247),
         green+linewidth(0.8));
filldraw(circle((2.24025,2.51948),1.499873),
         rgb(255,234,242)+opacity(0.50),rose+linewidth(0.8));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(D--E,side+linewidth(0.8));
draw(A--Ap,side+dashed+linewidth(0.8));
draw(H--Ap,green+linewidth(0.9));
draw(A--Q,rose+linewidth(1.1));
draw(B--X,blue+linewidth(0.8));
draw(M--E,blue+linewidth(0.8));

dot("$A$",A,dir(55));
dot("$B$",B,E);
dot("$C$",C,W);
dot("$D$",D,dir(20));
dot("$E$",E,dir(200));
dot("$X$",X,dir(190));
dot("$H$",H,dir(35));
dot("$M$",M,dir(205));
dot("$A'$",Ap,SE);
dot("$Q$",Q,dir(145),rose);
