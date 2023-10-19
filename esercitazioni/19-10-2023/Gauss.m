% funziona
function [x] = Gauss(A, b)
  [n, n] = size(A);
  for k=1:n-1
    for i=k+1:n
      m = A(i, k) / A(k, k);
      for j=k+1:n
        A(i, j) = A(i, j) - m * A(k, j);
      end
      b(i) = b(i) - m * b(k);
    end
  end
  
  U = triu(A);
  x = RisolviTriangSup(U, b);

