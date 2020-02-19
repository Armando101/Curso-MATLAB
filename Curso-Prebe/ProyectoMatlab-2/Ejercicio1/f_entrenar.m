function f_entrenar(fp,x,y,theta,alfa)
    tic
    disp(f_optimizacion(fp,x,y,theta,alfa));
    scatter(x,y);
    hold on;
    
    toc
    
end
