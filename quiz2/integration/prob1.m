clear
clc
syms x

f=input('Enter the upper curve ');
g=input('Enter the lower curve ');
L=input('Enter the range for integration ');
a=L(1); b=L(2);
Area=int(f-g,x,a,b); disp(['Area bounded by the curves f(x) and g(x) is: ',char(abs(Area))]);


fplot(f,L);
hold on; 
fplot(g,L);
xlabel('x-axis');
ylabel('y-axis');
grid on;