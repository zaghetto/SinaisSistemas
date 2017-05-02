%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ciência da Computação  %
% Universiade de Brasília              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w0 = 1;
t = 0:0.1:2*pi;
k = 1;
y1 = exp(j*k*w0*t)
k = 2;
y2 = 0.75*exp(j*k*w0*t)
k = 3;
y3 = 0.5*exp(j*k*w0*t)

fig = figure;
plot([-1 1], [0 0],'r--', 'LineWidth',2)
hold on
plot([0 0],[-1 1],'r--','LineWidth',2)
xlabel('Real')
ylabel('Imag')
grid on

text(t(1)+0.03,y1(1)-0.15,'k = 1, T_o=2\pi')
text(t(1)+0.03,y1(1)-0.4,'k = 2, T_o/2, ')
text(t(1)+0.03,y1(1)-0.75,'k = 3, T_o/3')


mov = VideoWriter('MOVIE.mp4','MPEG-4');
mov.Quality = 100;
mov.FrameRate = 4;
open(mov);
F=getframe(fig);
writeVideo(mov,F);


for i = 1:length(y1)
        
    plot(real(y1(i)), imag(y1(i)),'o','LineWidth',2)
    plot(real(y2(i)), imag(y2(i)),'ro','LineWidth',2)
    plot(real(y3(i)), imag(y3(i)),'ko','LineWidth',2)
    title(['w_0 = 1, t = ' num2str(t(i))])
    F=getframe(fig);
    writeVideo(mov,F);
    pause(0.25);
    
end

close(mov);