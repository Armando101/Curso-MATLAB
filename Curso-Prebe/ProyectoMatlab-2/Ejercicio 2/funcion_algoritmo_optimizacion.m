function [teta]=funcion_algoritmo_optimizacion(teta,m,h,y,x)
    temp=0;    
    for i=1:m
        for j=1:3
            while temp(j)~=teta(j);
                for n=1:3
                    temp(n) = teta(n)-1*(h(j)-y(j))*x(n);
                end
                for j=1:3
                    teta(n) = temp(n);
                end
            end
        end
    end
end