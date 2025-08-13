clc
clear

syms x y
f = x*y^2 - x^3;

ezsurf(f);

colormap turbo