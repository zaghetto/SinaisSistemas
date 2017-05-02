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

t = -1.5:0.001:1.5;

subplot(221)
x0 = ones(1, length(t));
plot(t, x0)
xlabel('Tempo (t)')
title('x_0(t) = 1')

subplot(222)
x1 = 0.5*cos(2*pi*t);
plot(t, x1)
xlabel('Tempo (t)')
title('x_1(t) = (1/2)cos(2\pit)')

subplot(223)
x2 = cos(4*pi*t);
plot(t, x2)
xlabel('Tempo (t)')
title('x_2(t) = cos(4\pit)')

subplot(224)
x3 = (2/3)*cos(6*pi*t);
plot(t, x3)
xlabel('Tempo (t)')
title('x_3(t) = (2/3)cos(6\pit)')

figure

subplot(311)
plot(t, x0 + x1)
xlabel('Tempo (t)')
title('x_0(t) + x_1(t) ')

subplot(312)
plot(t, x0 + x1 + x2)
xlabel('Tempo (t)')
title('x_0(t) + x_1(t) + x_2(t)')

subplot(313)
plot(t, x0 + x1 + x2 + x3)
xlabel('Tempo (t)')
title('x_0(t) + x_1(t) + x_2(t) + x_3(t)')


