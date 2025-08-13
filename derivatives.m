syms x 
f(x) = (x^2 + 4*x + 3)/x^0.5

df_dx = diff(f(x),x)
df2_dx = diff(f(x), x,2)

