clc
clear
syms x y

f=sqrt(x);
yr=1;
I=[0,4];
a=I(1);
b=I(2);
volume=pi*int((f-yr)^2,x,a,b)



fx=matlabFunction(f);
xv=linspace(a,b,101);
[X,Y,Z] = cylinder(fx(xv)-yr);
Z=a+Z*(b-a);

surf(Z,Y+yr,X);
hold on
plot([a,b],[yr yr],'-r','LineWidth',2)
view(22,11);