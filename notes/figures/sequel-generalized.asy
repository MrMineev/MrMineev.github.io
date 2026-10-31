import graph;
size(10cm);

pen ink=gray(0.08), mid=gray(0.42), faint=gray(0.72);
pair A=(2,4),B=(6,0),C=(0,0);
pair D1=(1,0),D2=(3,0);
pair E1=(3/7,6/7),F1=(27/7,15/7),G1=(0,2);
pair E2=(9/7,18/7),F2=(33/7,9/7);
pair G2=(24/5,18/5),W=(22/7,4/7),X0=(2,-2);

filldraw(circle((3,1),sqrt(10)),
         gray(0.97),ink+linewidth(0.85));
draw(circle((27/14,29/14),sqrt(730)/14),
     mid+linewidth(0.70));
draw(circle((45/14,5/2),sqrt(730)/14),
     faint+dashed+linewidth(0.72));
draw(A--B--C--cycle,mid+linewidth(0.65));
draw(D1--E1,faint+linewidth(0.55));
draw(D1--F1,faint+linewidth(0.55));
draw(D2--E2,faint+dashed+linewidth(0.55));
draw(D2--F2,faint+dashed+linewidth(0.55));
draw(X0--G1,ink+linewidth(1.15));
draw(X0--G2,ink+linewidth(1.15));

dot("$A$",A,dir(50));
dot("$B$",B,SE);
dot("$C$",C,SW);
dot("$D_1$",D1,dir(245));
dot("$D_2$",D2,dir(300));
dot("$E_1$",E1,dir(0));
dot("$E_2$",E2,dir(145));
dot("$F_1$",F1,dir(55));
dot("$F_2$",F2,dir(345));
dot("$G_1$",G1,W);
dot("$G_2$",G2,NE);
dot("$W$",W,dir(25));
dot("$X_0$",X0,SW);
