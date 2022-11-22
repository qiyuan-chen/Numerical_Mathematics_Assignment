function [xvect,xdif,fx,nit]=steffensen(x0,nmax,toll,fun)

err=toll+1;
nit=1;
xvect=x0;
x=x0;
fx=eval(fun);

x=x0+fx
fx_f=eval(fun)
xdif=[];

    while(nit<nmax & err>toll & abs(fx_f(nit)-fx(nit))>toll),
        
        x=xvect(nit);

        xn=x-fx(nit)^2/(fx_f(nit)-fx(nit));
        err=abs(xn-x);
        xdif=[xdif;err];
        x=xn;
        xvect=[xvect;x];
        fx=[fx,eval(fun)];

        x=xn+eval(fun)
        fx_f=[fx_f,eval(fun)]
        nit=nit+1;
        end
    end


