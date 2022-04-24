% Response of band pass FIR filter using Kaiser window
clc; 
clear all; 
close all; 
fs = 20000;         % sampling rate 
F = [3000 4000 6000 8000]; % band limits 
A = [0 1 0];        % band type: O='stop', 1='pass' 
dev = [0.0001 10^(0.1/20)-1 0.0001]; % ripple/attenuation specifications 
[M,Wn, beta,typ] = kaiserord(F,A,dev,fs); % window parameters 
b = fir1(M,Wn, typ, kaiser(M+1, beta),'noscale'); % filter design 
w=0:0.001:pi; 
[h,om]=freqz(b,1,w); 
a=20*log10(abs(h)); 
b=angle(h);
subplot(2,1,1),plot(w/pi,a); 
xlabel('Normalized frequency') 
ylabel('Gain in db') 
title('magnitude plot') 
subplot(2,1,2),plot(w/pi,b); 
xlabel('Normalized frequency') 
ylabel('Phase in radians') 
title('Phase Response')