function [xvect,xdif,fx,nit]=newton(x0,nmax,toll,fun,dfun,d2fun)

err=toll+1;
nit=0;
xvect=x0;
x=x0;
fx=eval(fun);
xdif=[];

    while(nit<nmax & err>toll),
        nit=nit+1;
        x=xvect(nit);
        dfx=eval(dfun)
        d2fx=eval(d2fun)

        if(dfx==0),
            err=toll*1.e-10;
            disp('stop for vanishing dfun')
        else,
            xn=x-dfx/d2fx;
            %err=abs(xn-x);
            dfx/d2fx
            x=xn;
            xvect=[xvect;x];
            fx=[fx,eval(fun)];

            err=abs(eval(fun)-fx(nit));

            xdif=[xdif;err];

        end
    end


