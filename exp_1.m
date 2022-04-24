%Generation of random sequence and thier correlations.

l=input('Enter Sequence Length')
x=randi(10,1,l);
y=randi(10,1,l);

subplot(2,2,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('Input Sequence');

subplot(2,2,2);
stem(y);
xlabel('n');
ylabel('y(n)');
title('Input Sequence');
% autocorrelation of x and y input sequences
z = xcorr(x,y);
disp('The values of z are : '); disp(z);

subplot(2,1,2);
stem(z);
xlabel('n');
ylabel('z(n)');
title('auto correlation of input sequences');