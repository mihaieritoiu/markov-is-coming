function [G, c] = get_Jacobi_parameters(Link)

  % calculam dimensiunea, fara liniile pentru WIN si LOSE
  n = size(Link, 1) - 2;

  % luam doar interiorul labirintului
  G = sparse(Link(1:n, 1:n));

  % luam doar vectorul coloana pentru formula
  c = sparse(Link(1:n, n+1));
end

