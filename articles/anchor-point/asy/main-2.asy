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

pair A = (4.04814,3.63099);
pair C = (0.,0.);
pair B = (5.,0.);
pair M = (2.5,0.);
pair S = (3.38644,0.);
pair X = (1.87898,-1.45651);

import graph;
size(8cm);
pen zzttqq = rgb(0.6,0.2,0.);
pen lightgreen = rgb(247, 255, 247);
pen lightpurple = rgb(245, 234, 252);
pen lightblue = rgb(234, 237, 255);

draw(A--B--C--cycle, linewidth(0.6) + zzttqq);

filldraw(circle((2.5,1.28489), 2.81086), lightgreen, linewidth(0.6) + green);

draw(arc(S,0.32284,0.,79.67192)--S--cycle, linewidth(0.6) + blue);
draw(arc(C,0.32284,-37.78132,41.89059)--C--cycle, linewidth(0.6) + blue);
draw(A--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--A, linewidth(0.6) + zzttqq);
draw(A--X, linewidth(0.6));
draw(A--S, linewidth(0.6));
draw(C--X, linewidth(0.6));

dot("$A$", A, dir(68));
dot("$C$", C, dir(213));
dot("$B$", B, dir(283));
dot("$M$", M, dir(120));
dot("$S$", S, dir(288));
dot("$X$", X, dir(235));
