if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

pair A = (3.76162,6.11153);
pair C = (0.,0.);
pair B = (5.,0.);
pair D = (3.97903,0.);
pair E = (4.74713,1.24793);
pair F = (2.99352,4.86360);
pair G = (5.78163,1.05148);
pair X = (2.29751,-0.98085);
pair M = (2.5,0.);
pair P = (3.87033,3.05576);
pair Y = (0.77278,-0.55342);
pair K = (1.02096,0.);

import graph;
size(10cm);
pen zzttqq = rgb(0.6,0.2,0.);
pen xfqqff = rgb(0.49803,0.,1.);
pen ffttww = rgb(1.,0.2,0.4);

pen lightgreen = rgb(247, 255, 247);
pen lightpurple = rgb(245, 234, 252);
pen lightblue = rgb(234, 237, 255);
pen lightred = rgb(255, 234, 242);
pen lightpink = rgb(255, 234, 255);

draw(A--B--C--cycle, linewidth(0.6) + zzttqq);
filldraw(circle((2.5,2.67466), 3.66112), lightgreen, linewidth(0.6) + green);
filldraw(circle((4.61286,-0.94749), 2.31558), lightred, linewidth(0.6) + ffttww);
filldraw(circle((5.80447,3.99382), 2.94243), lightpurple, linewidth(0.6) + xfqqff);

draw(circle((2.5,2.67466), 3.66112), linewidth(0.6) + green);
draw(circle((4.61286,-0.94749), 2.31558), linewidth(0.6) + ffttww);

draw(A--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--A, linewidth(0.6) + zzttqq);
draw(D--F, linewidth(0.6));
draw(D--E, linewidth(0.6));
draw(X--G, linewidth(0.6));
draw(A--X, linewidth(0.6));


draw(A--D, linewidth(0.6));
draw(E--F, linewidth(0.6));
draw(M--P, linewidth(0.6));
draw(Y--G, linewidth(0.6));
draw(A--Y, linewidth(0.6));

dot("$A$", A, dir(90));
dot("$C$", C, dir(214));
dot("$B$", B, dir(284));
dot("$D$", D, dir(270));
dot("$E$", E, dir(78));
dot("$F$", F, dir(197));
dot("$G$", G, dir(281));
dot("$X$", X, dir(230));
dot("$M$", M, dir(120));
dot("$P$", P, dir(24));
dot("$Y$", Y, dir(220));
dot("$K$", K, dir(120));
