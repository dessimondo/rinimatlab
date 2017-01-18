clear all;
fc = 250;
ts = 0.0001;
t=0:ts:0.1;

figure(5);

Sm = sinc(100*t); %message signal
subplot(5,1,1); 
plot(t,Sm);
title('Message Signal')
xlabel('t');
ylabel('m(t)');

Shm = hilbert(Sm); %Hilbert transform message signal
subplot(5,1,2);
plot(t,imag(Shm));
title('Hilbert Transform Message Signal')
xlabel('t');
ylabel('m_h(t)'); 

Suu = Sm.*cos(2*pi*fc*t); %message multiply by carrier signal

Slu = Shm.*sin(2*pi*fc*t); %hilbert message multiply by hilbert carrier signal

Su = Suu+Slu;
subplot(5,1,3);
plot(t,Su);
title('Lower Single Sideband Signal')
xlabel('t');
ylabel('u(t)');

Sfm = fft(Sm); %spectra of message signal
Sfm = fftshift(Sfm);
subplot(5,1,4);
plot(abs(Sfm));
title('Spectra of Message Signal')
xlabel('f');
ylabel('M(f)');
axis([200, 800, 0, 100]);

Sfu = fft(Su); %spectra of modulated signal
Sfu = fftshift(Sfu);
subplot(5,1,5);
plot(abs(Sfu));
title('Spectra of Modulated Signal')
xlabel('f');
ylabel('U(f)');
axis([400, 600, 0, 100]);