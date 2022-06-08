function f_ref = NWInterpolacionLineal(x,name)
    x0=0;
    switch name
        case 'seno'
            f_x0=sin(x0);
            x_ref=0:0.01:6;
            f_ref=sin(x_ref);
            f1_ver = sin(x);
        case 'coseno'
            f_x0=cos(x0);
            x_ref=0:0.01:6;
            f_ref=cos(x_ref);
            f1_ver = cos(x);
        case 'exponencial'
            f_x0=exp(x0);
            x_ref=0:0.01:6;
            f_ref=exp(x_ref);
            f1_ver = exp(x);
    end
            
    

    plot(x_ref,f_ref,'r','LineWidth',2);
    hold on;

    for i=1:6
        switch name
            case 'seno'
                f_x1=sin(i);
            case 'coseno'
                f_x1=cos(i);
            case 'exponencial'
                f_x1=exp(i);
        end
        f1_x=f_x0+((f_x1-f_x0)/(i-x0))*(x-x0);


        X=[x0 i];
        Y=[f_x0 f_x1];
        if i == x
            line(X,Y,'Color','g' ,'LineWidth',2)
            plot(i,f_x1,'bo','LineWidth',2);
        end
        
        %plot(i,f_x1,'b+','LineWidth',2);
        %plot(x,f1_x,'bo','LineWidth',2);
        %plot(x,f1_ver,'ro','LineWidth',2)
    end
end