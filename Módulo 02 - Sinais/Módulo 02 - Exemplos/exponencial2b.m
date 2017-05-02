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

w0 = 4;

T = 0:0.01:8*pi;
r = -0.05;
y2 = exp(r*T).*cos(w0*T) + j*exp(r*T).*sin(w0*T)

VecZeros = zeros(1, length(y2))
plot3(T,real(y2),VecZeros);
ylabel('Parte Real')
hold on
plot3(T,VecZeros,imag(y2));
zlabel('Parte Imaginária')
xlabel('t')
plot3(T, real(y2), imag(y2),'b', 'LineWidth' ,2)
view([25 20])
grid on
set(gca,'LineWidth',2)

figure

r = 0.05;
y2 = exp(r*T).*cos(w0*T) + j*exp(r*T).*sin(w0*T)

VecZeros = zeros(1, length(y2))
plot3(T,real(y2),VecZeros);
ylabel('Parte Real')
hold on
plot3(T,VecZeros,imag(y2));
zlabel('Parte Imaginária')
xlabel('t')
plot3(T, real(y2), imag(y2),'b', 'LineWidth' ,2)
view([25 20])
grid on
set(gca,'LineWidth',2)
























