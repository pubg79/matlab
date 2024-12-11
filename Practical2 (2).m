%Program for ROC
clc;
clear all; 
close all;
num = [3 2 5 6 4 1 6 2];
den=[-1 2 1 8 -1 5 3 3];
[z,p,k] = tf2zp(num,den);
disp('Zeros are at'); disp(z);
disp('poles are at'); disp(p);
disp('gain constant'); disp(k);
sos=zp2sos(z,p,k);
disp('Second order sections'); disp(real(sos));
zplane(num,den);
title('Pole-Zero Plot');
grid;