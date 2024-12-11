clc;
close all;
clear all;
x=input('enter the sequence(ex.[1 2 3 4] x(n)=');
disp('Dft for x(n)is,');
k=fft(x)

n=0:length(x)-1;
subplot(3,1,1);
stem(n,x);
title('input sequence');
subplot(3,1,2);
stem(n,k)
title('DFT1')
disp('IDFT for is')
xr=ifft(k)
subplot(3,1,3)
stem(n,abs(xr));
title('IDFT of k is ');
