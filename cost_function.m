function [J, grad] = cost_function(params, X, y, lambda, input_layer_size, hidden_layer_size, output_layer_size)

  % reconstruim matricile
  aux = hidden_layer_size * (input_layer_size + 1);
  Theta1 = reshape(params(1:aux), hidden_layer_size, input_layer_size + 1);
  Theta2 = reshape(params(aux + 1:end), output_layer_size, hidden_layer_size + 1);

  % initializam variabilele folosite
  m = size(X, 1);
  J = 0;

  % Forward propagation
  a1 = [ones(m, 1), X];
  z2 = a1 * Theta1';
  a2 = [ones(m, 1), sigmoid(z2)];
  z3 = a2 * Theta2';
  a3 = sigmoid(z3);

  % convertim mateicea y
  y_matrix = zeros(m, output_layer_size);
  for i = 1:m
    y_matrix(i, y(i)) = 1;
  end

  % calculam cost
  cost_terms = -y_matrix .* log(a3) - (1 - y_matrix) .* log(1 - a3);
  J = (1/m) * sum(cost_terms(:));

  % adaugam regularizarea la valoarea variabilei J
  reg_term = (lambda/(2*m)) * (sum(sum(Theta1(:, 2:end).^2)) + sum(sum(Theta2(:, 2:end).^2)));
  J = J + reg_term;

  % back propagation
  delta3 = a3 - y_matrix;
  delta2 = (delta3 * Theta2(:, 2:end)) .* sigmoid_derivative(z2);

  % calculam gradientii
  Delta1 = delta2' * a1;
  Delta2 = delta3' * a2;

  Theta1_grad = Delta1 / m;
  Theta2_grad = Delta2 / m;

  Theta1_grad(:, 2:end) = Theta1_grad(:, 2:end) + (lambda/m) * Theta1(:, 2:end);
  Theta2_grad(:, 2:end) = Theta2_grad(:, 2:end) + (lambda/m) * Theta2(:, 2:end);

  % construim forma finala
  grad = [Theta1_grad(:); Theta2_grad(:)];
end

% Funcții auxiliare
function g = sigmoid(z)
  g = 1 ./ (1 + exp(-z));
end

function g = sigmoid_derivative(z)
  s = sigmoid(z);
  g = s .* (1 - s);
end
