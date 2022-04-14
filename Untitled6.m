syms t x y

x = @(t) t*t;
y = @(t) 2*t;
f = @(x,y) plot(x(t),y(t),'r*');

fanimator(f)
axis equal