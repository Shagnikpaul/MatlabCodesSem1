clc
clear
t=linspace(0,10,100);
s=t.^2/2;
plot(t,s);
xlabel('Time (sec)');
ylabel('distance (m)');
title('Distance as a function of t');
legend('distance')