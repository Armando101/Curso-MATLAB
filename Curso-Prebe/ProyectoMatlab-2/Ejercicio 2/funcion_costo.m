function [minimo]=funcion_costo(m,h,y)
    for i=1:m
        if y==1
            minimo(i)=-log(h(i));
        else
            minimo(i)=-log(1-(h(i)));
        end
    end
end