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

%%%%%%%%%%%%%%%%%%%%%%%%
% Fourier              %
%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;

limites = 100;

for k = -limites:limites
    if k == 0
        d(k+limites+1)=0
    else
        d(k+limites+1) = (sin(pi*k/2)/k/pi)*exp(-j*k*pi/2);
    end
end

stem([-limites:limites],abs(d));
xlabel('k')
ylabel('|d_k|')
grid on

figure
stem([-limites:limites],angle(d));
xlabel('k')
ylabel('Fase de d_k')
grid on


