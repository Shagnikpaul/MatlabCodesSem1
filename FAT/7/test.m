clc
clear

syms x y z L

f(x,y) = x^2+y^2;
g(x,y) = x*y-2;
F=f+L*g;
Fx=diff(F,x);
Fy=diff(F,y);
S=solve(g,Fx,Fy,"Real",true);
St_pts=[S.x,S.y];
St_pts=double(St_pts)
F_val=F(S.x,S.y);
F_val = double(F_val)

X=linspace(min(S.x)-3,max(S.x)+3,20);
X=double(X);
Y=linspace(min(S.y)-3,max(S.y)+3,20);
Y=double(Y);

[X,Y] = meshgrid(X,Y);
Z=f(X,Y);
Z=double(Z);
surf(X,Y,Z);
hold on
% get the straight line for curve
gv=fimplicit(g,'b');
hold on
xv=get(gv,'XData');
yv=get(gv,'YData');
fv=f(xv,yv);
plot3(xv,yv,fv,'-r');
