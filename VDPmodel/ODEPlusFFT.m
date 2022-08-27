clc; clear;close all;
x0=[2;0];
t0=2;
opts = odeset('RelTol',1e-4,'AbsTol',1e-8);
[t,x]=ode45('rhf',[0,t0],x0,opts);


fs = length(t)/t0

%filefs = floor(fs);
%audiowrite('ODE349.wav',x,filefs);


N = floor(length(x)/2);
n = floor(N/2);
x1 = x(N+1:2*N);
y = fft(x1)/t0;     %analyze the second half where signal is stable
y = abs(y(1:n));
time = (0:length(x)-1)/fs;
frequency = (0:n-1)/(n-1)*fs/2;

figure()
subplot(2,1,1),plot(t,x(:,1));
xlabel('Time/(s)','fontsize',10);
ylabel('Amplitude','fontsize',10);

subplot(2,1,2),plot(frequency,20*log10(y));
xlabel('Frequency(Hz)','fontsize',10);
ylabel('Amplitude(dB)','fontsize',10);