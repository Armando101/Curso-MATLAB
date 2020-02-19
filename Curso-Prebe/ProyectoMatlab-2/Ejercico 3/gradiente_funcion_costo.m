function [costo]=gradiente_funcion_costo(m,h,y)
    costo=0;
    for i=1:m
        costo=costo+(-1/m)*(y(i)*log(h(i))+(1-y(i))*log(1-h(i)));
    end
end