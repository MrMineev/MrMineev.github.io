if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

pair A = (4.57545,3.35119);
pair C = (0.,0.);
pair B = (5.,0.);
pair D = (3.18722,0.);
pair E = (4.84607,1.21498);
pair F = (2.91660,2.13620);
pair G = (5.31461,1.88408);
pair X = (1.66517,-1.34798);
pair M = (2.5,0.);
pair S = (3.6907079960646754,0.);
pair P = (1.67328,1.22556);
pair Q = (4.91169,0.69705);
pair H = (2.5,-4.51010);

import graph;
size(12cm);
pen zzttqq = rgb(0.6,0.2,0.);
pen xfqqff = rgb(0.49803,0.,1.);
pen lightgreen = rgb(247, 255, 247);
pen lightpurple = rgb(245, 234, 252);
pen lightblue = rgb(234, 237, 255);

draw(A--B--C--cycle, linewidth(0.6) + zzttqq);

filldraw(circle((2.5,1.38577), 2.85838), lightgreen, linewidth(0.6) + green);
filldraw(circle((3.43896,1.85884), 1.87581), lightblue, linewidth(0.6) + blue);
filldraw(circle((4.13666,2.21036), 1.22230), lightpurple, linewidth(0.6) + xfqqff);

draw(circle((2.5,1.38577), 2.85838), linewidth(0.6) + green);


draw(A--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--A, linewidth(0.6) + zzttqq);
draw(D--F, linewidth(0.6));
draw(D--E, linewidth(0.6));
draw(X--G, linewidth(0.6));
draw(A--X, linewidth(0.6));
draw(C--H, linewidth(0.6));
draw(H--B, linewidth(0.6));
draw(A--H, linewidth(0.6));
draw(circle((3.43896,1.85884), 1.87581), linewidth(0.6) + blue);

dot("$A$", A, dir(68));
dot("$C$", C, dir(213));
dot("$B$", B, dir(283));
dot("$D$", D, dir(270));
dot("$E$", E, dir(-10));
dot("$F$", F, dir(170));
dot("$G$", G, dir(34));
dot("$X$", X, dir(231));
dot("$M$", M, dir(140));
dot("$S$", S, dir(-80));
dot("$P$", P, dir(170));
dot("$Q$", Q, dir(-20));
dot(H);
