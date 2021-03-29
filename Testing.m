clear all
clc

load('Trained_Network.mat'); % Dados da rede treinada
input = [0 0 1; 0 1 1 ; 1 0 1; 1 1 1]; % Entrada
N = 4; 
for k = 1:N
    transposed_Input = input(k, : )'; 
    weighted_Sum = Weight*transposed_Input; % Soma ponderada
    output = Sigmoid(weighted_Sum) % Gerando a saída final
end