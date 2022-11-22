dfun='-x*exp(-1/2*x*x)+sin(2*x)/2';
d2fun='-exp(-1/2*x*x)+x*x*exp(-1/2*x*x)+cos(2*x)';
fun='exp(-1/2*x*x)-cos(2*x)/4';

x0=1
nmax=500
toll=1.e-6

[xvect,xdif,fx,nit]=newton(x0,nmax,toll,fun,dfun,d2fun)


log(xdif(4)/xdif(3))/log(xdif(3)/xdif(2))
%[xvect,xdif,fx,nit]=steffensen(x0,nmax,toll,fun)

[x,y]=fminsearch(fun,1)



x=6
eval(fun)