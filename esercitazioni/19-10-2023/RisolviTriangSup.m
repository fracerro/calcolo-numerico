% dovrebbe workare
function x = RisolviTriangSup(U, y)
  [n, n] = size(U);
  x = zeros(n, 1);
  for i=n:-1:1
    x(i) = y(i);
    for j=i+1:n
      x(i) = x(i) - U(i, j) * x(j);
    end
    x(i) = x(i) / U(i, i);
  end
