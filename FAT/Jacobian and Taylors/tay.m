clc
clear

syms x y

F=sqrt(x*y);
Q=taylor(F,[x,y],[1,1],'order',1)
fsurf(F);
hold on
fsurf(Q)
hold off
