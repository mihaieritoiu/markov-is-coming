function [Theta] = normal_equation(FeatureMatrix, Y, tol, iter)
  % matricea sistemului X'X
  A = FeatureMatrix' * FeatureMatrix;

  % vectorul X'Y
  b = FeatureMatrix' * Y;

  % verificam daxa matricea este pozitiv definita
  val = eig(A);
  if any(val <= 0)
    Theta = [0; zeros(size(FeatureMatrix, 2), 1)];
    return;
  endif

  % implementare conform algoritmului din enunt
  x = zeros(size(A, 1), 1);
  r = b - A * x;
  v = r;
  tolsq = tol^2;
  k = 1;

  while k <= iter && r' * r > tolsq
    tk = (r' * r) / (v' * A * v);
    x = x + tk * v;
    rnew = r - tk * A * v;
    sk = (rnew' * rnew) / (r' * r);
    v = rnew + sk * v;
    r = rnew;
    k = k + 1;
  endwhile

  % adaugam 0 la inceput
  Theta = [0; x];
end
