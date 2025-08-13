clc
clear
syms x
f=input('Enter the upper curve');
g=input('Enter the lower curve');
I=input('Enter the limits of integration in [a,b] form');
a=I(1);
b=I(2);
area=int(f-g,x,a,b)
x1=linspace(a,b,20);
y1=subs(f,x,x1);
x2=x1;
y2=subs(g,x,x2);
plot(x1,y1);
hold on
plot(x2,y2);
