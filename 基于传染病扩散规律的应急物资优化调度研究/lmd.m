
x=[200 500 1000];
y = x+19.5*x.^0.5277;
xs = x+0.05.*x;
ys = xs+19.5*x.^0.5277;
d = ys-y;
y = y'
ys = ys'
d=d'
d=d./x'
xs=xs'