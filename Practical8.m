clc;
close all;

Fs=1000;%sampling frequency

t= linspace(0,1,Fs);
x=cos(2*pi*100*t)+0.5*randn(size(t));

plot(t,x);

Wp=150/1000;
Ws = 155/1000;
%[n,Wn] = buttord (Wp,Ws,Rp,Rs)
[n,Wn] = buttord (Wp,Ws,3,60);
n = 5;
[b,a] = butter(n,Wn);

fvtool(b,a, 'Fs',Fs);
title('n=5 Butterworth Lowpass Filter');

y=filter (b,a,x);

subplot(2,1,1);
plot(t(1:100),x(1:100));
xlabel("Time in sec");
title('input signal x (1:100)');
hold on;
grid on;

subplot(2,1,2);
plot(t(1:100),y(1:100));
xlabel("Time in sec");
title('Low pass filter output');
grid on;