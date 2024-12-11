clc;
clear all;
close all;

x = input('Enter the first sequence (e.g., [1 1 2 2]) x(n) = '); 
n = 0:(length(x)-1);  


subplot(3,1,1);
stem(n, x, 'filled');
xlabel('n');
ylabel('Amplitude');
title('first sequence x(n)');

y = input('Enter the second sequence (e.g., [1 2 1 2]) y(n) = '); 
subplot(3,1,2);
stem(n, y, 'filled');
xlabel('n');
ylabel('Amplitude');
title('second sequence y(n)');

l = -(length(x)-1):(length(x)-1); 
z = xcorr(x, y);
subplot(3,1,3);
stem(l, z, 'filled');
xlabel('Lag');
ylabel('Amplitude');
title('Cross-correlation between x(n) and y(n)');
