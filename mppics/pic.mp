input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../gauss-bonnet}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(1) 
save u,p;
path p[];
u:=1cm;

z0=(1,0)*u rotated 45;

for i =1 step 1 until 12:
z[i]=z[i-1] rotated 30;
endfor

p0=
z2{up}..
z1{down}..
z5..
z7{up}..
z6{down}..
z9{up}..
z8{down}..
z10..
cycle;

draw p0;

%dOt z0,z1,z2,z3,z4,z5,z6,z7,z8,z9;
endfig;

beginfig(3) 
save u,p,k,l;
path p[];
u:=1cm;
k:=-1.8;
l:=2.2;

z0=(0,0)*u;
z1=(1,0)*u;
z2=(2,0)*u;
z3=(3,0)*u;
z4=(4,0)*u;
z5=(5,0)*u;

z.a=(0,.8)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;


p5=z.a..z.b..l*z.b{z.b rotated -90}..z.b..z.c..l*z.c{z.c rotated -90}..z.c..z.a..l*z.a{z.a rotated -90}..cycle;


p1= circle(origin,8) rotated -0 shifted z.a cutbefore (subpath (0,1) of p5) cutafter (subpath (6,7) of p5) ; 
draw p1;
draw p1 rotated 120;
draw p1 rotated -120;

draw p5 pensemibold;

label.bot(btex $\alpha$ etex, z.a+(0,-9));
label.urt(btex $\beta$ etex, z.b +(6,2));
label.ulft(btex $\gamma$ etex, z.c +(-6,2));
endfig;

beginfig(50) 
save u,p;
path p[];
u:=.8cm;

z0=(0,0)*u;
z1=(1,0)*u;
z2=(2,0)*u;
z3=(3,0)*u;

p0=z0{1,2}..z2{down}..z0{-1,2}..z3{-1,-2}..z1{up}..z3{1,-2}..cycle;

draw p0 pensemibold;
endfig;

beginfig(55) 
save u,p,k,l;
path p[];
u:=.7cm;
k:=-1.8;
l:=2.2;

z0=(0,0)*u;
z1=(1,0)*u;
z2=(2,0)*u;
z3=(3,0)*u;
z4=(4,0)*u;
z5=(5,0)*u;

z.a=(0,-.8)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;

z.shift=(5,0)*u;
z.shifty=(0,-3)*u;

p1=
z0{up}..
z1{1,-2}..
z2{1,2}..
z3{1,-2}..
z4{up}..
z3{-1,-2}..
z2{-1,2}..
z1{-1,-2}..cycle;

p2=
z0{up}..
z1{1,-2}..
z2{1,2}..
z4{-1,-2}..
z3{up}..
z4{1,-2}..
z2{-1,2}..
z1{-1,-2}..cycle;

p3=
z1{up}..
z0{-1,-2}..
z2{1,2}..
z4{-1,-2}..
z3{up}..
z4{1,-2}..
z2{-1,2}..
z0{1,-2}..cycle;

p4=z.a..z.b..k*z.a..z.c..z.a..k*z.c..z.b..z.c..k*z.b..cycle;

p5=z.a..z.b..l*z.b{z.b rotated -90}..z.b..z.c..l*z.c{z.c rotated -90}..z.c..z.a..l*z.a{z.a rotated -90}..cycle;

p6=
z0{up}..z1{1,-2}..z4{1,2}..z5{down}..z4{-1,2}..z2{down}..z3{up}..z1{-1,-2}..cycle
;

draw p1 pensemibold;
draw p2 shifted z.shift pensemibold;
draw p3 shifted (2*z.shift) pensemibold;
draw p4 shifted (z.shifty+z2) pensemibold;
draw p5 rotated 180 shifted (z.shifty+z2+z.shift) pensemibold;
draw p6 shifted (z.shifty+2*z.shift) pensemibold;

label.bot(btex $1$ etex, z2+(0,20));
label(btex $2$ etex, .6[z2,z3]+z.shift);
label(btex $3$ etex, .6[z2,z3]+2*z.shift);
label(btex $4$ etex, z.shifty+z2);
label(btex $5$ etex, z.shifty+z2+z.shift);
label(btex $6$ etex, .5[z2,z3]+z.shifty+2*z.shift);
endfig;


beginfig(472) 
save u,p;
path p[];
u:=.9cm;

z.a=(1,0)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;
z.s=(0,4)*u;

