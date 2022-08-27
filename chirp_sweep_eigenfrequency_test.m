fs = 48000;
t = 0:1/fs:40;
fo = 90;
f1 =20090;

%y = chirp(t,349,t(end),349,'linear',0);
y =1 * chirp(t,fo,t(end),f1,'logarithmic');
%y =1 * chirp(t,fo,t(end),f1,'linear');

%audiowrite('chirp50_3050x2.wav',y,48000);
%spectrogram(y,512,500,512,fs,'yaxis');
%title 'Linear chirp'

sound(y,fs);

