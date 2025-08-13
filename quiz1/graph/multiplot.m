clc
clear

syms x

f(x) = x * 2;
f2(x) = x^3;

fplot(f,[2,3]);
hold on
fplot(f2,[2,3]);
  