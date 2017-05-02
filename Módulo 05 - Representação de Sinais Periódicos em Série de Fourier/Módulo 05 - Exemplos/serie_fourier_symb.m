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
syms x(t)

T = 4;
t0 = -2;
w0 = 2*pi/T;

%x(t) = heaviside(t);
%x(t)= 1-triangularPulse(t);
x(t) = exp(-t);

grid on

% Mostra o sinal
ezplot(x(t),[t0 t0+T])
title(['Sinal Original'] )
ylabel('x(t)')
grid on

% Expandindo na Série Trigonométrica
a0 = (1/T)*int(x, t, t0, t0+T);
b(k) = (1/T)*int(x*cos(k*w0*t), t, t0, t0+T);
c(k) = (1/T)*int(x*sin(k*w0*t), t, t0, t0+T);

% Substitui k pelos valores em k1 para computar os coeficientes
N = 10;
k = 1:N;
bk = eval(subs(b,k));
ck = eval(subs(c,k));

% Recostroi o x
xr(t) = a0+2*sum(bk.*cos(k*w0*t) +  ck.*sin(k*w0*t));
figure;
ezplot(xr(t),[t0 t0+T])
title(['Aproximação com ' num2str(N) ' termos'] )
ylabel('xr(t)')
grid on




