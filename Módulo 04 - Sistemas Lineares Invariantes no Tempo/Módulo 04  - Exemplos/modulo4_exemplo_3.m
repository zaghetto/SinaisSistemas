%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ciência da Computação  %
% Universiade de Brasília              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%
clear all
close all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Sinal de entrada xn
limites = 10;
xn = [zeros(1,limites) 1 1 1 1 1 zeros(1,limites)];
stem([-limites:limites+4],xn,'o')
xlabel('n')
ylabel('x[n]')
grid on
figure

% Resposta ao impulso do sistema
a = 1.5;
n = 0:6;
hn = [zeros(1,limites) a.^n zeros(1,limites)] ;
stem([-limites:limites+6], hn)
xlabel('n')
ylabel('x[n]')
grid on
figure;

% Saída
yn = conv(hn, xn);
centro = (length(yn)+1)/2+1;
ni = centro-limites:centro+limites
stem([-limites+6:limites+6],yn(ni))
xlabel('n')
ylabel('y[n]')
grid on





