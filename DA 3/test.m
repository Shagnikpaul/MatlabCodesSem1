clc
clear
syms x y
 
x1 = linspace(-5, 5, 100);  
y1 = linspace(-5, 5, 100);  


[X, Y] = meshgrid(x1, y1);


Z = exp(X.^2 + Y.^2) - sin(X.*Y);


figure;
surf(X, Y, Z);


title('f(x, y) = exp(x^2 + y^2) - sin(xy)');
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');

shading interp;