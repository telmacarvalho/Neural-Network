clear all
clc

input = [0 0 1; 0 1 1 ; 1 0 1; 1 1 1]; % Entrada
correct_Output = [0 0 1 1 ]; % Saída correta
Weight = 2*rand(1, 3)-1; % Pesos iniciais
% Chamando a função 10000 vezes onde o peso será ajustado 10000 vezes
for epoch = 1:10000 
    Weight = SGD_method(Weight, input, correct_Output);
end

save('Trained_Network.mat')