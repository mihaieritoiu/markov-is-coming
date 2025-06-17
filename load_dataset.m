function [X, y] = load_dataset(path)

  % importam fisierul .mat
  data = load(path);

  % extragem datele
  X = data.X;
  y = data.y;
end
