function [Labyrinth] = parse_labyrinth(file_path)
  % deschidem fisierul
  fid = fopen(file_path, 'r');

  dim = fscanf(fid, '%d %d', [1, 2]);
  m = dim(1);
  n = dim(2);

  % initializam matricea cu 0
  Labyrinth = zeros(m, n);

  % citim liniile si le punem in matrice
  for i = 1:m
    l = fscanf(fid, '%d', [1 n]);
    Labyrinth(i,:) = l;
  endfor
  fclose(fid);
end
