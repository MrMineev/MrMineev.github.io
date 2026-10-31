import graph;
size(11cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair V=(4,5.5),I=(6.5,3),J=(1.5,3);
pair D=(4.3,3.8),F=(2.5,5);
pair U0=(649/106,229/53),U2=(1447/298,97/149);
pair S0=(129/26,59/13),S2=(43/12,3);

filldraw(circle((4,3),2.5),rgb(247,255,247),
         green+linewidth(0.7));
draw(V--I,blue+linewidth(0.8));
draw(D--J,side+dashed+linewidth(0.7));
draw(F--U0,blue+linewidth(0.8));
draw(I--J,rose+linewidth(0.8));
draw(D--V,side+dashed+linewidth(0.7));
draw(F--U2,rose+linewidth(0.8));
draw((2.8,2.13)--(5.28,4.90),
     green+linewidth(1.1));

dot("$V$",V,N);
dot("$I$",I,E);
dot("$J$",J,W);
dot("$D$",D,dir(130));
dot("$F$",F,NW);
dot("$U_0$",U0,NE);
dot("$U_2$",U2,SE);
dot("$S_0$",S0,dir(300),blue);
dot("$S_2$",S2,dir(80),rose);
label("$L$",(5.28,4.90),NE,green);
