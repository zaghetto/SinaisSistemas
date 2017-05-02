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
% x[n] = (a^n)*u[n]
a = 1.1;

% Intervalo de simulação
interw = [-4*pi:0.01:4*pi];
intern = [0:100];

X = zeros(1,length(interw));
k = 1;
for w = interw    
    for n = intern        
      X(k) = X(k) + (a*exp(-j*w)).^n;      
    end    
    k = k+1;
end
 
plot(interw,abs(X))
grid on
xlabel('w')
ylabel('|X(e^{jw})|')


















