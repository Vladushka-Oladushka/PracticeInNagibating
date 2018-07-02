function dichotomy
x0=0;
x1=2;
xres=(x0+x1)/2;
eps=0.01;
disp(xres);
end

function y1=f(x)
y1=x*sin(x*x)+1;
end
