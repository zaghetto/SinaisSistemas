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

% Carrega o arquivo de áudio, x[n]
[audio, FS] = wavread('Módulo 02f - Darth.wav');
sound(audio, FS);

% Inverte o sinal, x[-n]
audio_flip = audio(end:-1:1);
sound(audio_flip, FS)

% Acelera o sinal, x[2n]
audio_acel = audio(1:2:end);
sound(audio_acel, FS)

% Retarda o sinal, x[n/2]
audio_retar = zeros(1,2*length(audio))
audio_retar(1:2:end) = audio(1:end);
sound(audio_retar, FS)
