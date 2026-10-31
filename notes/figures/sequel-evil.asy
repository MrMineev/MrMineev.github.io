import graph;
size(10cm);

pen ink=gray(0.08), mid=gray(0.42), faint=gray(0.69);
pair A=(4,5.5),I=(6.5,3),J=(1.5,3);
pair B=(118/37,47/74),C=(4,0.5);
pair F=(5.5,5),D=(4.3,3.8);
pair R1=(5.5,1),R2=(2.5,1);
pair X1=(4,203/61),X2=(4,194/43);
pair P1=(5.5,0.25),P2=(7/3,7/9);
pair Z=(3646/979,3812/979);

// Rationally parametrize visible portions of the two exact conics.
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
draw(A--C,mid+linewidth(0.6));
draw((2.14,81/100)--(5.8,1/5),mid+linewidth(0.6));
draw(F--P1,mid+linewidth(0.45));
draw(F--P2,faint+dashed+linewidth(0.45));
draw(Z--P1,ink+linewidth(1.15));
draw(X2--P2,ink+linewidth(1.15));

dot("$A$",A,dir(145));
dot("$I$",I,E);
dot("$J$",J,dir(145));
dot("$B$",B,dir(250));
dot("$C$",C,SE);
dot("$F$",F,NE);
dot("$D$",D,dir(15));
dot("$R_1$",R1,SE);
dot("$R_2$",R2,NW);
dot("$X_1$",X1,dir(330));
dot("$X_2$",X2,dir(45));
dot("$P_1$",P1,E);
dot("$P_2$",P2,S);
dot("$Z$",Z,dir(165));
