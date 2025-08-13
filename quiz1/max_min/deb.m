clc
clear

syms x 

f(x) = x + sin(2*x);
f1(x) = -f(x);

I = [-5,5];


a=I(1);
b=I(2);

t = linspace(a,b,2000);
g = double(f(t));
h = double(f1(t));

[lmin_f,m_loc] = findpeaks(h);
[lmax_f,M_loc] = findpeaks(g);

M_loc = round(t(M_loc),4);
m_loc = round(t(m_loc),4);
lmin_f = - lmin_f;

disp('Local Maximum values are')
disp(lmax_f)
disp('at x = ')
disp(M_loc)
disp('Local Minimum values are')
disp(lmin_f)
disp('at x = ')
disp(m_loc)

fplot(f,I,'r');
grid on
hold on
plot(M_loc,lmax_f,'r*');
hold on
plot(m_loc,lmin_f,'c*');
hold off