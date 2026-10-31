import graph;
size(10cm);

pen side = rgb(0.6,0.2,0.);
pen first = rgb(0.08,0.43,0.68);
pen second = rgb(0.72,0.22,0.42);
pen third = rgb(0.20,0.55,0.28);

pair T=(4,0), Z=(4,2.5);
pair X1=(2.2,2.4), P1=(7.6,2.7);
pair X2=(1.9,2.8), P2=(6.8,2.1);
pair X3=(1.3,3.6), P3=(6.16,1.62);

draw((0.8,4.25)--T, side+linewidth(0.8));
draw(T--(8.3,3.225), side+linewidth(0.8));
draw(X1--P1, first+linewidth(0.8));
draw(X2--P2, second+linewidth(0.8));
draw(X3--P3, third+linewidth(0.8));

dot("$T$",T,S);
dot("$Z$",Z,N);
dot("$X_1$",X1,NW,first);
dot("$X_2$",X2,W,second);
dot("$X_3$",X3,NW,third);
dot("$P_1$",P1,SE,first);
dot("$P_2$",P2,E,second);
dot("$P_3$",P3,E,third);
label("$l$",(0.9,4.1),NW,side);
label("$m$",(8.15,3.15),E,side);
