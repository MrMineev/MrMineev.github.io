import graph;
size(10cm);

pen ink=gray(0.08),mid=gray(0.43),faint=gray(0.72);
pair A=(2,4),B=(6,0),C=(0,0),P0=(2,1);
pair X0=(4,-2),Q=(11/4,-5/4),W=(34/41,104/41);
pair D1=(3,0),E1=(1,2),G1=(6/5,18/5),F1=(7/2,5/2);
pair D2=(5,0),E2=(5/7,10/7),G2=(6,2);
pair F2=(79/14,5/14);

filldraw(circle((3,1),sqrt(10)),
         gray(0.97),ink+linewidth(0.8));
draw(circle((13/6,8/3),sqrt(65)/6),
     mid+linewidth(0.7));
draw(circle((47/14,12/7),sqrt(1385)/14),
     faint+dashed+linewidth(0.7));
draw(A--B--C--cycle,mid+linewidth(0.65));
draw(P0--E1,faint+linewidth(0.50));
draw(P0--E2,faint+dashed+linewidth(0.50));
draw(X0--G1,faint+linewidth(0.55));
draw(X0--G2,faint+dashed+linewidth(0.55));
draw(Q--F1,ink+linewidth(1.05));
draw(Q--F2,ink+linewidth(1.05));

dot("$A$",A,NE);
dot("$B$",B,SE);
dot("$C$",C,SW);
dot("$P_0$",P0,dir(200));
dot("$X_0$",X0,SE);
dot("$Q$",Q,SW);
dot("$W$",W,dir(145));
dot("$D_1$",D1,dir(245));
dot("$D_2$",D2,dir(300));
dot("$E_1$",E1,dir(10));
dot("$E_2$",E2,dir(225));
dot("$G_1$",G1,dir(150));
dot("$G_2$",G2,E);
dot("$F_1$",F1,dir(65));
dot("$F_2$",F2,dir(35));
