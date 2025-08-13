clc
clear
x=linspace(0,pi,50);
y=exp(-x).*sin(8*x);
plot(x,y,'--sb', 'linewidth', 2,'markersize',8, 'markerfacecolor', 'g')