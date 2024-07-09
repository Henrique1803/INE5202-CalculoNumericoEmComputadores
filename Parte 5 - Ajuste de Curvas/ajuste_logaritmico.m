clear
clc
x = [1.3 3.4 5.1 6.8 8];
y = [2 5.2 3.8 6.1 5.8];
z = log(x); % já calcula automaticamente o vetor z com os logaritmos
n = length(x);
M = 1; %sempre 1 no ajuste exponencial

for i = 1 : M + 1
  for j = 1 : M + 1
    a(i,j) = 0;
    for k = 1 : n
       a(i,j) += z(k)^(j+i-2);
    endfor
  endfor
  b(i) = 0;
  for k = 1 : n
    b(i) += y(k)*z(k)^(i-1);
  endfor
endfor

printf("Matriz A:\n");
a
printf("Vetor B:\n");
b
printf("Determinante de A:\n");
d = det(a)
printf("Condicionamento de A:\n");
n_cond = cond(a)
% resolve o sistema linear
c = a\b';

% vetor inteiro deve ser operado com exponencial
printf("Vetor C de coeficientes:\n");
c

% gera o vetor g(x) para construção do gráfico
for k = 1 : n
  g(k) = c(1) + c(2) * log(x(k));
endfor

d = sum((y-g).^2) % quanto menor, melhor (erro)

plot(x, y, '*')
hold on
grid
plot(x, g)

