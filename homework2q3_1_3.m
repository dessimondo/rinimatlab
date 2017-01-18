clear all;
fc = 250;
ts = 0.0001;
t=0:ts:0.4;

figure(2);

Sm = sinc(100*t); %message signal
subplot(5,1,1); 
plot(t,Sm);
title('Message Signal')
xlabel('t');
ylabel('m(t)');

Sc = cos(2*pi*fc*t); %carrier signal
subplot(5,1,2);
plot(t,Sc);
title('Carrier Signal')
xlabel('t');
ylabel('c(t)');

Su = Sm.*cos(2*pi*fc*t); %modulated signal
subplot(5,1,3);
stem(t,Su);
title('Modulated Signal')
xlabel('t');
ylabel('u(t)');

Sfm = fft(Sm); %spectra of message signal
Sfm = fftshift(Sfm);
subplot(5,1,4);
plot(abs(Sfm));
title('Spectra of Message Signal')
xlabel('f');
ylabel('M(f)');
axis([1500, 2500, 0, 100]);

Sfu = fft(Su); %spectra of modulated signal
Sfu = fftshift(Sfu);
subplot(5,1,5);
plot(abs(Sfu));
title('Spectra of Modulated Signal')
xlabel('f');
ylabel('U(f)');
axis([1500, 2500, 0, 50]);