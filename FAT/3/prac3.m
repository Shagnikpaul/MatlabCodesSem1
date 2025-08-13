clear
clc
syms x
f(x)=x+sin(2*x);
I=[-5,5];
a=I(1);
b=I(2);
f1(x)=-f(x);
t=linspace(a,b,10000);
g=double(f(t));
h=double(f1(t));
[lmax_f, loc] = findpeaks(g);
lmax_x = round(t(loc),4);
[lmin_f, loc] = findpeaks(h);
lmin_x = round(t(loc),4);
disp('Local Maxima at')
disp(lmax_x)
disp('with values')
disp(lmax_f)
disp('Local Minimas at')
disp(lmin_x)
disp('with values')
disp(lmin_f)


fplot(f,I)
hold on
plot(lmax_x, f(lmax_x),'go')
hold on
plot(lmin_x,f(lmin_x),'r*')