%%%%%%%%%%%%%%%%%%%%%%%%
% Fourier              %
%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;

S = 0.5;

% Intervalo de simulação (em segundos)
ti = 0;  % Tempo inicial
tf = 1;  % Tempo final

% Simula a função contínua
tcont = ti:1/200:tf;

% Número de termos
N =100;

Stotal = zeros(N/2,max(size(tcont)));

for i = 1:2:N
        
    % Freqüência do sinal (em Hertz)
    fc = i;
    ycont = (2/(i*3.14))*sin(2*pi*fc.*tcont);
    
    figure(1)
    plot(tcont, ycont)    
    axis([ti tf -1 1])
    grid on
    
    
        
    S = S + ycont;
    
    Stotal((i+1)/2,:) = S;
    
    figure(2)
    plot(tcont, S)                  
    grid on
    xlabel('t')
    ylabel('$$\hat{x}(t)$$','Interpreter','Latex')
end

figure(3)
mesh(1:2:N,tcont,Stotal')
ylabel('tempo')




