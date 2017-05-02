%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ciência da Computação  %
% Universiade de Brasília              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Deslocamento no tempo                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc

% Condições iniciais
t0=0;
T=10;
w=2*pi/T;
syms t

% Sinal periódico que em um período é dado por
x=t*exp(-5*t) %   0 <= t <= 10.
ezplot(x,[0 10 0 0.08]);
grid on
xlabel('t')
ylabel('x(t)')

% Calcula os coeficientes da Série de Fourier
k=-5:5;
a=(1/T)*int(x*exp(-j*k*w*t),t,t0,t0+T);
a1=eval(a);

% Mostra os plots
figure;
subplot(211);
stem(k,abs(a1));
grid on;
title(' Coeficientes de x(t)=te^-^5^t');
ylabel('|a_k|');
xlabel('k')
subplot(212);
stem(k,angle(a1));
xlabel('k');
ylabel('\angle a_k');
grid on;

figure
t1=3;
right= exp(-j*k*w*t1).*a;
right = eval(right);
subplot(211);
stem(k,abs(right));
grid on
title(' Coeficientes de x(t)=te^-^5^t');
ylabel('|a_k|');
xlabel('k')
title('Parte Direita');
subplot(212);
stem(k,angle(right));
xlabel('k');
ylabel('\angle a_k');
grid on;

figure
x=(t-t1).*exp(-5*(t-t1));
a=(1/T)*int(x*exp(-j*k*w*t),t,t0+t1,t0+T+t1);
coe=eval(a);
subplot(211);
stem(k,abs(coe));
title(' Coeficientes de (t-3)exp(-5(t-3)) ');
ylabel('|a_k|');
xlabel('k')
subplot(212);
stem(k,angle(coe));
xlabel('k')
ylabel('\angle a_k');
grid on;
