A = [-2.3, 4, -1.5, -1; 4, -9.2, 0.9, 5; -4, 5, -5, 5.2; -8, 8, -13.4, 20];
b = [1, -3, 3, -2]';
x = Gauss(A, b);

r = b - A * x;
printf("Norma del residuo: %f\n", norm(r) / norm(b))
printf("Norma relativa dell'errore: %f\n", norm(x - (A \ b)) / norm(x));
