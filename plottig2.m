x = linspace(-2,4,20);
y = 2*x.^3 - 26*x+10;
dy = 9*x.^2-26;
ddy = 18*x;

plot(x,y)
plot(x,dy)
plot(x,ddy)