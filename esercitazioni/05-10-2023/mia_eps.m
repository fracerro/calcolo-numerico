function [b] = mia_eps()
  a = 1;
  b = 1;
  while a + b > a,
    b = b / 2;
  end
  % all'ultima iterazione divido ancora per 2, perciò b = eps / 2
