% 1. UNIT IMPULSE
n = -5:1:5; 
x = [zeros(1,5), ones(1,1), zeros(1,5)]; 
figure(1);
subplot(3,2,1)
stem(n, x)
xlabel('n')
ylabel('Amplitude')
title('Unit Impulse')

% 2. UNIT STEP SIGNAL
n = -5:1:5;
x = [zeros(1,5), ones(1,6)]; 
figure(1);
subplot(3,2,2)
stem(n, x)
xlabel('n')
ylabel('Amplitude')
title('Unit Step')

% 3. RAMP SIGNAL
n = 0:1:9; 
y = n;  
figure(1);
subplot(3,2,3)
stem(n, y)
xlabel('n')
ylabel('Amplitude')
title('Ramp')

% 4. REAL AND COMPLEX EXPONENTIAL
a = -1/12;
b = pi/6;
c = a + b*1i; 
n = 1:40; 
x = exp(c*n);
figure(2);
subplot(2,1,1)
stem(n-1, real(x));
xlabel('Time index n');
ylabel('Amplitude');
title('Exponential Real Part');
figure(2);
subplot(2,1,2)
stem(n-1, real(x));
xlabel('Time index n');
ylabel('Amplitude');
title('Exponential imaginary Part');

% 5. SINUSOIDAL SIGNAL (SINE WAVE)
t = 0:0.1:2;
x = sin(2*pi*t);
figure(1);
subplot(3,2,4)
stem(t, x)
xlabel('t')
ylabel('Amplitude')
title('Sinusoidal (Sine)')

% 6. COSINE SIGNAL
t = 0:0.1:2;
x = cos(2*pi*t);
figure(1);
subplot(3,2,6)
stem(t, x)
xlabel('t')
ylabel('Amplitude')
title('Cosine Signal')
