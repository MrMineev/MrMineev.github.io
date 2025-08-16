if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

pair A = (3.51226,3.71957);
pair C = (0.,0.);
pair B = (5.,0.);
pair D = (4.04411,0.);
pair E = (4.71557,0.71109);
pair F = (2.84080,3.00847);
pair G = (5.24751,0.95571);
pair X = (2.07424,-1.56443);
pair M = (2.5,0.);
pair P = (3.77819,1.85978);
pair J = (6.54761,0.);

import graph;
size(9.56793cm);
pen zzttqq = rgb(0.6,0.2,0.);
pen xfqqff = rgb(0.49803,0.,1.);
pen ffqqff = rgb(1.,0.,1.);
pen dcrutc = rgb(0.86274,0.07843,0.23529);
pen lightgreen = rgb(247, 255, 247);
pen lightpurple = rgb(245, 234, 252);
pen lightblue = rgb(234, 237, 255);
pen lightred = rgb(255, 234, 242);
pen lightpink = rgb(255, 234, 255);

draw(A--B--C--cycle, linewidth(0.6) + zzttqq);

filldraw(circle((2.5,1.15737), 2.75490), lightgreen, linewidth(0.6) + green);
filldraw(circle((4.52380,-1.39091), 2.45569), lightpink, linewidth(0.6) + ffqqff);
filldraw(circle((4.30997,2.29375), 1.63380), lightpurple, linewidth(0.6) + xfqqff);
draw(circle((2.5,1.15737), 2.75490), linewidth(0.6) + green);
draw(circle((4.52380,-1.39091), 2.45569), linewidth(0.6) + ffqqff);

draw(A--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--A, linewidth(0.6) + zzttqq);
draw(D--F, linewidth(0.6));
draw(D--E, linewidth(0.6));
draw(X--G, linewidth(0.6));
draw(A--X, linewidth(0.6));
draw(A--D, linewidth(0.6));
draw(E--F, linewidth(0.6) + red);
draw(M--P, linewidth(0.6));
draw(X--B, linewidth(0.6));
draw(B--J, linewidth(0.6));
draw(A--J, linewidth(0.6) + dcrutc);

dot("$A$", A, dir(67));
dot("$C$", C, dir(215));
dot("$B$", B, dir(283));
dot("$D$", D, dir(280));
dot("$E$", E, dir(86));
dot("$F$", F, dir(192));
dot("$G$", G, dir(123));
dot("$X$", X, dir(230));
dot("$M$", M, dir(149));
dot("$P$", P, dir(14));
dot("$T$", J, dir(63));
