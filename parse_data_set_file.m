function [Y, InitialMatrix] = parse_data_set_file(file_path)

  fileID = fopen(file_path, 'r');

  size = fscanf(fileID, '%d %d', [1, 2]);
  m = size(1);
  n = size(2);
  Y = zeros(m, 1);

  % cream matricea cu m linii si n coloane
  InitialMatrix = cell(m, n);

  % citim elementele matricei
  for i = 1:m
    Y(i) = fscanf(fileID, '%f', 1);
    for j = 1:n
      InitialMatrix{i, j} = fscanf(fileID, '%s', 1);
    endfor
  endfor

  fclose(fileID);
end
