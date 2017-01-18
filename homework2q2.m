clear all;
fc = 50;
A = 1;
t=-1:0.001:1;

Sm = sinc(t) + sinc(t).*sinc(t); %message signal
subplot(4,1,1); 
plot(t,Sm);

Sc = A*cos(2*pi*fc*t); %carrier signal
subplot(4,1,2);
plot(t,Sc);

Su = A*(sinc(t) + sinc(t).*sinc(t)).*cos(2*pi*fc*t); %modulated signal
subplot(4,1,3);
plot(t,Su);

Sf = fft(Su); %frequency domain of modulated signal
subplot(4,1,4);
plot(abs(Sf));