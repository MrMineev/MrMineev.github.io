import graph;
size(10cm);

pen ink=gray(0.08),mid=gray(0.43),faint=gray(0.70);
pair P=(2,4),Q=(3,0),V1=(1,0),V2=(2,0);
pair R1=(-12/113,180/113),R2=(6/5,18/5);
pair S=(42/17,-36/17);

filldraw(circle((3,1),sqrt(10)),
         gray(0.97),ink+linewidth(0.9));
draw(circle((2,15/8),17/8),mid+linewidth(0.65));
draw(circle((5/2,2),sqrt(17)/2),
     faint+dashed+linewidth(0.65));
draw((-0.4,0)--(6.4,0),mid+linewidth(0.7));
draw(S--R1,ink+linewidth(1.05));
draw(S--R2,ink+linewidth(1.05));

dot("$P$",P,NE);
dot("$Q$",Q,SE);
dot("$S$",S,dir(270));
dot("$V_1$",V1,dir(230));
dot("$V_2$",V2,dir(305));
dot("$R_1$",R1,W);
dot("$R_2$",R2,dir(170));
