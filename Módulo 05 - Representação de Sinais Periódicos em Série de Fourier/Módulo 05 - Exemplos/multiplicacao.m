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
syms t 
t0=0;
T=2*pi; 
w=2*pi/T; 
x=cos(t) ;
k=-5:5;
a=(1/T)*int(x*exp(-j*k*w*t),t,t0,t0+T);
a1=eval(a);
y=sin(t);
b=(1/T)*int(y*exp(-j*k*w*t),t,t0,t0+T);
b1=eval(b);
left=conv(a1,b1);
subplot(211);
stem(-10:10,abs(left));
ylabel('|a1_k*b2_k|');
xlabel('k')
grid on 
subplot(212);
stem(-10:10,angle(left));
ylabel('$$\angle a1_k*b2_k$$','Interpreter','LaTex');
xlabel('k')
grid on 

figure
z=x*y; 
k=-10:10;
c=(1/T)*int(z*exp(-j*k*w*t),t,t0,t0+T);
c1=eval(c)
subplot(211);
stem(k,abs(c1));
ylabel('|c_k|');
xlabel('k')
grid on 
subplot(212);
stem(k,angle(c1));
ylabel('$$\angle c_k$$','Interpreter','LaTex');
xlabel('k')
grid on 

