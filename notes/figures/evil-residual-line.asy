import graph;
size(11cm);

pen side=rgb(0.6,0.2,0.);
pen blue=rgb(0.08,0.39,0.76);
pen rose=rgb(0.72,0.22,0.43);
pen green=rgb(0.12,0.53,0.30);

pair V=(4,5.5),I=(6.5,3),J=(1.5,3);
pair D=(4.3,3.8),F=(2.5,5);
pair U1=(5.5,1),U2=(2.5,1);
pair S1=(301/79,257/79),S2=(5/2,77/43);

void conic(real a,real b,real c,real d,real e,pen ink) {
  real gx=2a*V.x+b*V.y+d, gy=b*V.x+2c*V.y+e;
  pair prev;
  bool valid=false;
  for(int k=0;k<=4000;++k) {
    real theta=2pi*k/4000;
    pair v=(cos(theta),sin(theta));
    real den=a*v.x*v.x+b*v.x*v.y+c*v.y*v.y;
    if(abs(den)<0.00001) {valid=false;continue;}
    real r=-(gx*v.x+gy*v.y)/den;
    pair q=V+r*v;
    bool inside=q.x>0.7 && q.x<7.3 && q.y>-0.2 && q.y<6.1;
    if(valid && inside && length(q-prev)<0.14)
      draw(prev--q,ink+linewidth(0.8));
    valid=inside;
    prev=q;
  }
}

filldraw(circle((4,3),2.5),rgb(247,255,247),
         green+linewidth(0.7));
conic(16,-414,-122,1114,2733,blue);
conic(52,414,-86,-1658,-795,rose);
draw(F--U1,blue+linewidth(0.7));
draw(F--U2,rose+linewidth(0.7));
draw((2.25,1.51)--(5.2,4.80),
     green+linewidth(1));

dot("$V$",V,N);
dot("$I$",I,E);
dot("$J$",J,W);
dot("$D$",D,dir(25));
dot("$F$",F,NW);
dot("$U_1$",U1,SE,blue);
dot("$U_2$",U2,SW,rose);
dot("$S_1$",S1,dir(280),blue);
dot("$S_2$",S2,W,rose);
label("$L$",(5.2,4.80),NE,green);
