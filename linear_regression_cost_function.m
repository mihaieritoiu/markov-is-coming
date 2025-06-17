function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)
  % initialiam vriabilele
  m = size(FeatureMatrix, 1);
  Error = 0;

  %ignoram primul element al matricei
  Theta = Theta(2:end);

  % calculam suma din formula
  for i = 1:m
    h = (FeatureMatrix(i,:) * Theta - Y(i)) ^ 2;
    Error = Error + h;
  endfor

  % atribuim variabilei Error valoarea finala calculata conform formulei
  Error = (1 / (2 * m)) * Error;
end
