if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

pair A = (3.46564,4.17696);
pair B = (5.,0.);
pair C = (0.,0.);
pair I = (2.98881,1.40379);
pair E = (4.30652,1.88784);
pair F = (1.90846,2.30017);
pair G = (4.26084,3.74489);
pair D = (2.98881,0.);
pair S = (2.5,-1.43909);
pair M = (2.5,0.);
pair W = (2.5,4.34300);
pair X = (4.13797,2.34668);
pair Y = (1.59633,1.92398);

import graph;
size(8cm);

pen zzttqq = rgb(0.6,0.2,0.);
pen xfqqff = rgb(0.49803,0.,1.);
pen dcrutc = rgb(0.86274,0.07843,0.23529);

pen lightgreen = rgb(247, 255, 247);
pen lightpurple = rgb(245, 234, 252);
pen lightblue = rgb(234, 237, 255);
pen lightred = rgb(255, 234, 242);
pen lightpink = rgb(255, 234, 255);


draw(A--B--C--cycle, linewidth(0.6) + zzttqq);

filldraw(circle((2.5,1.45195), 2.89105), lightgreen, linewidth(0.6) + green);
filldraw(circle((2.74440,2.87340), 1.48978), lightred, linewidth(0.6) + dcrutc);
filldraw(circle((3.22723,2.79038), 1.40693), lightpurple, linewidth(0.6) + xfqqff);
draw(circle((2.5,1.45195), 2.89105), linewidth(0.6) + green);
draw(circle((2.74440,2.87340), 1.48978), linewidth(0.6) + dcrutc);

draw(A--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--A, linewidth(0.6) + zzttqq);
draw(circle(I, 1.40379), linewidth(0.6) + blue);
draw(S--G, linewidth(0.6));
draw(D--F, linewidth(0.6));
draw(D--E, linewidth(0.6));
draw(S--W, linewidth(0.6));
draw(M--X, linewidth(0.6));
draw(M--Y, linewidth(0.6));


dot("$A$", A, dir(88));
dot("$B$", B, dir(287));
dot("$C$", C, dir(217));
dot("$I$", I, dir(249));
dot("$E$", E, dir(316));
dot("$F$", F, dir(182));
dot("$G$", G, dir(65));
dot("$D$", D, dir(276));
dot("$S$", S, dir(254));
dot("$M$", M, dir(215));
dot("$W$", W, dir(150));
dot("$X$", X, dir(327));
dot("$Y$", Y, dir(192));
