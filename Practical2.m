%expt 2 : convolution
clc;
clear all;
close all;


x = input('Enter the first sequence (ex. [1 2 3 1]) x(n) = ');


subplot(3,1,1)
stem(x)
xlabel('n')
ylabel('Amplitude')
title('First Sequence x(n)')


h = input('Enter the second sequence (ex. [1 2 3 1]) h(n) = ');


subplot(3,1,2)
stem(h)
xlabel('n')
ylabel('Amplitude')
title('Second Sequence h(n)')

z = conv(x, h);


subplot(3,1,3)
stem(z)
xlabel('n')
ylabel('Amplitude')
title('Linear Convolution y(n) using MATLAB function')
