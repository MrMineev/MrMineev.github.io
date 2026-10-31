import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(4.39193,2.24423), B=(5.02836,0.44417);
pair C=(2.64199,0.45348), D=(3.62767,0.67406);
pair F=(3.83746,-0.29404);
pair X=(3.445,1.276), U=(3.981,0.3653);
pair Z=(2.173,1.944);

filldraw(circle((3.83746,1.03565),1.32969),
         rgb(247,255,247),green+linewidth(0.6));
filldraw(circle((4.441,1.249),0.996),
         rgb(234,237,255)+opacity(0.35),blue+linewidth(0.7));
draw(A--B--C--cycle,side+linewidth(0.7));
draw(A--F,side+dashed+linewidth(0.6));
draw(B--Z,blue+linewidth(0.9));
draw(D--Z,rose+linewidth(0.9));

dot("$A$",A,N);
dot("$B$",B,SE);
dot("$C$",C,SW);
dot("$D$",D,S);
dot("$F$",F,S);
dot("$X$",X,SE,blue);
dot("$U$",U,S,rose);
dot("$Z$",Z,W);
label("$(ABD)$",(4.85,1.72),E,blue);
label("$(ABC)$",(2.60,1.55),W,green);
