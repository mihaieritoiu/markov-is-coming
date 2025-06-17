function [FeatureMatrix] = prepare_for_regression(InitialMatrix)
  [m, n] = size(InitialMatrix);

  % initializam matricea cu n + 1 coloane pentru ca valorile
  % semi-furnished, furnished si unfurnished se vor descompune
  % in cate 2 valori
  FeatureMatrix = zeros(m, n + 1);

  for i = 1:m
    col = 1;
    for j = 1:n
      if strcmp(InitialMatrix(i, j), 'yes')
        FeatureMatrix(i, col) = 1;
        col = col + 1;

      elseif strcmp(InitialMatrix(i, j), 'no')
        FeatureMatrix(i, col) = 0;
        col = col + 1;

      elseif strcmp(InitialMatrix(i, j), 'furnished')
        FeatureMatrix(i, col) = 0;
        FeatureMatrix(i, col + 1) = 0;
        col = col + 2;

      elseif strcmp(InitialMatrix(i, j), 'unfurnished')
        FeatureMatrix(i, col) = 0;
        FeatureMatrix(i, col + 1) = 1;
        col = col + 2;

      elseif strcmp(InitialMatrix(i, j), 'semi-furnished')
        FeatureMatrix(i, col) = 1;
        FeatureMatrix(i, col + 1) = 0;
        col = col + 2;

      else
        FeatureMatrix(i, col) = str2double(InitialMatrix(i, j));
        col = col + 1;
      endif
    endfor
  endfor
end
