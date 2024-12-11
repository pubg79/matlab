t=0:0.00025:1;
x=sin(2*pi*30*t) + sin(2*pi*60*t);
y=decimate(x,4);
subplot(2,1,1)
stem(0:120, x(1:121), 'filled', 'markersize', 3)
grid on
xlabel('Sample number')
ylabel('original')
subplot(2,1,2)
stem(0:30, y(1:31), 'filled', 'markersize', 3)
grid on
xlabel('Sample number')
ylabel('Decimation')