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

pair A = (3.88338,4.25899);
pair C = (0.,0.);
pair B = (5.49721,-0.08825);
pair P = (3.10681,-0.04987);
pair D = (4.89312,1.53901);
pair E = (2.77111,3.03915);

import graph;
size(8.48494cm);
pen zzttqq = rgb(0.6,0.2,0.);
pen qqwuqq = rgb(0.,0.39215,0.);

pen xfqqff = rgb(0.49803,0.,1.);

pen lightgreen = rgb(247, 255, 247);
pen lightpurple = rgb(245, 234, 252);
pen lightblue = rgb(234, 237, 255);
pen lightred = rgb(255, 234, 242);
pen lightpink = rgb(255, 234, 255);

filldraw(circle((2.77135,1.37300), 3.09282), lightgreen, linewidth(0.6)+green);
filldraw(circle((4.21884,2.83611), 1.46189), lightpurple, linewidth(0.6)+xfqqff);
draw(circle((2.77135,1.37300), 3.09282), linewidth(0.6)+green);

draw(A--B--C--cycle, linewidth(0.6) + zzttqq);
draw(A--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--A, linewidth(0.6) + zzttqq);

draw(C--P, linewidth(0.6) + blue);
draw((1.55414,0.02063)--(1.55267,-0.07051), linewidth(0.6) + blue);
draw(P--E, linewidth(0.6) + blue);
draw((2.89365,1.48971)--(2.98427,1.49956), linewidth(0.6) + blue);
draw(P--D, linewidth(0.6) + qqwuqq);
draw((3.95549,0.76600)--(4.01607,0.69789), linewidth(0.6) + qqwuqq);
draw((3.98386,0.79124)--(4.04445,0.72313), linewidth(0.6) + qqwuqq);
draw(P--B, linewidth(0.6) + qqwuqq);
draw((4.28375,-0.02319)--(4.28229,-0.11433), linewidth(0.6) + qqwuqq);
draw((4.32173,-0.02380)--(4.32027,-0.11494), linewidth(0.6) + qqwuqq);


dot("$A$", A, dir(70));
dot("$C$", C, dir(210));
dot("$B$", B, dir(297));
dot("$P$", P, dir(275));
dot("$D$", D, dir(309));
dot("$E$", E, dir(178));
