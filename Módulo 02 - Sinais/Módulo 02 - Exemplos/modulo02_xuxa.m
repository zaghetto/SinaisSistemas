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
[audio, FS] = audioread('Modulo02gxuxa.wav');
sound(audio, FS);

break

% Inverte o sinal, x[-n]
audio_flip = audio(end:-1:1);
sound(audio_flip, FS)

