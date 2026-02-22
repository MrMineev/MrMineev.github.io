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

/*
Converted from GeoGebra by User:Azjps using Evan's magic cleaner
https://github.com/vEnhance/dotfiles/blob/main/py-scripts/export-ggb-clean-asy.py
*/
pair C = (-0.19322,0.);
pair A = (3.73820,3.56260);
pair B = (5.,0.);
pair I = (3.16640,1.29578);
pair M = (2.40338,0.);
pair D = (3.16640,0.);
pair E = (1.65689,1.67654);
pair F = (4.67592,0.91501);
pair K = (1.78158,-1.65957);
pair X = (4.99237,2.18824);
pair P = (2.35012,2.30474);
pair Q = (4.55449,1.25786);
pair L = (0.88432,-1.28393);
pair R = (1.64036,0.);
pair G = (3.45230,1.78130);

import graph;
size(10cm);

draw(A--B--C--cycle, linewidth(0.6));
draw((3.16640,0.12390)--(3.04250,0.12390)--(3.04250,0.)--D--cycle, linewidth(0.6));
draw((3.19671,1.41592)--(3.07657,1.44623)--(3.04626,1.32608)--I--cycle, linewidth(0.6));
draw(circle((2.40338,1.08508), 2.81421), linewidth(0.6));
draw(A--B, linewidth(0.6));
draw(B--C, linewidth(0.6));
draw(C--A, linewidth(0.6));
draw(E--F, linewidth(0.6));
draw(circle((3.32552,1.92658), 1.68726), linewidth(0.6));
draw(I--D, linewidth(0.6));
draw(A--I, linewidth(0.6));
draw(K--A, linewidth(0.6));
draw(K--X, linewidth(0.6) + linetype("4 4"));
draw(P--D, linewidth(0.6));
draw(D--Q, linewidth(0.6));
draw(L--X, linewidth(0.6));
draw(A--L, linewidth(0.6));
draw(D--A, linewidth(0.6));
draw(M--G, linewidth(0.6)); /* locus construction */

draw(Q--P, linewidth(0.6));

dot("$C$", C, dir(221));
dot("$A$", A, dir(85));
dot("$B$", B, dir(295));
dot("$I$", I, dir(222));
dot("$M$", M, dir(-60));
dot("$D$", D, dir(265));
dot("$E$", E, dir(187));
dot("$F$", F, dir(0));
dot("$K$", K, dir(238));
dot("$X$", X, dir(62));
dot("$P$", P, dir(160));
dot("$Q$", Q, dir(60));
dot("$L$", L, dir(230));
dot("$R$", R, dir(140));
dot("$G$", G, dir(36));
