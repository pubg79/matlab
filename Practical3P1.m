% Auto correlation
clc;
clear all;
close all;

x = input('Enter the sequence (e.g., [1 2 3 4]) x(n) = '); 
n = 0:(length(x)-1);  

% Plot the original sequence
subplot(2,1,1);
stem(n, x, 'filled');  % Corrected 'fil' to 'filled'
xlabel('n');
ylabel('Amplitude');
title('Original Sequence');

% Compute and plot the autocorrelation
z = xcorr(x);
l = -(length(x)-1):(length(x)-1); 

subplot(2,1,2);
stem(l, z, 'filled');  % Corrected 'fill' to 'filled'
xlabel('Lag');  % Changed 'time' to 'Lag' for better accuracy
ylabel('Amplitude');
title('Autocorrelation');
disp('Values of n:');
disp(n);
disp('Values of z:');
disp(z);
disp('Values of l:');
disp(l);
