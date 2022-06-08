function f_est = NWInterpolacionCuadratica(x,name)
    x0=1;
    x1=4;
    x2=6;
    switch name
        case 'seno'
            f_x0=sin(x0);
            f_x1=sin(x1);
            f_x2=sin(x2);
        case 'coseno'
            f_x0=cos(x0);
            f_x1=cos(x1);
            f_x2=cos(x2);
        case 'exponencial'
            f_x0=exp(x0);
            f_x1=exp(x1);
            f_x2=exp(x2);
    end

    b0=f_x0;
    f_x1_x0=(f_x1-f_x0)/(x1-x0);
    b1=f_x1_x0;
    f_x2_x1=(f_x2-f_x1)/(x2-x1);
    f_x2_x1_x0=(f_x2_x1-f_x1_x0)/(x2-x0);
    b2=f_x2_x1_x0;
    f2_x=b0+(b1.*(x-x0))+(b2*(x-x0).*(x-x1));

    a0 = b0 - b1*x0 + b2*x0*x1;
    a1 = b1 - b2*x0 - b2*x1;
    a2 = b2;

    x_ref=0:0.01:6;

    f_est=a0+a1*x_ref+a2*x_ref.^2;
    switch name
        case 'seno'
            f_ref=sin(x_ref);
        case 'coseno'
            f_ref=cos(x_ref);
        case 'exponencial'
            f_ref=exp(x_ref);
    end
    plot(x_ref,f_ref,'r','LineWidth',2);
    hold on;
% 
%     plot(x0,f_x0,'bo','LineWidth',2);
%     plot(x1,f_x1,'bo','LineWidth',2);
%     plot(x2,f_x2,'bo','LineWidth',2);
    plot(x,f2_x,'bo','LineWidth',2);
    switch name
        case 'seno'
            plot(x,sin(x),'ro','LineWidth',2);
        case 'coseno'
            plot(x,cos(x),'ro','LineWidth',2);
        case 'exponencial'
            plot(x,exp(x),'ro','LineWidth',2);
    end
    plot(x_ref,f_est,'g','LineWidth',2);
end