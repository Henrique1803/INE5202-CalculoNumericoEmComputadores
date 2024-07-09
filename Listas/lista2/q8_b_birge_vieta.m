
%a = [1 -4 6 -4 0.5]; # polinômio: x^(4) - 4*x^(3) + 6*x^(2) - 4*x + 0.5;

clear
clc
a = [1 -4 6 -4 0.5]; # polinômio: x^3 + 2x -1
n = length(a);
x0 = 0; #para jogar um número complexo e achar raiz complexa: sqrt(-1) -> entende como número complexo
erro = 10^-10;
k = 0;
b(1) = a(1);
c(1) = b(1);
b(n) = 1; #qualquer valor maior que o erro, somente para entrar no laço
while (abs(b(n)) > erro)
  k = k+1;
  for i=2:n-1
    b(i) = b(i-1)*x0 + a(i);
    c(i) = c(i-1)*x0 + b(i);
  end
  b(n) = b(n-1)*x0 + a(n);
  x0 = x0 - (b(n)/c(n-1));
end
k-1
x0
b(n)
