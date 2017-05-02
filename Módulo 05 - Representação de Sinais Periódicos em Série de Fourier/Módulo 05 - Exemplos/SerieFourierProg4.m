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

N = 8;
w0 = 2*pi/N;
n = -16:16
for k = 0:N-1
    figure(k+1)
    y = exp(j*k*w0*n)
    subplot(2,1,1)
    stem(n,real(y))
    subplot(2,1,2)
    stem(n,imag(y))
grid on
pause
end
