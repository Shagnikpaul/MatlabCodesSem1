clc
clear

syms x


f(x) = x + sin(2*x);
f2(x) = -f;
I = [-5,5];

a = I(1);
b = I(2);


t = linspace(a,b,2000);


g = double(f(t));
h = double(f2(t));


[l_maxs, M_locs] = findpeaks(g);
[l_mins, m_locs] = findpeaks(h);


M_locs = round(t(M_locs),4);
m_locs = round(t(m_locs),4);
l_mins = - l_mins;


disp('Local max at x = ')
disp(M_locs)
disp('with values = ')
disp(l_maxs)

disp('Local min at x = ')
disp(m_locs)
disp('with values = ')
disp(l_mins)

fplot(f,I,'r');
hold on
grid on
plot(M_locs,l_maxs,'c*');
hold on
plot(m_locs,l_mins,'r*');