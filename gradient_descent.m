function [Theta] = gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)
  % initializam vectorul Theta
  Theta = zeros(n, 1);

  % calculam coeficientii conform formulei
  for k = 1:iter
    h = FeatureMatrix * Theta;
    errors = h - Y;
    gradient = (1 / m) * (FeatureMatrix' * errors);
    Theta = Theta - alpha * gradient;
  endfor

  % punem pe prima linie 0
  Theta = [0; Theta];
end
