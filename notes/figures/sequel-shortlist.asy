import graph;
size(10cm);

pen ink=gray(0.08),mid=gray(0.43),faint=gray(0.70);
pair A=(2,4),B=(6,0),C=(0,0);
pair H=(2,2),M=(3,0),Ap=(4,-2);
pair D=(3.72076,2.27924),E=(0.91170,1.82339);
pair V=(2,1.03899),X=(1.82339,3.64679);
pair Q=(1.2,3.6);

filldraw(circle((3,1),sqrt(10)),
         gray(0.97),ink+linewidth(0.9));
filldraw(circle((2.24025,2.51948),1.499873),
         gray(0.92),mid+linewidth(0.7));
draw(arc((4.5195,2.51948),2.922285,145,304),
     faint+dashed+linewidth(0.6));
draw(A--B--C--cycle,mid+linewidth(0.7));
draw(D--E,mid+linewidth(0.65));
draw(A--V,faint+dashed+linewidth(0.65));
draw(B--X,ink+linewidth(1.05));
draw(M--E,ink+linewidth(1.05));
draw(H--Ap,mid+linewidth(0.75));
draw(Ap--Q,mid+linewidth(0.8));
draw(A--Q,ink+linewidth(1.1));

dot("$A$",A,dir(55));
dot("$B$",B,E);
dot("$C$",C,W);
dot("$D$",D,dir(20));
dot("$E$",E,dir(195));
dot("$V$",V,dir(235));
dot("$X$",X,dir(180));
dot("$H$",H,dir(30));
dot("$M$",M,dir(210));
dot("$A'$",Ap,SE);
dot("$Q$",Q,dir(145));
