function [decoded_path] = decode_path(path, lines, cols)

  % WIN este ultimul element din path, asa ca il eliminam
    path = path(1:end-1);

  decoded_path = zeros(length(path), 2);

  for i = 1:length(path)
    rand = ceil(path(i) / cols);
    % folosim indexarea de la 0 pentru rezultatul corect
    coloana = mod(path(i) - 1, cols) + 1;
    decoded_path(i, :) = [rand, coloana];
  end
end
