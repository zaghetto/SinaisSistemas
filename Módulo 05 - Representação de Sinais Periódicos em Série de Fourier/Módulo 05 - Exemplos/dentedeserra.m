%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ci�ncia da Computa��o  %
% Universiade de Bras�lia              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
% Fourier              %
%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;

S = 0;

% Intervalo de simula��o (em segundos)
ti = -3;  % Tempo inicial
tf = 3;  % Tempo final

% Simula a fun��o cont�nua
tcont = ti:1/2000:tf;

% N�mero de termos
N =100


for i = 1:N
        
    % Freq��ncia do sinal (em Hertz)
    fc = i;
    ycont = -2*(((-1)^i)/(pi*i))*sin(pi*i.*tcont);
    
    figure(1)
    plot(tcont, ycont)    
    axis([ti tf -1 1])
    grid on
    
    %pause
        
    S = S + ycont;
    
    figure(2)
    plot(tcont, S)        
    xlabel('t')
    ylabel('$$\hat{x}(t)$$','Interpreter','Latex')
    grid on
         
end
