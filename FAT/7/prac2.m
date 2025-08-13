clc
clear
syms x y z L
f(x,y,z) = x^2+y^2+z^2;
g(x,y,z) = 3*x^2+4*x*y+6*y^2-140;

F = f + L*g;
Fx=diff(F,x);
Fy=diff(F,y);
Fz=diff(F,z);

S = solve(g,Fx,Fy,Fz,"Real",true);
St_pts = [S.x, S.y, S.z];
St_pts=double(St_pts)
Fun_Val = f(S.x,S.y,S.z);
Fun_Val  =double(Fun_Val)