clear
clc
syms x
f(x) = input('Enter a function');
I = input('Give limits of the integration');
a=I(1);
b=I(2);
area=int(abs(f(x)),x,a,b)

x1=linspace(a,b,20);
y1=subs(f,x,x1);

plot(x1,y1);



