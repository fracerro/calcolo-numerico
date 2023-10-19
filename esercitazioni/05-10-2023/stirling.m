function stirling(s_max)
  % calcolo del fattorile dei numeri da 1 a n_max con l'approsimazione di Stirling
  sqrt_2pi = sqrt(2 * pi)
  e = exp(1)
  fact = 1;
  for n=1:s_max
    fact = fact * n;
    approx = sqrt_2pi * sqrt(n) * (n / e) ^ n;
    err = abs(fact - approx);
    err_relativo(n) = err / fact;
    disp([n, fact, approx, err, err_relativo(n)])
  end
  plot(err_relativo)
