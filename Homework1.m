clear all;
t=-2:0.01:2;
y1=rectpuls(t,2);
subplot(6,1,1),plot(t,y1);
axis([-inf, inf, -0.2, 1.2]);
x=0.5;
n=1;
for j= 1:4
    z=j*5;
    while n<z
    y=sinc(n/2)*exp(1i*n*pi*0.5*t);
    x=x+y;
    n=n+1;
    end
subplot(6,1,j+1),plot(t,x);
axis([-inf, inf, -0.2, 1.2]);
end
while n<74
    y=sinc(n/2)*exp(1i*n*pi*0.5*t);
    x=x+y;
    n=n+1;
end
subplot(6,1,6),plot(t,x);
axis([-inf, inf, -0.2, 1.2]);

