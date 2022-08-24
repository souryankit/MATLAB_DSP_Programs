% To compute DFT of sequence and its Spectrum Analysis.
clc; 
clear all; 
close all;
x=input('enter input sequence:') % x = [2 3 -1 4];
N = length(x);
X = zeros(N,1)
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-j*pi/2*n*k)
    end
end

t = 0:N-1

% plot results
figure('name','Ankit');
subplot(311)
stem(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time domain - Input sequence')

subplot(312)
stem(t,X)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response')

subplot(313)
stem(t,angle(X))
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response')

X         % to check |X(k)|
angle(X)  % to check phase
