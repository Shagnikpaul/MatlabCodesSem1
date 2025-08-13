syms x
f(x) = x^3 + 3*x^2 + 2;


fplot(f(x),[-10,10],'LineWidth',2)
title('Graph')
grid on
xlabel('x')
ylabel('y')

