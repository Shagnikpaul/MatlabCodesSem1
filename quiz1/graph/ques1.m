clc
clear

syms t



x = t;
y = t^2;
z = t^3;
xlabel('x')
ylabel('y')
zlabel('z')
title('bruh')

ezplot3(x,y,z,[0,100]);