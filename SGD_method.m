% Fornecendo pesos treinados como saída
function Weight = SGD_method(Weight, input, correct_Output)
alpha = 0.9;

N = 4; % Quantidade de interações
for k = 1:N
    transposed_Input = input(k, : )'; % Transposição dos dados de entrada
    d = correct_Output(k); % Saídas corretas
    weighted_Sum = Weight*transposed_Input; % Soma ponderada
    
    % Processamento da soma ponderada ussando a função sigmoid
    output = Sigmoid(weighted_Sum);
    
    error = d-output; % Cálculo do erro
    delta = output*(1-output)*error; % Valor de delta utilizando a generalização de delta rule
    
    dWeight = alpha*delta*transposed_Input; % Peso ajustado
    
    Weight(1) = Weight(1) + dWeight(1); % Ajustando os pesos
    Weight(2) = Weight(2) + dWeight(2); % Ajustando os pesos
    Weight(3) = Weight(3) + dWeight(3); % Ajustando os pesos
end
end