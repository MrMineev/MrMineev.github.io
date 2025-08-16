if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-6";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

pair A = (3.08058,3.67671);
pair B = (5.,0.);
pair C = (0.,0.);
pair D = (2.12117,0.);
pair Ep = (-2.39032,4.43053);
pair Fp = (-3.39881,3.62311);
pair E = (4.15142,1.62546);
pair F = (2.12117,2.53164);
pair G = (4.45694,2.90241);
pair X = (1.09354,-1.27692);
pair H = (3.47596,1.30515);
pair Y = (3.90645,-1.27692);

import graph;
size(10.65627cm);
pen zzttqq = rgb(0.6,0.2,0.);
pen xfqqff = rgb(0.49803,0.,1.);
pen lightgreen = rgb(247, 255, 247);
pen lightpurple = rgb(245, 234, 252);
pen lightblue = rgb(234, 237, 255);
pen lightred = rgb(255, 234, 242);
pen lightpink = rgb(255, 234, 255);

draw(A--B--C--cycle, linewidth(0.6) + zzttqq);

filldraw(circle((2.5,1.03425), 2.70549), lightgreen, linewidth(0.6) + green);
filldraw(circle((3.32374,2.49851), 1.20302), lightpurple, linewidth(0.6) + xfqqff);
draw(circle((2.5,1.03425), 2.70549), linewidth(0.6) + green);

draw(A--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--A, linewidth(0.6) + zzttqq);
draw(D--F, linewidth(0.6));
draw(D--E, linewidth(0.6));
draw(X--G, linewidth(0.6));
draw(A--X, linewidth(0.6));
draw(A--Y, linewidth(0.6));
draw(X--Y, linewidth(0.6));

dot("$A$", A, dir(90));
dot("$B$", B, dir(287));
dot("$C$", C, dir(217));
dot("$D$", D, dir(270));
dot("$E$", E, dir(-10));
dot("$F$", F, dir(186));
dot("$G$", G, dir(54));
dot("$X$", X, dir(234));
dot("$P$", H, dir(60));
dot("$Y$", Y, dir(290));
