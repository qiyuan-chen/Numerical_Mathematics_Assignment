dfun='-2*x-2*sin(4*x)'
fun='cos(2*x)*cos(2*x)-x*x'

x0=1.48
nmax=30
toll=1.e-10

[xvect,xdif,fx,nit]=newton(x0,nmax,toll,fun,dfun)

[xvect,xdif,fx,nit]=steffensen(x0,nmax,toll,fun)



fun='exp(-1*x)-sin(x)'

x0=1
nmax=30
toll=1.e-16

[xvect,xdif,fx,nit]=steffensen(x0,nmax,toll,fun)

log(xdif(4)/xdif(3))/log(xdif(3)/xdif(2))
