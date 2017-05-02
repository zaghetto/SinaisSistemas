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
T = 0:0.01:2*pi;
y = exp(j*w0*T)
plot([-1 1], [0 0],'r--', 'LineWidth',2)
hold on
plot([0 0],[-1 1],'r--','LineWidth',2)
xlabel('Real')
ylabel('Imag')
grid on


for i = 1:length(y)
    plot(real(y(i)), imag(y(i)),'ro')
    title(['T = ' num2str(T(i))])
    pause(0.01);
    
end


