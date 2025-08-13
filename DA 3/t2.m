clear 
clc 
x=-5:.05:5; 
y=-5:.05:5;
[x,y]=meshgrid(x,y); 
k = x.^2 + y.^2;
z=exp(k) - sin(x.*y);

surf(x,y,z); 

% limiting the values of z-axis to smaller range
axis([-5, 5, -5, 5, min(z(:)), max(7)]);

xlabel('x-axis')
ylabel('y-axis')
grid on




