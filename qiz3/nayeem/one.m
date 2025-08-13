clear 
clc 
syms x y z real
xa=0+0*y;
xb=2+0*y;
ya=0+0*x;
yb=2+0*x;
za=0+0*x+0*y;
zb=9-x^2+2*y^2;
int(int(int(1+0*z,z,za,zb),y,ya,yb),x,xa,xb)
viewSolid(z,za,zb,y,ya,yb,x,xa,xb)