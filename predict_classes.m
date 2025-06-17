function [classes] = predict_classes(X, weights, ...
                  input_layer_size, hidden_layer_size, ...
                  output_layer_size)

  aux = hidden_layer_size * (input_layer_size + 1);
  Theta1 = reshape(weights(1:aux), hidden_layer_size, input_layer_size + 1);
  Theta2 = reshape(weights(aux + 1:end), output_layer_size, hidden_layer_size + 1);

  m = size(X, 1);

  % adaugam coloana de 1 la matricea X
  a1 = [ones(m, 1), X];

  z2 = a1 * Theta1';
  a2 = [ones(m, 1), sigmoid(z2)];

  z3 = a2 * Theta2';
  a3 = sigmoid(z3);

  % alegem clasa cu probabilitatea maxima
  [maxx, classes] = max(a3, [], 2);
end

function g = sigmoid(z)
  g = 1 ./ (1 + exp(-z));
end

