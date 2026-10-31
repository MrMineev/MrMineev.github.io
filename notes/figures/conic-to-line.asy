import graph;
size(11cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair A=(4,5.5),I=(6.5,3),J=(1.5,3);
pair D=(4.3,3.8),T1=(2,1.5),T2=(5.5,5);
pair R1=(5.5,1),R2=(2.5,1);
pair V1=(97/26,42/13),V2=(47/19,75/38);
pair S=(328/137,1347/274);

// Parametrize the visible parts of two exact conics from their
// common point A to avoid drawing unbounded hyperbola branches.
void conic(real a,real b,real c,real d,real e,pen ink) {
  real gx=2a*A.x+b*A.y+d, gy=b*A.x+2c*A.y+e;
  pair prev;
  bool valid=false;
  for(int k=0;k<=4000;++k) {
    real theta=2pi*k/4000;
    pair v=(cos(theta),sin(theta));
    real den=a*v.x*v.x+b*v.x*v.y+c*v.y*v.y;
    if(abs(den)<0.00001) {valid=false;continue;}
    real r=-(gx*v.x+gy*v.y)/den;
    pair q=A+r*v;
    bool inside=q.x>0.8 && q.x<7.3 && q.y>-0.2 && q.y<6.1;
    if(valid && inside && length(q-prev)<0.14)
      draw(prev--q,ink+linewidth(0.8));
    valid=inside;
    prev=q;
  }
}

filldraw(circle((4,3),2.5),
         rgb(247,255,247),green+linewidth(0.7));
conic(16,-414,-122,1114,2733,blue);
conic(52,414,-86,-1658,-795,rose);
draw((1.8,1.3)--(5.8,5.3),side+linewidth(0.7));
draw(S--R1,blue+linewidth(0.9));
draw(S--R2,rose+linewidth(0.9));

dot("$A$",A,N);
dot("$I$",I,E);
dot("$J$",J,W);
dot("$D$",D,dir(10));
dot("$T_1$",T1,SW);
dot("$T_2$",T2,NE);
dot("$R_1$",R1,SE,blue);
dot("$R_2$",R2,SW,rose);
dot("$V_1$",V1,dir(145),blue);
dot("$V_2$",V2,dir(280),rose);
dot("$S$",S,NW,green);
label("$\mathcal K$",(2,5.05),NW,green);
