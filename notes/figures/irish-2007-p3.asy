import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair P=(2,4),Q=(3,0),V1=(1,0),V2=(2,0);
pair R1=(-12/113,180/113),R2=(6/5,18/5);
pair S=(42/17,-36/17);

filldraw(circle((3,1),sqrt(10)),
         rgb(247,255,247),green+linewidth(0.7));
filldraw(circle((2,15/8),17/8),
         rgb(234,237,255)+opacity(0.34),
         blue+linewidth(0.8));
filldraw(circle((5/2,2),sqrt(17)/2),
         rgb(255,234,242)+opacity(0.34),
         rose+linewidth(0.8));
draw((-0.4,0)--(6.4,0),side+linewidth(0.7));
draw(S--R1,blue+linewidth(0.9));
draw(S--R2,rose+linewidth(0.9));

dot("$P$",P,NE);
dot("$Q$",Q,SE);
dot("$S$",S,S,green);
dot("$V_1$",V1,dir(230),blue);
dot("$V_2$",V2,dir(305),rose);
dot("$R_1$",R1,W,blue);
dot("$R_2$",R2,dir(170),rose);
label("$\Gamma$",(5.9,3.3),NE,green);
label("$\ell$",(6.3,0),E,side);
