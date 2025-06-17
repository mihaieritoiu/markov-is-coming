function [Adj] = get_adjacency_matrix (Labyrinth)

    [m, n] = size(Labyrinth);
    Adj = sparse(m*n+2, m*n+2);
    w = m * n + 1;
    l = m * n + 2;

    for i=1:m
      for j=1:n
        current = Labyrinth(i, j);
        index = (i - 1) * n + j;

        % cazul perete nord
        if bitget(current, 4) == 0 && i > 1
          nindex = (i - 2) * n + j;
          Adj(index, nindex) = 1;
          Adj(nindex, index) = 1;
        endif

        % cazul perete sud
        if bitget(current, 3) == 0 && i < m
          sindex = i * n + j;
          Adj(index, sindex) = 1;
          Adj(sindex, index) = 1;
        endif

        % cazul perete est
        if bitget(current, 2) == 0 && j < n
          eindex = (i - 1) * n + j + 1;
          Adj(index, eindex) = 1;
          Adj(eindex, index) = 1;
        endif

        % cazul perete vest
        if bitget(current, 1) == 0 && j > 1
          vindex = (i - 1) * n + j - 1;
          Adj(index, vindex) = 1;
          Adj(vindex, index) = 1;
        endif

        % cazul castig nord
        if bitget(current, 4) == 0 && i == 1
          Adj(index, w) = 1;
          Adj(w, w) = 1;
        endif

        % cazul castig sud
        if bitget(current, 3) == 0 && i == m
          Adj(index, w) = 1;
          Adj(w, w) = 1;
        endif

        % cazul pierdere est
        if bitget(current, 2) == 0 && j == n
          Adj(index, l) = 1;
          Adj(l, l) = 1;
        endif

        % cazul pierdere vest
        if bitget(current, 1) == 0 && j == 1
          Adj(index, l) = 1;
          Adj(l, l) = 1;
        endif
      endfor
    endfor
end

%{
 j 1 2 3 4 5 6 7 8 9 10 11
i
1  0 0 0 1 0 0 0 0 0 1 0
2  0 0 1 0 0 0 0 0 0 0 0
3  0 1 0 0 0 1 0 0 0 0 1
4  1 0 0 0 1 0 1 0 0 0 0
5  0 0 0 1 0 1 0 0 0 0 0
6  0 0 1 0 1 0 0 0 1 0 0
7  0 0 0 1 0 0 0 1 0 1 0
8  0 0 0 0 0 0 1 0 1 0 0
9  0 0 0 0 0 1 0 1 0 0 1
10 0 0 0 0 0 0 0 0 0 1 0
11 0 0 0 0 0 0 0 0 0 0 1 }%
