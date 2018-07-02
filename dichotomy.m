function dichotomy
x0=0.;
x1=2.;
xres=(x0+x1)/2;
eps=0.01;
disp(xres);
delta = x1-x0;
while delta > eps
    y0=x0+(x1-x0)/4;
    y1=x1-(x1-x0)/4;
    if f(y0)<f(xres)
        x1=xres;
        xres=y0;
    elseif f(y1)<f(xres)
        x0=xres;
        xres=y1;
    else
        x0=y0;
        x1=y1;
    end
    delta=x1-x0;
end

disp(f(xres));
end

function y1=f(x)
y1=x*sin(x*x)+1;
end
