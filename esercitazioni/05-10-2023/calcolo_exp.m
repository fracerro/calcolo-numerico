function [x, x_true] = calcolo_exp(t, nmax, tol)
  % calcolo di exp(t) tramite taylor
  format long e
  x_true = exp(t);
  x = 1;
  fact = 1;
  for k=1:nmax
    % fact tiene conto del fattoriale che non viene ricalcolato ad ogni iterazione
    fact = fact * k;
    x = x + t^k / fact;
    err(k) = abs(x - x_true);
    disp([k, x, x_true, err(k), err(k) / abs(x_true)]);
    if (err(k) < tol), break, end
  end

  % dovrebbe fare un grafico ma ancora non testato
  semilogy(err, 'ro')
