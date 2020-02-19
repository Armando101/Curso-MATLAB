function J=f_costo(h,y)
%h es el vector regresado de f_hipotesis
%y los targets
    
    m=max(size(h));
    d=h-y;
    J=(1/(2*m))*dot(d,d);
end