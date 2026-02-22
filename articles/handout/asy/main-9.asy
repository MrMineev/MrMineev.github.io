if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-9";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

pair A = (3.95481,3.94525);
pair C = (-0.02427,-0.00809);
pair B = (4.97572,-0.00809);
pair H = (3.95481,1.01947);
pair D = (4.76802,0.79619);
pair E = (1.64758,1.65295);
pair G = (5.32575,1.97190);
pair M = (2.47572,-0.00809);
pair F = (3.95481,0.32983);
pair X = (3.31944,3.31399);

import graph;
size(12cm);
pen qqwuqq = rgb(0.,0.39215,0.);


pen lightgreen = rgb(203, 255, 171);

filldraw(F--D--B--cycle, lightgreen, linewidth(0.6) + qqwuqq);
filldraw(E--F--X--cycle, lightgreen, linewidth(0.6) + qqwuqq);

pen ffxfqq = rgb(1.,0.49803,0.);
pen xfqqff = rgb(0.49803,0.,1.);
pen ffqqff = rgb(1.,0.,1.);
draw(A--B--C--cycle, linewidth(0.8));
draw(E--F--X--cycle, linewidth(0.8) + qqwuqq);
draw(F--D--B--cycle, linewidth(0.8) + qqwuqq);
draw(A--B, linewidth(0.8));
draw(B--C, linewidth(0.8));
draw(C--A, linewidth(0.8));
draw(circle((2.47572,1.45480), 2.89655), linewidth(0.8) + ffxfqq);
draw(E--D, linewidth(0.8));
draw(circle((3.45847,2.13754), 1.87460), linewidth(0.8) + xfqqff);
draw(M--G, linewidth(0.8));
draw(A--G, linewidth(0.8));
draw(A--F, linewidth(0.8));
draw(circle((5.11955,2.13754), 2.15045), linewidth(0.8) + ffqqff);
draw(C--H, linewidth(0.8));
draw(H--B, linewidth(0.8));
draw(E--F, linewidth(0.8) + qqwuqq);
draw(F--X, linewidth(0.8) + qqwuqq);
draw(X--E, linewidth(0.8) + qqwuqq);
draw(F--D, linewidth(0.8) + qqwuqq);
draw(D--B, linewidth(0.8) + qqwuqq);
draw(B--F, linewidth(0.8) + qqwuqq);


dot("$A$", A, dir(114));
dot("$C$", C, dir(223));
dot("$B$", B, dir(290));
dot("$H$", H, dir(110));
dot("$D$", D, dir(-20));
dot("$E$", E, dir(175));
dot("$G$", G, dir(339));
dot("$M$", M, dir(242));
dot("$F$", F, dir(258));
dot("$X$", X, dir(158));
