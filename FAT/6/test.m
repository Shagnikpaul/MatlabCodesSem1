clc
clear
syms x y
f(x,y) = input('Enter a function f(x,y)');

% partial derivative
p=diff(f,x);
q=diff(f,y);


% get the points where p=q=0
[ax,ay] = solve(p,q);
ax=double(ax);
ay=double(ay);

% find r (dx2) , s (dx,dy) , t(dy2) 
r=diff(p,x);
s=diff(p,y);
t=diff(q,y);
D=r*t - s^2;

% plot f
figure
fsurf(f);
lstr = {'Function Plot'};

% start the loop to check all points
for i=1:size(ax)
    T1 = D(ax(i),ay(i));
    T2 = r(ax(i),ay(i));
    T3 = f(ax(i),ay(i));
    if(double(T1)==0)
        sprintf('(%f,%f) requires further investigation... ',ax(i),ay(i))
        lstr = [lstr, {'Case of further investigation'}];
        mkr = 'ro';
    elseif(double(T1)<0)
        sprintf('(%f,%f) is a saddle point ',ax(i),ay(i))
        lstr = [lstr, {'Saddle point'}];
        mkr = 'bv';
    else
    if(double(T2) < 0)
        sprintf('(%f,%f) is a point of local maxima',ax(i),ay(i))
        lstr = [lstr, {'Local maxima'}];
        mkr = 'go';
    else
        sprintf('(%f,%f) is a point of local minima',ax(i),ay(i))
        lstr = [lstr, {'Local minima'}];
        mkr = 'r*';
    end
    end
    hold on
    plot3(ax(i),ay(i),T3,mkr,'Linewidth',4);
end
legend(lstr,'Location','best')
        

