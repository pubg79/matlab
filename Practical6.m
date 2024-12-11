%z-transform
syms n T a real;
syms z complex;

% Z-transform of n
x = n;
disp('a. Z-transform of "n" is');
disp(ztrans(x, n, z)); 

% Z-transform of a^n
x = a^n;
disp('b. Z-transform of "a^n" is');
disp(ztrans(x, n, z)); 

% Z-transform of n*(a^n)
x = n*(a^n);
disp('c. Z-transform of "n*(a^n)" is');
disp(ztrans(x, n, z)); 

% Z-transform of exp(-a*n*T)
x = exp(-a*n*T);
disp('d. Z-transform of "exp(-a*n*T)" is');
disp(ztrans(x, n, z));  

% Z-transform of (2*2^n + 4*(1/2)^n)
x = 2*2^n + 4*(1/2)^n;
disp('e. Z-transform of "(2*2^n + 4*(1/2)^n)" is');
disp(ztrans(x, n, z));
