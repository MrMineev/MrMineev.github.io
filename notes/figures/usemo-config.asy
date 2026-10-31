import graph;
size(10cm);

pen ink=gray(0.08),mid=gray(0.45),faint=gray(0.72);
pair A=(2,4),B=(6,0),C=(0,0),M=(3,0);
pair K=(2,-2),P=(2,1),Q=(12/17,54/17);
pair X=(4,2),Y=(2/3,4/3),R=(6/5,-18/5);

filldraw(circle((3,1),sqrt(10)),
         gray(0.97),ink+linewidth(0.85));
draw(circle((20/9,20/9),2*sqrt(65)/9),
     mid+linewidth(0.70));
draw(arc((-3,-1/2),sqrt(109)/2,-40,50),
     ink+linewidth(1.05));
draw(A--B--C--cycle,mid+linewidth(0.65));
draw(C--X,faint+linewidth(0.55));
draw(B--Y,faint+linewidth(0.55));
draw(A--K,mid+dashed+linewidth(0.70));
draw(M--R,mid+linewidth(0.70));

dot("$A$",A,N);
dot("$B$",B,SE);
dot("$C$",C,SW);
dot("$M$",M,dir(290));
dot("$K$",K,dir(15));
dot("$P$",P,dir(25));
dot("$Q$",Q,NW);
dot("$X$",X,NE);
dot("$Y$",Y,dir(190));
dot("$R_K$",R,SW);
