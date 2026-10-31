import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(4.29046,2.03982),B=(5.02836,0.44417);
pair C=(2.64199,0.45348),D=(3.62767,0.67406);
pair F=(3.26640,-0.26479);
pair AB=(3.08556,1.54488),CB=(4.02316,0.03877);
pair BA=(3.84273,0.55590),CA=(3.32755,0.83896);
pair AC=(2.28445,-0.25798),BC=(2.92548,0.18682);

filldraw(circle((3.83678,0.86158),1.26256),
         rgb(247,255,247),green+linewidth(0.7));
draw(A--B--C--cycle,side+linewidth(0.7));
draw(AB--CB,blue+linewidth(1.1));
draw(CA--BA,green+linewidth(1.1));
draw(AC--(4.28,1.12),rose+linewidth(1.1));

dot("$A$",A,N);
dot("$B$",B,SE);
dot("$C$",C,W);
dot("$F$",F,S);
dot("$D$",D,dir(58));
dot("$A_B$",AB,NW,blue);
dot("$C_B$",CB,dir(310),blue);
dot("$B_A$",BA,dir(315),green);
dot("$C_A$",CA,dir(130),green);
dot("$A_C$",AC,SW,rose);
dot("$B_C$",BC,dir(290),rose);
