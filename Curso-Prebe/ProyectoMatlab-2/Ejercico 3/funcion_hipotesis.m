function [h]=funcion_hipotesis(teta,m,x)
    teta=transpose(teta);
    for i=1:m
        h(i)=dot(teta,x(i,:));
    end
end