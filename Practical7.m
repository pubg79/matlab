t = 0:0.025:1;
x = sin(2*pi*3*t) + sin(2*pi*6*t);

y = interp(x,2);

subplot(2,1,1)
stem(0:25,x(1:26), 'filled', 'markersize',3)
grid on
xlabel('sample number')
ylabel('original')

subplot(2,1,2)
stem(0:50,y(1:51), 'filled','markersize',3)
grid on
xlabel('Sample number')
ylabel('interpolation')