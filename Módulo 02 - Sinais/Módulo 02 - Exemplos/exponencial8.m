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

w0 = 1;
phi = 0;
C = 3;
a = 1

n = 0:100

y = C*a*cos(w0.*n + phi)+ j*C*a*sin(w0.*n + phi)


%VecOnes = ones(1, length(y))
%plot3(n,real(y),-VecOnes);
ylabel('Parte Real')
hold on
%plot3(n,VecOnes,imag(y));
zlabel('Parte Imaginária')
xlabel('t')
for i = 1:length(y)
vectarrow([n(i) 0 0], [n(i) real(y(i)) imag(y(i))])
hold on
pause
end

view([36 24])
grid on
set(gca,'LineWidth',2)

break


figure



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