p0= z.c..1.5*z.c{dir (-120-90)}..z.c..z.a{dir (-120-90)}..(.5)*z.a{dir (-90)}..z.a{dir (120-90)}..z.b..1.5*z.b{dir (120-90)}..z.b..cycle;

draw p0 pensemibold;

p1= circle(origin,8) rotated -90 shifted z.a cutafter (subpath (5,6) of p0) cutbefore (subpath (2,3) of p0); 
draw p1;

p2= circle(origin,8) rotated -140 shifted z.b cutafter (subpath (5,6) of p0) cutbefore (subpath (8,9) of p0); 
draw p2;

p3= circle(z.c,8) cutafter (subpath (8,9) of p0) cutbefore (subpath (2,3) of p0); 
draw p3;

z.e=(0,.5)*u;

z.d0=(0,-1)*u+1.7*z.s;
z.d1=z.d0+z.e;
z.d2=z.d0+2*z.e;
z.d3=z.d0+3*z.e;
z.d4=z.d0+4*z.e;
z.d5=z.d0+5*z.e;
z.d6=z.d0+6*z.e;

dOt z.a,z.b,z.c;

label.llft(btex $z$ etex, point 1 of p0);
label.bot(btex $b$ etex, point 2.3 of p0);
label.lft(btex $x$ etex, point 4 of p0);
label.top(btex $c$ etex, point 5.7 of p0);
label.ulft(btex $y$ etex, point 7 of p0);
label.lft(btex $a$ etex, point 8.55 of p0);

label.rt(btex $\alpha$ etex, z.a+(8,0));
label.lrt(btex $\beta$ etex, z.b +(5,-6));
label.urt(btex $\gamma$ etex, z.c +(5,6));
endfig;

beginfig(473) 
save u,p;
path p[];
u:=.9cm;

z.a=origin;
z.b=(-2,-1)*u;
z.c=(-1.9,1)*u;
z.bb=(-4.1,-.6)*u;
z.cc=(-4.05,.6)*u;

p0=z.a{(z.b-z.a) rotated 5 }..z.b--z.b{(z.bb-z.b) rotated 5 }..z.bb--z.bb{(z.cc-z.bb) rotated 5 }..z.cc--z.cc{(z.c-z.cc) rotated 5}..z.c--z.c--cycle;
draw p0 pensemibold;

p2= circle(origin,8) rotated -90 shifted z.a cutafter (subpath (0,1) of p0) cutbefore (subpath (8,9) of p0); 
draw p2;

p3= circle(origin,8) rotated -90 shifted z.b cutafter (subpath (2,3) of p0) cutbefore (subpath (0,1) of p0); 
draw p3;

p4= circle(origin,8) rotated -180 shifted z.bb cutafter (subpath (4,5) of p0) cutbefore (subpath (2,3) of p0); 
draw p4;

p5= circle(origin,8) rotated -140 shifted z.cc cutafter (subpath (6,7) of p0) cutbefore (subpath (4,5) of p0); 
draw p5;

p6= circle(origin,8) rotated 0 shifted z.c cutafter (subpath (8,9) of p0) cutbefore (subpath (6,7) of p0); 
draw p6;


label.lrt(btex $c$ etex, point 0.5 of p0);
label.bot(btex $c+y$ etex rotated -10, point 2.5 of p0);
label.lft(btex $x$ etex, point 4.5 of p0);
label.top(btex $b+z$ etex rotated 10, point 6.5 of p0);
label.urt(btex $b$ etex, point 8.5 of p0);

label.lft (btex $\alpha$ etex, (dir 180)*8+z.a);
label.top (btex $\pi{-}\beta$ etex, (dir 90)*8+z.b);
label.bot (btex $\pi{-}\gamma$ etex, (dir -90)*8+z.c);
label.rt(btex $\pi{-}\alpha$ etex, (dir -45)*8+ z.cc);
label.rt(btex $\pi{-}\alpha$ etex, (dir 45)*8+ z.bb);
endfig;

beginfig(474) 
save u,p,k;
path p[];
u:=.9cm;
k:=3;

z.a=origin;
z.b=(-2,-1)*u;
z.c=(-1.9,1)*u;
z.bb=(-4.1,-.6)*u;
z.cc=(-4.05,.6)*u;

p0=z.a{(z.b-z.a) rotated 5 }..z.b--z.b{(z.bb-z.b) rotated 5 }..z.bb--z.bb{(z.cc-z.bb) rotated 5 }..z.cc--z.cc{(z.c-z.cc) rotated 5}..z.c--z.c--cycle;
draw p0 pensemibold;

