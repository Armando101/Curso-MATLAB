function dJ=f_gradiente(h,fp,x,y)
  %h es el vector regresado de f_hipotesis
%y los targets
   m=max(size(x));
   n=max(size(h));
   %disp(n + "--- "+m);
    %disp(sum(fp(1)));
    contador=1;
    for i=x
      %  disp(i);
        r(contador,:)=fp(i);
        contador=contador+1;
        %disp("r es "+r);
    end
    %disp(r);
    d=h-y;
    %disp(d);
    %disp(n+"  n");
    %disp("d "+d);
    %disp("r "+r)
    k=size(r);
    %disp(k);
    k=k(2);
    for j=1:k
        
        dJ(j)=(1/(m))*dot(d,r(:,j));
      %  disp("ite "+j);
     %   disp(r(:,j)+"---s");
    end
end