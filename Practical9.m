%Aim:Designing of digital FIR filter using window.
clc;
close all;

Fs=1000;
t= linspace(0,1,Fs);

x=cos(2*pi*100*t)+0.5*randn(size(t));

plot(t,x);
xlabel('Time in sec');
title('input signal x');

Fc=150;

wn=(2/Fs)*Fc;

b=fir1(20,wn,'low',kaiser (21,3));
fvtool(b,1,'Fs',Fs);

y=filter(b,1,x);

subplot(2,1,1);
plot(t(1:100),x(1:100));
xlabel('Time in sec');
title('input signal x (1:100)');
hold on;
grid on;

subplot(2,1,2);
plot(t(1:100),y(1:100));
xlabel('Time in sec');
title('Low pass filter output');
grid on;