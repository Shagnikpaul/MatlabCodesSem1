clear
clc
syms x
f(x)=sin(abs(x));
f1(x)=-f(x);
I=[-2*pi,2*pi];
a=I(1);
b=I(2);
t=linspace(a,b,10000);
g=double(f(t));
[lmax_f, loc] = findpeaks(g);
lmax_x = round(t(loc),4);
h=double(f1(t));
[lmin_f, loc] = findpeaks(h);
lmin_x = round(t(loc),4);
disp('Local maximas occur at')
disp(lmax_x)
disp('with values :')
disp(lmax_f)
disp('Local minimas occur at')
disp(lmin_x)
disp('with values :')
disp(lmin_f)
fplot(f,I);
hold on;
plot(lmax_x,f(lmax_x),'or');
hold on
plot(lmin_x,f(lmin_x),'g*')


