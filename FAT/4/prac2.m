clc
clear
syms x
f=x^0.5
g=x^(1/3)
I=[0,1];
a=I(1);
b=I(2);
area=int(g-f,x,a,b)
x1=linspace(a,b,100);
y1=subs(f,x,x1);
x2=x1;
y2=subs(g,x,x2);
plot(x1,y1);
hold on
plot(x2,y2);
