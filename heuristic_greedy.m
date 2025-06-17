function [path] = heuristic_greedy(start_position, probabilities, adjacency_matrix)
  % folosim algoritmul din enuntul problemei

  path = start_position;

  % vom seta pentru fiecare stare false peste tot
  visited = false(length(probabilities), 1);

  visited(start_position) = true;

  WIN = length(probabilities) - 1;

  while path != 0
    position = path(end);

    if position == WIN
      return;
    endif

    % gasim vecinii in care putem merge
    neigh = find(adjacency_matrix(position, :) == 1);

    % pastram vecinii nevizitati folosin operatorul ~ care inverseaza bitii
    unvisited = neigh(~visited(neigh));

    if isempty(unvisited)
      path(end) = [];
    else
      % vom vizita vecinul cu probabilitatea cea mai mare
      [val, poz] = max(probabilities(unvisited));
      next = unvisited(poz);
      visited(next) = true;
      path(end + 1) = next;
    endif
  endwhile
end

