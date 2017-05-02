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

limites = 150;
hn = [zeros(1,limites) ones(1,limites)];
stem([-limites:limites-1],hn,'.')
xlabel('n')
ylabel('h[n]')
grid on
figure

a = 0.92;
n = 0:limites-1;
xn = [zeros(1,limites) a.^(n)] ;
stem([-limites+1:limites],xn)
xlabel('n')
ylabel('x[n]')
grid on
figure

yn = conv(hn, xn);
centro = (length(yn)+1)/2+1;
limiteyn = limites/2;
stem([-limiteyn:limiteyn],yn(centro-limiteyn:centro+limiteyn))
xlabel('n')
ylabel('y[n]')
grid on

hold on
assint = 1/(1-a);
plot([-limiteyn:limiteyn], assint*ones(1,length([-limiteyn:limiteyn])),'r--')





