import graph;
size(9cm);

pen ink=gray(0.08),mid=gray(0.45),faint=gray(0.72);
pair C=(6,0),E1=(2,0),E2=(4,0);
pair G1=(0,4),G2=(9/2,1),W=(3,-2);

draw((0,0)--(6.65,0),mid+linewidth(0.85));
draw((0,4)--(6,0),mid+linewidth(0.85));
draw(W--G1,ink+linewidth(1.1));
draw(W--G2,ink+linewidth(1.1));

dot("$C^*$",C,SE);
dot("$E_1^*$",E1,dir(225));
dot("$E_2^*$",E2,dir(305));
dot("$G_1^*$",G1,NW);
dot("$G_2^*$",G2,dir(35));
dot("$W^*$",W,S);
