import graph;
size(10cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(0,3),B=(0,0),C=(5,0),D=(4,6);
pair P=(10/7,15/7),W=(3,7/3);
pair Q=(33/14,99/28),R=(115/56,99/56);

filldraw(circle((27/14,193/42),5*sqrt(442)/42),
         rgb(234,237,255),blue+linewidth(0.7));
filldraw(circle((2.5,-5/42),5*sqrt(442)/42),
         rgb(255,234,242)+opacity(0.42),rose+linewidth(0.7));
draw(circle((106/49,3127/1176),sqrt(1114945)/1176),
     green+linewidth(1));
draw(A--B--C--D--cycle,side+linewidth(0.7));
draw(A--C,side+dashed+linewidth(0.7));
draw(B--D,side+dashed+linewidth(0.7));

dot("$A$",A,NW);
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$D$",D,N);
dot("$P$",P,dir(205));
dot("$W$",W,dir(310),green);
dot("$Q$",Q,dir(115),green);
dot("$R$",R,dir(305),green);
label("$(APD)$",(0.30,5.50),NW,blue);
label("$(BPC)$",(4.95,-1.75),SE,rose);
label("$(PQR)$",(3.45,3.50),NE,green);
