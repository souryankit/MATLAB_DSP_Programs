% Up-Sampling by an integer factor
clc;
clear all;
close all;
n=0:50;
x = sin(2*pi*0.12*n);
y = zeros([1, 3*length(x)]);
y([1:3:length(y)]) = x;
subplot(2,1,1),stem(n, x);
xlabel('Time index n');
ylabel('Amplitude');
title('Input Sequence');
subplot(2,1,2),stem(n, y(1:length(x)));
xlabel('Time index n');
ylabel('Amplitude');
title('Up-sampled Sequence');
