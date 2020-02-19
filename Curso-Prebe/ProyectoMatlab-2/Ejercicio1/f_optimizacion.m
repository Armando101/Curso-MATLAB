function chida=f_optimizacion(fp,x,y,theta,alfa)
    h=f_hipotesis(fp,x,theta);%fp es el de las funciones ya con 1, x's, thetas
    m=max(size(x));
    n=max(size(theta));
    ite=0;
    theta0 = ones(1,n)*0;
    h0=f_hipotesis(fp,x,theta0);
    %disp(" ee"+abs(f_costo(h0,y)-f_costo(h,y)));
    while(abs(f_costo(h0,y)-f_costo(h,y))>0.000000001 )
        %disp("costo: "+abs(f_costo(h0,y)-f_costo(h,y)));
         
        theta0=theta;
        theta=theta0 - (alfa*f_gradiente(h,fp,x,y));
        h0=h;
        h=f_hipotesis(fp,x,theta);
        ite=ite+1;
        
        
        
    end    
    disp("El costo es -->"+f_costo(h,y));
    chida=theta;
end