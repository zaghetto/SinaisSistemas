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

syms t k
syms x(t) y(t) f(t) 

t0 = 0;
T = 2*pi;
w0 = 2*pi/T;

z1 = 3+2*i;
z2 = 2;

x(t) = cos(t);
y(t) = sin(2*t);

f(t) = z1*x(t) + z2*y(t);

k = -5:5;
a = (1/T)*int(f*exp(-i*k*w0*t), t, t0, t0+T);
a = eval(a);

subplot(211)
stem(k,abs(a));
grid on;
legend('Magnitude')
subplot(212)
stem(k,angle(a));
grid on;
legend('Fase')


