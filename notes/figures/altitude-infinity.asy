import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(2,4),B=(6,0),C=(0,0),H=(2,2);
pair M=(3,0),Ap=(4,-2),V=(2,2.5);
pair X=(2.7,5.4),U=(3.1,0.7);

filldraw(circle((3,1),sqrt(10)),rgb(247,255,247),
         green+linewidth(0.7));
// Only the arc containing the named points is needed; omitting the
// far-right arc leaves room for labels and keeps the triangle legible.
draw(arc((5.25,3.25),3.335416016,138,286),
     blue+linewidth(0.9));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(A--Ap,side+dashed+linewidth(0.8));
draw(A--H,side+linewidth(0.8));
draw(H--M--Ap,green+dashed+linewidth(0.8));
draw(B--X,rose+linewidth(1));
draw(V--U,rose+linewidth(1));

dot("$A$",A,NE);
dot("$B$",B,E);
dot("$C$",C,W);
dot("$H$",H,dir(205));
dot("$M$",M,dir(195));
dot("$A'$",Ap,SE);
dot("$V$",V,dir(150));
dot("$X$",X,NW);
dot("$U$",U,dir(20));
