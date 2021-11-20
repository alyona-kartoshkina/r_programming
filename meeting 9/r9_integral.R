f <- function(x){x^3}

n=40
a = -2
b = 2
t = (b-a)/n

x <- seq(a,b,by=0.01)
y <- f(x)


par(mfrow=c(1,2))
plot(x,y,type='l')

#отобразим Sup и Inf

for (i in 1:n){
  x0 = a+(i-1)*t 
  x1 = a+i*t
  y0 = f(x0)
  y1 = f(x1)
  polygon(x=c(x0,x0,x1,x1),y=c(0,max(y0,y1),max(y0,y1),0),density=20,col='orange')
  polygon(x=c(x0,x0,x1,x1),y=c(0,min(y0,y1),min(y0,y1),0),density=20,col='green')  
}

# отобразим разницу между Sup и Inf

plot(x,y,type='l')

for (i in 1:n){
  x0 = a+(i-1)*t 
  x1 = a+i*t
  y0 = f(x0)
  y1 = f(x1)
  polygon(x=c(x0,x0,x1,x1),y=c(min(y0,y1),max(y0,y1),max(y0,y1),min(y0,y1)),density=20,col='red')
  segments(x0=x0,x1=x0,y0=0,y1=y1)
}
  segments(x0=b,x1=b,y0=0,y1=f(b))
  abline(h = 0)
  

  