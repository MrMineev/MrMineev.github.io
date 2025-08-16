if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-10";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

pair A = (3.24547,5.89923);
pair C = (-0.11569,0.02755);
pair B = (5.,0.);
pair X = (1.62854,-0.98325);
pair P = (-1.98327,5.16138);
pair Q = (-3.94413,-3.18505);
pair D = (2.50169,0.01345);
pair E = (0.91727,1.83207);
pair G = (5.75356,3.72552);
pair F = (4.67522,1.09199);
pair W = (2.44944,0.70195);

import graph;
size(8cm);
pen zzttqq = rgb(0.6,0.2,0.);

pen zzttqq = rgb(0.6,0.2,0.);
pen xfqqff = rgb(0.49803,0.,1.);
pen dcrutc = rgb(0.86274,0.07843,0.23529);

pen lightgreen = rgb(247, 255, 247);
pen lightpurple = rgb(245, 234, 252);
pen lightblue = rgb(234, 237, 255);
pen lightred = rgb(255, 234, 242);
pen lightpink = rgb(255, 234, 255);

filldraw(circle((2.45529,2.45369), 3.53498), lightgreen, linewidth(0.6)+green);
filldraw(circle((3.14922,3.25437), 2.64660), lightpurple, linewidth(0.6)+xfqqff);
draw(circle((2.45529,2.45369), 3.53498), linewidth(0.6)+green);

draw(A--B--C--cycle, linewidth(0.6) + zzttqq);
draw(A--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--A, linewidth(0.6) + zzttqq);
draw(X--G, linewidth(0.6));
draw(P--D, linewidth(0.6));
draw(Q--F, linewidth(0.6));

dot("$A$", A, dir(67));
dot("$C$", C, dir(216));
dot("$B$", B, dir(297));
dot("$X$", X, dir(260));
dot("$P$", P, dir(71));
dot("$Q$", Q, dir(225));
dot("$D$", D, dir(276));
dot("$E$", E, dir(204));
dot("$G$", G, dir(40));
dot("$F$", F, dir(306));
dot("$W$", W, dir(61));
