function [Y, InitialMatrix] = parse_csv_file(file_path)
  fid = fopen(file_path, 'r');

  csv = textscan(fid, '%s', 'delimiter', '\n');
  csv = csv{1}(2:end);

  % atribuim variabilelor m si n numarul liniilor, respectiv coloanelor
  m = length(csv);
  n = numel(strsplit(csv{1}, ',')) - 1;

  % initializam matricele
  Y = zeros(m, 1);
  InitialMatrix = cell(m, n);

  % construim matricele
  % Y va contine preturile (prima coloana din fisier)
  % InitialMatrix va contine toate celelalte informatii
  for i = 1:m
    % punem in Y(i) primul element al liniei, reprzentand pretul
    Y(i) = str2double(strsplit(csv{i}, ','){1});
    % punem in matrice restul valorilor
    InitialMatrix(i, :) = strsplit(csv{i}, ',')(2:end);
  endfor

  fclose(fid);
end

% am folosit sursa:
% https://stackoverflow.com/questions/29080425/how-to-perform-string-to-double-in-matlab-using-delimiter
