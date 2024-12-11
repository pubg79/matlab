%aim:compute circular convoluion using dft/idft
clc;
clear all;
close all;
N=4;
x1=[2 1 2 -1]
subplot(3,1,1)
stem(x1)
xlabel('n')
ylabel('amplitude')
title('first sequence')
x2=[1 2 3 4]
subplot(3,1,2)
stem(x2)
xlabel('n')
ylabel('amplitude')
title('second sequence')
X1=fft(x1,N);
X2=fft(x2,N);
X1X2=X1.*X2;
disp('circular convolution of x1(n) is ')
x3=ifft(X1X2)
subplot(3,1,3)
stem(x3)
xlabel('n')
ylabel('amplitude')
title (' third sequence')


