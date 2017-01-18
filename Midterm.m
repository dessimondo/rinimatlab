clear all;
A = 1;
fc = 1000;
fm = 10;
ts = 0.00001;
B = 2*fm;
f= -30:ts:30;
t = -5:ts:5;


Mf = rectpuls(f,2*B)-(1/3)*rectpuls(f,B);
subplot(4,1,1),plot(f,Mf)
title('Message Spectra')
xlabel('f');
ylabel('M(f)');

mt = (2*B*sinc(2*B*t)) - ((B/3)*sinc(B*t));
subplot(4,1,2),plot(t,mt);
axis([-5,5,-inf,inf]);
title('Message Signal')
xlabel('t');
ylabel('m(t)');

mhat_t = hilbert(mt);
subplot(4,1,3),plot(t,abs(mhat_t));
axis([-5,5,-inf,inf]);
title('Hilbert Transform of Message Signal')
xlabel('t');
ylabel('m\^(t)');

ut = A*mt.*cos(2*pi*fc*t);
subplot(4,1,4),plot(t,ut);
axis([-5,5,-inf,inf]);
title('Modulated Signal')
xlabel('t');
ylabel('u(t)');

