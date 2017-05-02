%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ciência da Computação  %
% Universiade de Brasília              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = [0 0 0 (sqrt(2)/4)*(1-j) (1+0.5*j) 1 (1-0.5*j) (sqrt(2)/4)*(1+j) 0 0 0];

k = -5:5;

subplot(211)
stem(k, abs(a))
xlabel('k')
ylabel('|a_k|')
title('Coeficientes Apresentados na Forma Módulo e Fase')

subplot(212)
stem(k, angle(a))
xlabel('k')
ylabel('\angle a_k')