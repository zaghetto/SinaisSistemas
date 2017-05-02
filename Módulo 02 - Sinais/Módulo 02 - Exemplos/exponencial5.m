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

n = -25:25

% Frequencias. Ver livro.
denom = 2.^(3:-1:0);
denom2 = 2-1./denom(end-1:-1:1);
denom = 1./denom;


% Laço que itera sobre as frequencia. Ver livro.
for wo = [0 pi*denom pi*denom2  2*pi]   
    y = cos(wo.*n)       
    stem(n,y)
    xlabel('n')
    ylabel('y(n)')
    grid on
    pause
end
