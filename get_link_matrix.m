function [Link] = get_link_matrix (Labyrinth)

  % preluam matricea de adiacenta facuta la functia anterioara
  Adj = get_adjacency_matrix(Labyrinth);

  [m, n] = size(Adj);

  Link = sparse(m, n);

  for i=1:m
    s = sum(Adj(i, :));
    if s != 0
      for j = 1:n
        if Adj(i, j) == 1
          Link(i, j) = 1 / s;
        endif
      endfor
    endif
  endfor
end
