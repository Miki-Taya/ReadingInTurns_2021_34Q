syms t 
%{
これはできない。なんで？
x = @(t) t*t;
y = @(t) 2*t;
f = @(t) plot(x,y,'r*');
%}
f = @(t) plot(t*t,2*t,'r*');
fanimator(f)
axis equal