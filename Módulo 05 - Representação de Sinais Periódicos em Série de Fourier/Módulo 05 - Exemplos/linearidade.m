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
t0 = 0;
T = 2*pi;
w0 = 2*pi/T;
syms t
% Coeficientes
z1 = 3+2*i;
z2 = 2;
%  Fun��es
x = cos(w0*t);
y = sin(2*w0*t);
%%%%%%%%%%%%%%%%%%%%%%%%
f = z1*x + z2*y;       % <========  
%%%%%%%%%%%%%%%%%%%%%%%%
% Coeficientes da S�rie de Fourier
k = -5:5;
a1k = (1/T)*int(f*exp(-j*k*w0*t),t,t0,t0+T);
a1k = eval(a1k);
% Plots
subplot(2,1,1)
stem(k,abs(a1k))
ylabel('|a1_k|');
xlabel('k')
subplot(2,1,2)
stem(k,angle(a1k))
ylabel('fase1_k');
xlabel('k')

% Coeficientes da S�rie de Fourier
% T e w0 s�o os mesmos observados na fun��� f, ou sejam, w0 � a
% m�ximo divisor comum entre as frequencias fundamentais de x e y
a = (1/T)*int(x*exp(-j*k*w0*t),t,t0,t0+T);
b = (1/T)*int(y*exp(-j*k*w0*t),t,t0,t0+T);
%%%%%%%%%%%%%%%%%%%%%%
a2k = z1*a+z2*b;     % <=======
%%%%%%%%%%%%%%%%%%%%%%
% Plots
figure
subplot(2,1,1)
stem(k,abs(a1k))
ylabel('|a2_k|');
xlabel('k')
subplot(2,1,2)
stem(k,angle(a2k))
ylabel('fase2_k');
xlabel('k')


