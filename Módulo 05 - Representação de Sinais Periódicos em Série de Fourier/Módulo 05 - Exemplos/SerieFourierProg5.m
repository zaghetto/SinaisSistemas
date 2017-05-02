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

N = 8;
n = -N:N

xn = 1+sin(2*pi.*n/N)+3*cos(2*pi.*n/N)+cos(4*pi.*n/N + pi/2)

stem(n, xn)
grid on
xlabel('n')
ylabel('x[n]')

intervalo = -2*N:2*N;
a = zeros(1, length(intervalo));
for k = intervalo
    for m = 0:N-1
        a(2*N+k+1) = a(2*N+k+1)+xn(m+1)*exp(-j*k*2*pi*m/N);
    end
    a(2*N+k+1) = a(2*N+k+1)/N;
end

figure;
stem(intervalo,real(a))
grid on
xlabel('k')
ylabel('Re\{a_k\}')

figure;
stem(intervalo,imag(a))
grid on
xlabel('k')
ylabel('Im\{a_k\}')

figure;
stem(intervalo,abs(a))
grid on
xlabel('k')
ylabel('Im\{a_k\}')

figure;
x = (abs(real(a))>0.00000001).*real(a);
y = (abs(imag(a))>0.00000001).*imag(a);
ak_proc = x+j*y;
stem(intervalo,angle(ak_proc))
grid on
xlabel('k')
ylabel('angle(a_k)')

    