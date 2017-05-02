%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ciência da Computação  %
% Universiade de Brasília              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
w = 0:0.01:4*pi

x = [2 1 1 2];
X1 = zeros(1,length(w));
for n = 0:length(x)-1
    p = x(n+1)*exp(-j*w*n);
    X1 = X1+p;    
end
        
subplot(2,1,1)
plot(w,real(X1))
hold on
plot([2*pi 2*pi], [min(real(X1)) max(real(X1))],'r','LineWidth',2);
title('X(e^{jw})')
ylabel('real(X1)')
xlabel('w')
grid on
subplot(2,1,2)
plot(w,imag(X1))
hold on
plot([2*pi 2*pi], [min(imag(X1)) max(imag(X1))],'r','LineWidth',2);
ylabel('imag(X1)')
xlabel('w')
grid on

figure
n = 1
X2 = exp(j*n*w);
subplot(2,1,1)
plot(w,real(X2))
hold on
plot([2*pi 2*pi], [min(real(X2)) max(real(X2))],'r','LineWidth',2);
title('e^{jwn}')
ylabel('real(X2)')
xlabel('w')
grid on
subplot(2,1,2)
plot(w,imag(X2))
hold on
plot([2*pi 2*pi], [min(imag(X1)) max(imag(X1))],'r','LineWidth',2);
ylabel('imag(X2)')
xlabel('w')
grid on

figure
subplot(2,1,1)
plot(w,real(X1.*X2))
hold on
plot([2*pi 2*pi], [min(real(X1.*X2)) max(real(X1.*X2))],'r','LineWidth',2);
title('X(e^{jw})e^{jwn}')
ylabel('real(X1.X2)')
xlabel('w')
grid on
subplot(2,1,2)
plot(w,imag(X1.*X2))
hold on
plot([2*pi 2*pi], [min(imag(X1.*X2)) max(imag(X1.*X2))],'r','LineWidth',2);
ylabel('imag(X1.X2)')
xlabel('w')
grid on






