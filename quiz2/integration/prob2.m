clear 
clc

syms y 
f=input('Enter the upper curve ');
g=input('Enter the lower curve ');
L=input('Enter the interval for integration');


Area  = int(f-g,y,L);
disp(['Area bounded by the curves is ',char(Area)]);
