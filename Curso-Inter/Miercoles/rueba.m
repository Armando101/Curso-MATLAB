x=[0.9 1.5 3 4 6 8 9.5];
y=[0.9 1.5 2.5 5.1 4.5 4.9 6.3];
%por una recta
p1=polyfit(x,y,1);
figure('Name','Minimos cuadrados')
subplot(2,2,1);
plot(x,y,'o',[0,10],[polyval(p1,0),polyval(p1,10)]);
title('Ajuste por una recta');
%por una parabola
p2=polyfit(x,y,2);
xp=linspace(0,10);
subplot(2,2,2);
plot(x,y,'o',xp,polyval(p2,xp));
title('Ajuste por una parabola');

p3=polyfit(x,y,3);
subplot(2,2,3);
plot(x,y,'o',xp,polyval(p3,xp));
title('Ajuste grado 3')



p4=polyfit(x,y,6);
subplot(2,2,4);
plot(x,y,'o',xp,polyval(p4,xp));
title('Ajuste grado 6')
axis([1,6,-10,10])