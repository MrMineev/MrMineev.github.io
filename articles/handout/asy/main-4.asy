if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

pair A = (4.11001,4.40276);
pair C = (-0.00759,-0.01519);
pair B = (5.39307,-0.06971);
pair D = (4.06500,-0.05630);
pair E = (4.96795,1.41218);
pair F = (2.47574,2.64928);
pair Q = (5.70239,2.56419);
pair S = (3.13737,-1.54089);
pair X = (4.05275,-1.26927);
pair T = (8.00644,-0.09609);

import graph;
size(12.92041cm);
pen zzttqq = rgb(0.6,0.2,0.);
pen xfqqff = rgb(0.49803,0.,1.);
pen dcrutc = rgb(0.86274,0.07843,0.23529);

pen lightgreen = rgb(247, 255, 247);
pen lightpurple = rgb(245, 234, 252);
pen lightblue = rgb(234, 237, 255);
pen lightred = rgb(255, 234, 242);
pen lightpink = rgb(255, 234, 255);


draw(A--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--A, linewidth(0.6) + zzttqq);

filldraw(circle((4.75154,2.16652), 2.32643), lightpink, linewidth(0.6));
filldraw(circle((2.05121,2.19378), 3.01964), lightpink, linewidth(0.6));

filldraw(circle((2.70912,1.58059), 3.15073), lightgreen, linewidth(0.6)+green);

filldraw(circle((4.09363,2.77971), 1.62313), lightpurple, linewidth(0.6)+xfqqff);

draw(circle((4.75154,2.16652), 2.32643), linewidth(0.6)+dcrutc);
draw(circle((2.05121,2.19378), 3.01964), linewidth(0.6)+dcrutc);

draw(circle((2.70912,1.58059), 3.15073), linewidth(0.6)+green);


draw(A--B--C--cycle, linewidth(0.6) + zzttqq);

draw(A--D, linewidth(0.6));
draw(D--F, linewidth(0.6));
draw(D--E, linewidth(0.6));
draw(Q--S, linewidth(0.6));
draw(A--S, linewidth(0.6));
draw(A--X, linewidth(0.6));
draw(T--A, linewidth(0.6));
draw(T--S, linewidth(0.6));
draw(B--T, linewidth(0.6));

dot("$A$", A, dir(90));
dot("$C$", C, dir(210));
dot("$B$", B, dir(298));
dot("$D$", D, dir(276));
dot("$E$", E, dir(308));
dot("$F$", F, dir(162));
dot("$Q$", Q, dir(61));
dot("$S$", S, dir(265));
dot("$X$", X, dir(289));
dot("$T$", T, dir(62));