z0= point 0 of p0;
z1= point .5 of p0;
z2= point 1 of p0;
z3= point 2.5 of p0;
z4= point 3 of p0;
z5= point 5 of p0;
z6= point 6.5 of p0;
z7= point 7 of p0;
z8= point 8.5 of p0;

draw z0{dir (180+k*5)}..z2;
draw z0{dir (180+k*3)}..z3;
draw z0{dir (180+k)}..z4;
draw z0{dir (180-k)}..z5;
draw z0{dir (180-k*3)}..z6;
draw z0{dir (180-k*5)}..z7;

dOt z0,z1,z2,z3,z4,z5,z6,z7,z8;

label.rt (btex $v$ etex, z.a);
endfig;

beginfig(475) 
save u,p,k;
path p[];
u:=1cm;
k:=3;

z.a=origin;
z.b=(-2,-1)*u;
z.c=(-1.9,1)*u;
z.bb=(-4.1,-.6)*u;
z.cc=(-4.05,.6)*u;

p0=z.a{(z.b-z.a) rotated 5 }..z.b--z.b{(z.bb-z.b) rotated 5 }..z.bb--z.bb{(z.cc-z.bb) rotated 5 }..z.cc--z.cc{(z.c-z.cc) rotated 5}..z.c--z.c--cycle;


z0= point 0 of p0;
z1= point .5 of p0;
z2= point 1 of p0;
z3= point 2.5 of p0;
z4= point 3 of p0;
z5= point 5 of p0;
z6= point 6.5 of p0;
z7= point 7 of p0;
z8= point 8.5 of p0;

drawarrow z1--z0 pensemibold;
drawarrow z2--z1 pensemibold;
drawarrow z3--z2 pensemibold;
drawarrow z4--z3 pensemibold;
drawarrow z5--z4 pensemibold;
drawarrow z6--z5 pensemibold;
drawarrow z7--z6 pensemibold;
drawarrow z8--z7 pensemibold;
drawarrow z0--z8 pensemibold;

endfig;

beginfig(500) 
save u,p,a,b,c,d;
path p[];
u:=1cm;
a:=30;
b:=25;
c:=40;
d:=18;

z.o=origin;
z.r=(0,2)*u;

z.b=z.r rotated ((180-a)/2);
z.bb=z.b rotated d;
z.bbb=z.bb rotated b;
z.ba=z.bbb rotated d;
z.baa=z.ba rotated a;
z.c=z.r rotated (-(180-a)/2);
z.cc=z.c rotated -d;
z.ccc=z.cc rotated -c;
z.ca=z.ccc rotated -d;
z.caa=z.ca rotated -a;

drawarrow z.o--z.c;
drawarrow z.o--z.bb;
drawarrow z.o--z.cc;
drawarrow z.o--z.ba;
drawarrow z.o--z.ca;
drawarrow z.o--z.b;
drawarrow z.o--z.bbb;
drawarrow z.o--z.ccc;
drawarrow z.o--z.baa;
drawarrow z.o--z.caa;


labelarcsprof(z.b, z.o, z.c, 21, 21, btex $\pi-\alpha$ etex);
labelarcsprof(z.bb, z.o, z.bbb, 21, 21, btex $\beta$ etex);
labelarcsprof(z.ccc, z.o, z.cc, 21, 21, btex $\gamma$ etex);
labelarcsprof(z.ba, z.o, z.baa, 21, 21, btex $\alpha$ etex);
labelarcsprof(z.ca, z.o, z.caa, 21, 21, btex $\alpha$ etex);
fill_angle(z.b, z.o, z.bb, 20);
fill_angle(z.c, z.o, z.cc, 20);
fill_angle(z.bbb, z.o, z.ba, 20);
fill_angle(z.ccc, z.o, z.ca, 20);
fill_angle(z.baa, z.o, z.caa, 20);

dOt z.o;

