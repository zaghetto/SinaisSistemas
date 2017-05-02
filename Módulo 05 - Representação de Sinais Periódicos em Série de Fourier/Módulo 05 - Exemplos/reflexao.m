%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ciência da Computação  %
% Universiade de Brasília              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reflexão no tempo                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Período e frequência
T=2*pi;
w=2*pi/T;
% Tempo como variável simbólica
syms t
% Sinal x(t)
x=t*sin(t) ;
% Série de Fourier
t0=0;
k=-5:5;
a=(1/T)*int(x*exp(-j*k*w*t),t,t0,t0+T);
a1=eval(a);
% Plots
subplot(211);
stem(k,real(a1));
ylabel('Re[a_k]');
xlabel('k')
grid on
title('Coeficientes de x(t)');
subplot(212);
stem(k,imag (a1));
ylabel('Im[a_k]');
xlabel('k')
grid on

% Sinal x(-t)
figure
x_=(-t)*sin(-t) ;
b=(1/T)*int(x_*exp(-j*k*w*t),t,t0-T,t0);
b1=eval(b)
subplot(211);
stem(k,real(b1));
ylabel('Re[a_k]');
xlabel('k')
grid on
title('Coeficientes de x(-t)');
subplot(212);
stem(k,imag (b1));
ylabel('Im[a_k]');
xlabel('k')
grid on
