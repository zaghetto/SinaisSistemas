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
% Per�odo e frequ�ncia
T=2*pi;
w=2*pi/T;
% Tempo como vari�vel simb�lica
syms t
% Sinal x(t)
x=t*cos(t) ;
% S�rie de Fourier
t0=0;
k=-5:5;
a=(1/T)*int(x*exp(-j*k*w*t),t,t0,t0+T);
a1=eval(a);
% Plots
subplot(211);
stem(k,abs(a1));
ylabel('|a_k|');
xlabel('k');
title('Coeficientes de x(t)');
subplot(212);
stem(k,imag (a1));
ylabel('Fase(a_k)');
xlabel('k')

figure
lamda=2;
T=T/lamda ;
w=2*pi/T; 
x= lamda *t*cos(lamda *t) ;
k=-5:5;
a=(1/T)*int(x*exp(-j*k*w*t),t,t0,t0+T);
a1=eval(a)
subplot(211);
stem(k,abs(a1));
ylabel('|a_k|');
xlabel('k');
title('Coeficientes de x(2t)');
subplot(212);
stem(k,angle(a1));
ylabel('Fase(a_k)');
xlabel('k');




