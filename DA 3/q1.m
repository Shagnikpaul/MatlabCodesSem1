clear clc
[x,y]=meshgrid(-5:.2:5); 
f=exp(x.^2 + y.^2) - sin(x.^1 * y.^1); 
surf(x,y,f)