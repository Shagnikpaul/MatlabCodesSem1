clc
clear

syms x y 

u=2*x^2+3*y^3;
v=3*x^2-5*y;

J=det(jacobian([u;v],[x,y]))
J1=subs(J,[x,y],[3,-1/2]);
J2=double(J1)