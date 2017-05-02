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

n = 0:39;

m = 4;

N = 31;

wo = 2*pi*m/N

%y = exp(j*wo.*n)

y = cos(wo*n);
stem(n, y);
xlabel('n');
ylabel('y[n]')
grid on


% subplot(2,1,1)
% stem(n, real(y));
% grid on
% xlabel('n');
% ylabel('real(n)')
% subplot(2,1,2)
% stem(n, imag(y));
% grid on
% xlabel('n');
% ylabel('imag(n)')

