import graph;
size(10cm);

pen ink=gray(0.08),mid=gray(0.42),faint=gray(0.69);
pair A=(4,5.5),I=(6.5,3),J=(1.5,3);
pair D=(4.3,3.8),T1=(2,1.5),T2=(5.5,5);
pair R1=(5.5,1),R2=(2.5,1);
pair V1=(97/26,42/13),V2=(47/19,75/38);
pair S=(328/137,1347/274);

void conic(real a,real b,real c,real d,real e,pen style) {
  real gx=2a*A.x+b*A.y+d, gy=b*A.x+2c*A.y+e;
  pair prev; bool valid=false;
  for(int k=0;k<=4000;++k) {
    real theta=2pi*k/4000;
    pair v=(cos(theta),sin(theta));
    real den=a*v.x*v.x+b*v.x*v.y+c*v.y*v.y;
    if(abs(den)<0.00001) {valid=false;continue;}
    pair q=A-(gx*v.x+gy*v.y)/den*v;
    bool inside=q.x>1.47 && q.x<6.53 && q.y>0.42 && q.y<5.58;
    if(valid && inside && length(q-prev)<0.14)
      draw(prev--q,style);
    valid=inside; prev=q;
  }
}

filldraw(circle((4,3),2.5),gray(0.97),
         ink+linewidth(0.8));
conic(16,-414,-122,1114,2733,mid+linewidth(0.65));
conic(52,414,-86,-1658,-795,
      faint+dashed+linewidth(0.6));
draw((1.8,1.3)--(5.8,5.3),mid+linewidth(0.75));
draw(S--R1,ink+linewidth(1.15));
draw(S--R2,ink+linewidth(1.15));

dot("$A$",A,N);
dot("$I$",I,E);
dot("$J$",J,W);
dot("$D$",D,dir(10));
dot("$T_1$",T1,SW);
dot("$T_2$",T2,NE);
dot("$R_1$",R1,SE);
dot("$R_2$",R2,SW);
dot("$V_1$",V1,dir(145));
dot("$V_2$",V2,dir(280));
dot("$S$",S,NW);
