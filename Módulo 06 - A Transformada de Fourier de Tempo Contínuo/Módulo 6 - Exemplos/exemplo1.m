%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Autor: Prof. Alexandre Zaghetto      %
% E-mail: zaghetto@image.unb.br        %  
% Disciplina: Sinais e Sistemas        %
% Departamento: Ci�ncia da Computa��o  %
% Universiade de Bras�lia              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Defini��o de per�odos e frequencias %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
T1 = 1;
T = 1024*T1;
w0 = 2*pi/T;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Coeficientes da S�rie de Fourier %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
limites = 2*T;
k = -limites:limites
ak = 2*sin(k.*w0*T1)./(k.*w0*T);
syms x;
ak(-min(k)+1) = eval((1/T)*int(1,x,-T1, T1))
stem(k,ak,'.')
grid on
xlabel('k')
ylabel('a_k')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Coeficientes da S�rie de Fourier %
% Eixo horizontal k ==> k*wo       %
% ak ==> multiplicado por T*ak     % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
wk = k*w0
stem(wk,T*ak,'.')
grid on
xlabel('w')
ylabel('Ta_k')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Simula��o da envolt�ria        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w = min(wk):0.00001:max(wk);
% Envolt�ria
f = 2*sin(w.*T1)./w;
hold on
plot(w,f)
grid on



