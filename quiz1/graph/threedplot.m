clc
clear

t = linspace(0,2*pi,500);

x = cos(t);
y = sin(t);
z = sin(5*t);

plot3(x,y,z);