% Convolution of two sequences
clc; clear all;
close all;
x1=[1 2 0 1];
x2= [2 2 1 1];
y=conv(x1,x2);
disp('the convolution output is'); disp(y);
subplot(3,1,1),stem(x1);
xlabel('Discrete time')
ylabel('Amplitude')
title('first input sequence')
subplot(3,1,2),stem(x2);
xlabel('Discrete time')
ylabel('Amplitude')
title('Second input sequence')
subplot(3,1,3),stem(y);
xlabel('Discrete time')
ylabel('Amplitude')
title('convolution output')