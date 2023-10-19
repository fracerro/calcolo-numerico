n = 6;
rng(1);
U = triu(rand(n));
y=(-1).^(1:n)';
x = RisolviTriangSup(U, y);

disp(U)
disp("\n")
disp(x)
disp("\n")
disp(U*x)
disp("\n")
disp(y)
