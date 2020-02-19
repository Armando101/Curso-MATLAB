function F = sistemaNoLineal(x)
if(length(x)==2)
    F(1)=exp(-exp(-x(1)+x(2)))-x(2)*(1+x(1)^2);
    F(2)=x(1)*cos(x(2))+x(2)*sin(x(1))-0.5;
else
    error(message('MATLAB:no sirve'));
end
end