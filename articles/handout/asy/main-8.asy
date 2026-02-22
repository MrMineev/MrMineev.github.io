if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-8";
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
pair B = (6.,4.);
pair C = (0.,0.);
pair A = (8.66429,0.00356);
pair D = (8.21025,5.47350);
pair E = (8.43727,2.73853);
pair F = (9.10185,3.71998);
pair G = (12.,8.);
pair K = (4.87454,-2.52293);
pair N = (6.58474,0.00270);
pair P = (7.12457,-3.68749);

import graph;
size(12cm);
draw(A--B--C--cycle, linewidth(0.6));
draw(A--B, linewidth(0.6));
draw(B--C, linewidth(0.6));
draw(C--A, linewidth(0.6));
draw(B--D, linewidth(0.6));
draw(circle((4.33116,2.39769), 4.95054), linewidth(0.6));
draw(A--D, linewidth(0.6));
draw(circle((7.56746,4.04324), 1.56806), linewidth(0.6));
draw(G--K, linewidth(0.6));
draw(D--G, linewidth(0.6));
draw(P--G, linewidth(0.6));
draw(P--B, linewidth(0.6));
draw(P--C, linewidth(0.6));
draw(K--A, linewidth(0.6));

dot("$B$", B, dir(173));
dot("$C$", C, dir(216));
dot("$A$", A, dir(279));
dot("$D$", D, dir(117));
dot("$E$", E, dir(295));
dot("$F$", F, dir(311));
dot("$G$", G, dir(66));
dot("$K$", K, dir(256));
dot("$N$", N, dir(288));
dot("$P$", P, dir(271));
