import graph;
size(10cm);

pen ink=gray(0.08),mid=gray(0.45),faint=gray(0.72);
pair A=(0,0),B=(2,0),C=(0,2);
pair X1=(3,0),X2=(4,0);
pair Y1=(0,5/2),Y2=(0,3);
pair Q1=(-3,5),Q2=(-4,6);

draw((-0.4,0)--(4.5,0),mid+linewidth(0.65));
draw((0,-0.35)--(0,3.35),mid+linewidth(0.65));
draw((-4.3,6.3)--(2.25,-0.25),
     ink+linewidth(0.90));
draw(Q1--X1,mid+linewidth(0.80));
draw(Q2--X2,faint+dashed+linewidth(0.85));

dot("$A$",A,SW);
dot("$B^*$",B,N);
dot("$C^*$",C,dir(0));
dot("$X_1^*$",X1,dir(250));
dot("$X_2^*$",X2,dir(315));
dot("$Y_1^*$",Y1,dir(190));
dot("$Y_2^*$",Y2,dir(135));
dot("$Q_1^*$",Q1,dir(30));
dot("$Q_2^*$",Q2,NW);
label("$\Gamma^*$",(1.15,1.05),NW,ink);