label.lft (btex $v$ etex, z.bb);
label.lft (btex $v'$ etex, z.bbb);
label.rt (btex $w$ etex, z.cc);
label.rt (btex $w'$ etex, z.ccc);

label (btex $b$ etex rotated (-180+angle(z.b+z.bb)), .4*(z.b+z.bb));
label (btex $b+z$ etex rotated (-180+angle(z.bbb+z.ba)), .4*(z.bbb+z.ba));
label (btex $c$ etex rotated (angle(z.c+z.cc)), .4*(z.c+z.cc));
label (btex $c+y$ etex rotated (angle(z.ccc+z.ca)), .4*(z.ccc+z.ca));
label (btex $z$ etex , .4*(z.baa+z.caa));
endfig;

beginfig(100) 
save u,p,a;
path p[];
u:=1cm;
a:=40;
picture q[];

z.c1=origin;
z.d1=(2,0)*u rotated -a/2;
z.e1=z.d1+(z.d1/2) rotated -a;
z.b1=z.d1 xscaled -1;
z.a1=z.e1 xscaled -1;

p0=z.a1--z.b1--z.c1--z.d1--z.e1;
p1=z.a1{(z.b1-z.a1) rotated 90}..tension .8 and .8 ..z.b1{(bisector(z.a1,z.b1,  z.c1)-z.b1)rotated 90}..tension .8 and .8 ..z.c1{(bisector(z.b1,z.c1,  z.d1)-z.c1)rotated 90}..tension .8 and .8 ..z.d1{(bisector(z.c1,z.d1,  z.e1)-z.d1)rotated 90}..tension .8 and .8 ..z.e1{(z.d1-z.e1) rotated 90}..tension .8 and .8 ..cycle;

q1= image(
draw p0 pensemibold;
clip currentpicture to p1;
draw p1 penhair;
);

z.a2=z.a1;
z.b2=z.b1;
z.c2=z.c1;
z.d2=z.b2 xscaled -1 yscaled 1.85;
z.e2=z.d2+(.6*z.d2) rotated 117;

p2=z.a2--z.b2--z.c2--z.d2--z.e2;
p3=
z.a2{(z.b2-z.a2) rotated 90}
..tension .8 and .8 ..
z.b2{(bisector(z.a2,z.b2,  z.c2)-z.b2)rotated 90}
..tension .8 and .8 ..
z.c2{(bisector(z.b2,z.c2,  z.d2)-z.c2)rotated 90}
..tension .9 and .9 ..
z.e2{(z.d2-z.e2) rotated 90}
..tension .8 and .8 ..
z.d2{(bisector(z.c2,z.d2,  z.e2)-z.d2)rotated 90}
..tension .8 and .8 ..
cycle;


q2= image(
draw p2 pensemibold;
clip currentpicture to p3;
draw p3 penhair;
);

z.c3=z.c2;
z.d3=z.d2;
z.e3=z.e2;
z.a3=z.e3 xscaled -1;
z.b3=z.d3 xscaled -1;

p4=z.a3--z.b3--z.c3--z.d3--z.e3;
p5=
z.b3{(bisector(z.a3,z.b3,  z.c3)-z.b3)rotated 90}
..tension .8 and .8 ..
z.a3{(z.b3-z.a3) rotated 90}
..tension .9 and .9 ..
z.c3{(bisector(z.b3,z.c3,  z.d3)-z.c3)rotated 90}
..tension .9 and .9 ..
z.e3{(z.d3-z.e3) rotated 90}
..tension .8 and .8 ..
z.d3{(bisector(z.c3,z.d3,  z.e3)-z.d3)rotated 90}
..tension .8 and .8 ..
cycle;

q3= image(
draw p4 pensemibold;
clip currentpicture to p5;
draw p5 penhair;
);

z.b4=origin;
z.a4=(-.9,0)*u rotated 60;
z.c4=z.a4 rotated 60;

p6=z.a4--z.b4--z.c4--cycle;
p7=
z.a4{(bisector(z.c4,z.a4,  z.b4)-z.a4)rotated 90}
..tension .8 and .8 ..
z.b4{(bisector(z.a4,  z.b4,z.c4)-z.b4)rotated 90}
..tension .8 and .8 ..
z.c4{(bisector(z.b4,z.c4,z.a4)-z.c4)rotated 90}
..tension .8 and .8 ..
cycle;

q4= image(
draw p6 pensemibold;
clip currentpicture to p7;
draw p7 penhair;
);

z.shift1=(2.5,0)*u;
z.shift2=(3.2,0)*u;
z.shift3=(2.4,0)*u;

draw q1;
draw q2 shifted z.shift1;
draw q3 shifted (z.shift1+z.shift2);
draw q4 shifted (z.shift1+z.shift2+z.shift3);

label.bot(btex $1$ etex, .5[z.b1,z.d1]);
label(btex $2$ etex, .5[z.b2,z.d2] +z.shift1);
label(btex $3$ etex, .333[.5[z.b3,z.d3],z.c3] +z.shift1+z.shift2);
label(btex $4$ etex, .333[.5[z.a4,z.b4],z.c4] +z.shift1+z.shift2+z.shift3);
endfig;

end
