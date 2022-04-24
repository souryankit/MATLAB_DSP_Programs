% Down Sampling by an integer factor
clc;
clear all;
close all;
n=0:49;
m= 0:50*3-1;
x = sin(2*pi*0.042*m);
y = x([1:3:length(x)]);
subplot(2,1,1),stem(n, x(1:50));
axis([0 50 -1.2 1.2]);
xlabel('Time index n');
ylabel('Amplitude');
title('Input Sequence');
subplot(2,1,2),stem(n, y);
axis([0 50 -1.2 1.2]);
xlabel('Time index n');
ylabel('Amplitude');
title('Downsampled Sequence');
