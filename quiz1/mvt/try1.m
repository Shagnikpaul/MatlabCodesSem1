clear
clc

syms x y

f(x) = (x+2)^3 * (x-3)^4;


I = [-2,3];

a = I(1);
b = I(2);


dx = diff(f,x);

m = (f(b) - f(a))/(b-a);

c = solve(dx==m,x);

c = c(a<=c&c<=b);

disp('Vals of c I got ')
disp(double(c));

T = f(c) + m*(x-c);

disp('The Tangent Lines at c are');

disp(vpa(y==T,4));

figure 
grid on
fplot(f,I);
grid on
hold on
fplot(T,I,'r');
hold on
plot(c,double(f(c)),'ko');
plot(I,double(f(I)),'m');




