import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(4.39193,2.24423), B=(5.02836,0.44417);
pair C=(2.64199,0.45348), D=(3.62767,0.67406);
pair F=(3.23675,-0.15060);
pair Q1=B, Q2=(4.84370,1.90488);
pair X1=(3.445,1.276), X2=(3.28607,1.11258);
pair P1=B, P2=(3.70578,0.44933);
pair Z=(3.05239,1.48186);

filldraw(circle((3.83746,1.03565),1.32969),
         rgb(247,255,247),green+linewidth(0.6));
filldraw(circle((4.441,1.249),0.996),
         rgb(234,237,255)+opacity(0.35),blue+linewidth(0.7));
filldraw(circle((4.11653,1.40719),0.88117),
         rgb(255,234,242)+opacity(0.32),rose+linewidth(0.7));
draw(A--B--C--cycle,side+linewidth(0.7));
draw(F--B,blue+linewidth(0.6));
draw(F--Q2,rose+linewidth(0.6));
draw(Z--B,blue+linewidth(0.9));
draw(Z--P2,rose+linewidth(0.9));
draw(A--C,side+linewidth(0.7));

dot("$A$",A,N);
dot("$B=P_1=Q_1$",B,SE,blue);
dot("$C$",C,SW);
dot("$D$",D,S);
dot("$F$",F,SW);
dot("$Q_2$",Q2,NE,rose);
dot("$X_1$",X1,NE,blue);
dot("$X_2$",X2,S,rose);
dot("$P_2$",P2,S,rose);
dot("$Z$",Z,W);
label("$(ABC)$",(2.54,1.57),W,green);
label("$\omega_1$",(4.75,2.10),E,blue);
label("$\omega_2$",(4.83,1.51),E,rose);
