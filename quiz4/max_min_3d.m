clc  
clear
syms x y
f(x,y) = x^3+3*x*y^2-15*x^2-15*y^2+72*x;
fx = diff(f,x);
fy = diff(f,y); 
[ax,ay] = solve(fx,fy);
ax=double(ax);
ay=double(ay);
r=diff(fx,x);
s=diff(fx,y);
t=diff(fy,y);
D=r*t-s^2;
fsurf(f);
legstr={'Function Plot'};
for i=1:size(ax)
T1 = D(ax(i),ay(i));
T2 = r(ax(i),ay(i));
T3 = f(ax(i),ay(i));
if(double(T1)==0)
sprintf('Further investigation is required')
legstr = [legstr,'Case of further investigation'];
mkr='ro';
elseif(double(T1)<0)
sprintf('(%f,%f) is a saddle point ',ax(i),ay(i))
legstr = [legstr,'Saddle point'];
mkr='bo';
else
if double (T2 < 0)
sprintf('maxima at point (%f,%f) with value = %f',ax(i),ay(i),T3)
legstr = [legstr,'Mixima Point'];
mkr='g*';
else
sprintf('minima at point (%f,%f) with value = %f',ax(i),ay(i),T3)
legstr = [legstr,'Minima Point'];
mkr='r*';
end
end
hold on
plot3(ax(i),ay(i),T3,mkr,'LineWidth',4)
end
legend(legstr,'Location','best')