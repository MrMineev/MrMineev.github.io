import graph;
size(10cm);

pen ink=gray(0.08),mid=gray(0.43),faint=gray(0.70);
pair A=(4.29046,2.03982),B=(5.02836,0.44417);
pair C=(2.64199,0.45348),D=(3.62767,0.67406);
pair F=(3.26640,-0.26479);
pair AB=(3.08556,1.54488),CB=(4.02316,0.03877);
pair BA=(3.84273,0.55590),CA=(3.32755,0.83896);
pair AC=(2.28445,-0.25798),BC=(2.92548,0.18682);

filldraw(circle((3.83678,0.86158),1.26256),
         gray(0.97),mid+linewidth(0.65));
draw(A--B--C--cycle,mid+linewidth(0.65));
draw(AB--CB,ink+linewidth(1.2));
draw(CA--BA,ink+linewidth(1.1));
draw(AC--(4.28,1.12),ink+linewidth(1));

dot("$A$",A,N);
dot("$B$",B,SE);
dot("$C$",C,W);
dot("$F$",F,S);
dot("$D$",D,dir(80));
dot("$A_B$",AB,NW);
dot("$C_B$",CB,dir(310));
dot("$B_A$",BA,dir(15));
dot("$C_A$",CA,dir(130));
dot("$A_C$",AC,SW);
dot("$B_C$",BC,dir(290));
