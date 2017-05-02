%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ci�ncia da Computa��o  %
% Universiade de Bras�lia              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Coeficiente completo C = a + b*j
C = 1;

% Mdificar o valor de a de acordo com as indica��es da legenda da
a = -1.4;

% Tempo
n = 0:10

% Exponencial
y1 = C*a.^n
stem(n,y1,'LineWidth',2)
grid on
xlabel('n')
ylabel('yexp[n]')

