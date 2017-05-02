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

% Coeficiente completo C = a + b*j
a = 3;
b = 4;
C = a + b*i;
% Módulo
absC = abs(C);

% Tempo
t = 0:0.1:2*pi;

% Exponencial
r = -0.5;
y1 = absC.*exp(r*t)
plot(t,y1,'LineWidth',2)
grid on
xlabel('t')
ylabel('yexp(t)')

% Cosseno
w0 = 2;
angPhi = 0;
y2 = cos(w0.*t + angPhi)
figure
plot(t,y2,'LineWidth',2)
grid on
xlabel('t')
ylabel('ycos(t)')

% Produto
y3 = y1.*y2;
figure
plot(t,y3,'LineWidth',2)
grid on
xlabel('t')
ylabel('y(t)=yexp(t)*ycos(t)')
hold on
plot(t,y1,'--r','LineWidth',2)
plot(t,-y1,'--r','LineWidth',2)













