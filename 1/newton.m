function [xvect,xdif,fx,nit]=newton(x0,nmax,toll,fun,dfun)

err=toll+1;
nit=0;
xvect=x0;
x=x0;
fx=eval(fun);
xdif=[];

    while(nit<nmax & err>toll),
        nit=nit+1;
        x=xvect(nit);
        dfx=eval(dfun);

        if(dfx==0),
            err=toll*1.e-10;
            disp('stop for vanishing dfun')
        else,
            xn=x-fx(nit)/dfx;
            err=abs(xn-x);
            xdif=[xdif;err];
            x=xn;
            xvect=[xvect;x];
            fx=[fx,eval(fun)];
        end
    end


