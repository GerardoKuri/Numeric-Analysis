function f_est = NWInterpolacionCubica(x,name)

    x0=1;
    x1=3;
    x2=5;
    x3=6;
    switch name 
        case 'seno'
            f_x0=sin(x0);
            f_x1=sin(x1);
            f_x2=sin(x2);
            f_x3=sin(x3);
        case 'coseno'
            f_x0=cos(x0);
            f_x1=cos(x1);
            f_x2=cos(x2);
            f_x3=cos(x3);
        case 'exponencial'
            f_x0=exp(x0);
            f_x1=exp(x1);
            f_x2=exp(x2);
            f_x3=exp(x3);
    end
    

    
    b0=f_x0;
    f_x1_x0=(f_x1-f_x0)/(x1-x0);
    b1=f_x1_x0; 
    f_x2_x1=(f_x2-f_x1)/(x2-x1);
    f_x2_x1_x0=(f_x2_x1-f_x1_x0)/(x2-x0);
    b2=f_x2_x1_x0; 
    f_x3_x2=(f_x3-f_x2)/(x3-x2);
    f_x2_x1_x0= (f_x2_x1-f_x1_x0)/(x2-x0);
    f_x3_x2_x1 = (f_x3_x2-f_x2_x1)/(x3-x1);
    f_x3_x2_x1_x0=(f_x3_x2_x1-f_x2_x1_x0)/(x3-x0);
    b3=f_x3_x2_x1_x0; 

    f3_x=b0+(b1.*(x-x0))+(b2.*(x-x0).*(x-x1))+(b3.*(x-x0).*(x-x1).*(x-x2));

    a0 = b0 - b1*x0 + b2*x0*x1 - b3*x0*x1*x2;
    a1 = b1 - b2*x0 - b2*x1 + b3*x0*x1 + b3*x1*x2 + b3*x0*x2;
    a2 = b2 - b3*x1 - b3*x0 - b3*x2;
    a3 = b3;

    x_ref=0:0.01:6;

    f_est=a0+a1*x_ref+a2*x_ref.^2 + a3*x_ref.^3;
    switch name
        case 'seno'
            plot(x,sin(x),'ro','LineWidth',2);
            f_ref=sin(x_ref);
            plot(x_ref,f_ref,'r','LineWidth',2);
            hold on;
        case 'coseno'
            plot(x,cos(x),'ro','LineWidth',2);
            f_ref=cos(x_ref);
            plot(x_ref,f_ref,'r','LineWidth',2);
            hold on;
        case 'exponencial'
            plot(x,exp(x),'ro','LineWidth',2);
            f_ref=exp(x_ref);
            plot(x_ref,f_ref,'r','LineWidth',2);
            hold on;
    end
%     plot(x0,f_x0,'bo','LineWidth',2);
%     plot(x1,f_x1,'bo','LineWidth',2);
%     plot(x2,f_x2,'bo','LineWidth',2);
%     plot(x3,f_x3,'bo','LineWidth',2);
    plot(x,f3_x,'co','LineWidth',2);
    plot(x_ref,f_est,'g','LineWidth',2);
    
    
end