syms x
f(x) = sin(x);
f2(x) = cos(x);

fplot(f(x),[-3*pi, 3*pi])
hold on 
fplot(f2(x),[-3*pi,3*pi])