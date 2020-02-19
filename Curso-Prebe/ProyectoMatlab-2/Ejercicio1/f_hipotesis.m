function h=f_hipotesis(fp,x,theta)
    %fp es el vector del preprocesamiento
    
    %disp(sum(fp(1)));
    contador=1;
    for i=x
      %  disp(i);
        %disp(contador);
        %disp(i);
        r(contador,:)=fp(i);
        contador=contador+1;
       % disp("r es "+r);
    end
    
    h=(r*theta')';
    
end