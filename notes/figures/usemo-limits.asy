import graph;
size(10cm);

pen ink=gray(0.08),mid=gray(0.44),faint=gray(0.72);
pair A=(2,4),B=(6,0),C=(0,0),M=(3,0);
pair K=(4,-2),PC=(5,-5),PB=(22/5,-16/5);
pair R=(24/5,-18/5);

draw(circle((3,1),sqrt(10)),
     faint+dashed+linewidth(0.60));
draw(arc((0,-5),5,-4,94),
     ink+linewidth(1.00));
draw(arc((6,-2),2,87,239),
     mid+linewidth(0.92));
draw(C--B,ink+linewidth(0.85));
draw(A--PC,mid+dashed+linewidth(0.65));
draw(M--R,ink+linewidth(0.95));

dot("$A$",A,NW);
dot("$B$",B,NE);
dot("$C$",C,NW);
dot("$M$",M,dir(90));
dot("$K$",K,dir(15));
dot("$P_C$",PC,dir(290));
dot("$P_B$",PB,dir(150));
dot("$R_K$",R,dir(330));
