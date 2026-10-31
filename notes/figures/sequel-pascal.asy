import graph;
size(10cm);

pen ink=gray(0.08),mid=gray(0.42),faint=gray(0.69);
pair V=(4,5.5),I=(6.5,3),J=(1.5,3);
pair D=(4.3,3.8),F=(2.5,5);
pair U0=(649/106,229/53),U2=(1447/298,97/149);
pair S0=(129/26,59/13),S2=(43/12,3);

filldraw(circle((4,3),2.5),
         gray(0.97),ink+linewidth(0.8));
draw(V--I,mid+linewidth(0.7));
draw(D--J,faint+dashed+linewidth(0.55));
draw(F--U0,mid+linewidth(0.7));
draw(I--J,mid+linewidth(0.7));
draw(D--V,faint+dashed+linewidth(0.55));
draw(F--U2,mid+linewidth(0.7));
draw((2.8,2.13)--(5.28,4.90),
     ink+linewidth(1.25));

dot("$V$",V,N);
dot("$I$",I,E);
dot("$J$",J,W);
dot("$D$",D,dir(130));
dot("$F$",F,NW);
dot("$U_0$",U0,NE);
dot("$U_2$",U2,SE);
dot("$S_0$",S0,dir(80));
dot("$S_2$",S2,dir(80));
