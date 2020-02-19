function X=preprocesamiento(x)
   a=func2str(x);
   tam=size(a');
   tam=tam(1);
   nuevo="";
   for i=6:tam-1
       nuevo=nuevo+a(i);
   end
   str="@(x)[1," + nuevo+"]";
   X=str2func(str);
   disp(X);
end