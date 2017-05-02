clear all
close all

[Dark FS] = wavread('darkside.wav');
Dark = mean(Dark')';
sound(Dark,FS);
pause;
f = 5200; %Hz
t = 0:1/11025:41607/11025-1/11025;
Ruido = sin(2*pi*f.*t);
DarkRuido = Dark+Ruido';
sound(DarkRuido,FS);
wavwrite(DarkRuido,FS,'darkorig.wav');

respimp;

DarkFiltrado = conv(DarkRuido,h);
sound(DarkFiltrado,FS);

tempo = 0:1/FS:length(Dark)/FS-1/FS;
plot(tempo,Dark);
xlabel('tempo')
ylabel('audio')
grid on
