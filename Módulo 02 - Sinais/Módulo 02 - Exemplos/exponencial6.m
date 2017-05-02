%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ci�ncia da Computa��o  %
% Universiade de Bras�lia              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%
clear all
close all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 0:1000;

wo = pi/12;

y = cos(wo.*n);

stem(n, y);
grid on

xlabel('n');
ylabel('y(n)')