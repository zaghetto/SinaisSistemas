%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Renato Dourado Maia 
% Faculdade de Ciência e Tecnologia de Montes Claros
% Sinais e Sistemas %
% Aula 6: Sistemas Lineares Invariantes no tempo % 
% Somatório de Convolução - Exemplo do slide 14 % 
% Testado no Matlab R2010a e no Octave 3.2.4 % 
% Última Atualização: 19/08/2011 % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Atualização em 21/04/2015 por:
% Prof. Alexandre Zaghetto
% alexandre@zaghetto.com
% Universidade de Brasília
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Inicializações 
clc 
clear all 
close all

% Parâmetro da resposta ao impulso exponencial 
alfa = 0.6; 

% Índices para somatório de convolução 
k = -5 : 20; 
n = -5 : 20; 

% Inicialização do vetor de saída 
y = []; 

% Variáveis Auxiliares para nome das figuras geradas 
Nome ='M_6_SistemasLTIProg1_Fig';
IndiceFigura = 1;

% Sinal de entrada 
x = (k == 0) - (k == 2) + 2*(k == 5); 
subplot(3, 1, 1); 
box off
stem(k, x, 'b.'); 
ylabel('x[k]'); 
xlabel('Tempo (k)'); 
xlim([min(k) max(k)]); 

%---------------------------------------------------- %---------------------------------------------------- 
% Somatório de convolução 
for cont = 1 : length(n) 
    
    % Valor atual de n 
    nAtual = n(cont); 
    
    % Resposta ao impulso h[n - k] 
    h = (alfa.^(nAtual - k)).*((nAtual - k) >= 0);     
    subplot(3, 1, 2) 
    stem(k, h, 'g.');     
    RotuloY = sprintf('h[%d-k]', nAtual);     
    ylabel(RotuloY); xlabel('Tempo (k)');
    xlim([min(k) max(k)]); drawnow; 
    
    % Calcula valor do somatório de convolução para o n atual 
    Soma = sum(h.*x); 
    subplot(3, 1, 3) 
    hold on    
    stem(nAtual, Soma, 'r.');   
    ylabel('y[n]'); 
    xlabel('Tempo (n)'); 
    axis([min(n) max(n) -1 2]); 
    drawnow; 
    
    % Atualiza o vetor de saída 
    y = [y; Soma]; 
    
    % Pausa para animação ficar agradável - descomentar a linha a seguir 
    pause; 
    % Salva figura em arquivo eval(sprintf('print -dpng %s_%d.png', Nome, IndiceFigura)); 
    
    % Atualiza índice ara dar nome às figuras 
    IndiceFigura = IndiceFigura + 1; 
    
end 


% Geração de uma figura com entrada, resposta ao impulso e saída

figure 
% Sinal de entrada 
subplot(3, 1, 1); 
stem(n, x, 'b.'); 
ylabel('x[n]'); 
xlabel('Tempo (n)'); 
xlim([min(n) max(n)]); 

% Resposta ao impulso 
subplot(3, 1, 2); 
h = (alfa.^(n)).*(n >= 0); 
Sh = stem(n, h, 'g.'); 
ylabel('h[n]'); 
xlabel('Tempo (n)'); 
xlim([min(n) max(n)]); 

% Sinal de saída 
subplot(3, 1, 3); 
Sh = stem(n, y, 'r'); 
set(Sh, 'Marker', '.'); 
ylabel('y[n]'); 
xlabel('Tempo (n)'); 
axis([min(n) max(n) -1 2]); 

% Salva figura em arquivo
eval(sprintf('print -dpng %s_Final.png', Nome)); 














