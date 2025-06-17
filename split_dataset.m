function [X_train, y_train, X_test, y_test] = split_dataset(X, y, percent)

  % calculam numarul de pixeli
  nr = floor(percent * size(X, 1));

  % amestecam indicii
  index = randperm(size(X, 1));

  X = X(index, :);
  Y = y(index, :);

  % impartim datele dupa train sau test
  X_train = X(1:nr, :);
  y_train = Y(1:nr, :);
  X_test = X(nr + 1:end, :);
  y_test = Y(nr + 1:end, :);
end
