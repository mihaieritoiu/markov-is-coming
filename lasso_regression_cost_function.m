function [Error] = lasso_regression_cost_function(Theta, Y, FeatureMatrix, lambda)

  % implementam folosindu-ne de o functie anterioara
  [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix);

  s = sum(abs(Theta(2:end)));

  % eroare calculata conform formulei
  Error = Error * 2 + lambda * s;
end
