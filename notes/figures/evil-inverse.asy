import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(4.39193,2.24423),B=(5.02836,0.44417);
pair C=(2.64199,0.45348),D=(3.62767,0.67406);
pair F=(3.23675,-0.15060),R=(4.84370,1.90488);
pair Z=(3.05239,1.48186),XB=(3.445,1.276);
pair XR=(3.28607,1.11258),PR=(3.70578,0.44933);

filldraw(circle((3.83746,1.03565),1.32969),
         rgb(247,255,247),green+linewidth(0.7));
draw(circle((4.441,1.249),0.996),blue+linewidth(0.8));
draw(circle((4.11653,1.40719),0.88117),
     rose+linewidth(0.8));
draw(A--B--C--cycle,side+linewidth(0.8));
draw(F--R,side+dashed+linewidth(0.6));
draw(Z--B,blue+linewidth(0.9));
draw(Z--PR,rose+linewidth(0.9));

dot("$A$",A,N);
dot("$B$",B,SE);
dot("$C$",C,SW);
dot("$D$",D,dir(20));
dot("$F$",F,SW);
dot("$R$",R,NE);
dot("$Z$",Z,NW);
dot("$X_B$",XB,dir(20),blue);
dot("$X_R$",XR,dir(240),rose);
dot("$P_R$",PR,S,rose);
