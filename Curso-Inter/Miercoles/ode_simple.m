function ode_simple
y0=1;
[x,y]=ode45(@funcionDerivada,[0,1],y0)
plot(x,y,'b-');
end
function dydx=funcionDerivada(x,y)
dydx=x*y;
end