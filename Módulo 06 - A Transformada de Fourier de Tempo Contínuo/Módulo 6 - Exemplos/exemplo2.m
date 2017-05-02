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

% Sinal Original

syms t w
syms x(t) X(w)

a = 2;

x(t) = exp(-a*t);

X(w) = int(x(t)*exp(-j*w*t),t,0,inf);

w = -5:5

Xc = abs(eval(X(w)))
A  = angle(eval(X(w)))
subplot(211)
plot(w,Xc)
xlabel('w')
grid on;
legend('Magnitude')
subplot(212)
plot(w,A)
xlabel('w')
grid on;
legend('Fase')





