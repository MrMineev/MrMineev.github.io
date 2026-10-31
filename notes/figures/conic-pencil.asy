import graph;
size(11cm);

pen side = rgb(0.6,0.2,0.);
pen blue = rgb(0.09,0.38,0.76);
pen rose = rgb(0.73,0.21,0.40);
pen green = rgb(0.12,0.52,0.29);
pen pale = rgb(247,255,247);

pair A=(4,5.5), I=(6.5,3), J=(1.5,3), T=(4,0.5);
pair F=(5.5,5), D=(4.3,3.8);
pair Q1=(5.5,1), Q2=(2.5,1);
pair X1=(4,203/61), X2=(4,194/43);
pair P1=(5.5,0.25), P2=(7/3,7/9);
pair Z=(3646/979,3812/979);

// Draw the visible portions of a real conic through A by parametrizing
// each line from A; both curves below also pass through I, J and D.
void conic(real a, real b, real c, real d, real e, pen ink) {
  real gx=2a*A.x+b*A.y+d, gy=b*A.x+2c*A.y+e;
  pair prev;
  bool valid=false;
  for (int k=0; k<=4000; ++k) {
    real theta=2pi*k/4000;
    pair v=(cos(theta),sin(theta));
    real den=a*v.x*v.x+b*v.x*v.y+c*v.y*v.y;
    if (abs(den)<0.00001) {valid=false; continue;}
    real r=-(gx*v.x+gy*v.y)/den;
    pair q=A+r*v;
    bool inside=q.x>0.7 && q.x<7.3 && q.y>-0.2 && q.y<6.4;
    if (valid && inside && length(q-prev)<0.14)
      draw(prev--q,ink+linewidth(0.8));
    valid=inside;
    prev=q;
  }
}

filldraw(circle((4,3),2.5),pale,green+linewidth(0.7));
conic(16,-414,-122,1114,2733,blue);
conic(52,414,-86,-1658,-795,rose);
draw(A--T,side+linewidth(0.7));
draw((1.8,0.87)--(7,-0.02),side+linewidth(0.7));
draw(F--P1,blue+linewidth(0.6));
draw(F--P2,rose+linewidth(0.6));
draw(X1--P1,blue+linewidth(0.9));
draw(X2--P2,rose+linewidth(0.9));

dot("$A$",A,N);
dot("$I$",I,E);
dot("$J$",J,W);
dot("$T$",T,S);
dot("$F$",F,NE);
dot("$D$",D,E);
dot("$Q_1$",Q1,SE,blue);
dot("$Q_2$",Q2,NW,rose);
dot("$X_1$",X1,SE,blue);
dot("$X_2$",X2,NE,rose);
dot("$P_1$",P1,E,blue);
dot("$P_2$",P2,S,rose);
dot("$Z$",Z,W);
label("$\mathcal K$",(2.3,5),NW,green);
label("$\mathcal H_1$",(6.5,4.25),E,blue);
label("$\mathcal H_2$",(2,4.15),W,rose);
label("$m$",(6.8,0.12),SE,side);
