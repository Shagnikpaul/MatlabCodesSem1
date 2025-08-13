clc
clear

syms x y

f(x,y)=x^2+y^2-x^4;

p=diff(f,x);
q=diff(f,y);

[ax,ay] = solve(p,q);
ax=double(ax);
ay=double(ay);
r=diff(p,x);
s=diff(p,y);
t=diff(q,y);
D=r*t-s^2;
figure
fsurf(f);

ls={'Function plot'};
for i=1:size(ax)
    t1=D(ax(i),ay(i));
    t2=r(ax(i),ay(i));
    t3=f(ax(i),ay(i));

    if(double(t1)==0)
        sprintf('(%f,%f) requires further investigation',ax(i),ax(i))
        ls=[ls,{'Further investigation'}];
        mkr='bo';
    elseif(double(t1)<0)
        sprintf('(%f,%f) is a saddle point',ax(i),ax(i))
        ls=[ls,{'Saddle point'}];
        mkr='b*';
    else
        if(double(t2<0))
            sprintf('(%f,%f) is a local maxima with value = %f',ax(i),ax(i),t3)
            ls=[ls,{'Maxima point'}];
            mkr='go';
        else
            sprintf('(%f,%f) is a local minima with value = %f',ax(i),ax(i),t3)
            ls=[ls,{'Minima point'}];
            mkr='ro';
        end
    end
    hold on
    plot3(ax(i),ay(i),t3,mkr,LineWidth=4)
end
legend(ls,'Location','best')


