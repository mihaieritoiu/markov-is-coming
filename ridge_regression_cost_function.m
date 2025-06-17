function [Error] = ridge_regression_cost_function(Theta, Y, FeatureMatrix, lambda)

  % facem apel la functia scrisa anterior
  Error = linear_regression_cost_function(Theta, Y, FeatureMatrix);

  s = sum(Theta(2:end).^2);

  % atribuim valoare finala variabilei Error
  Error = Error + lambda * s;
end
