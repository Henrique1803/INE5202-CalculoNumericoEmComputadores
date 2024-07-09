clc
clear
format long
a = [3 -1 -1; 1 3 1; 2 -2 4];
b = [1 5 4];
n = length(b);
erro = 10^-10;
k = 0;
x0 = zeros(1, n);
x = x0;
d = 1;
w = 0.85; %fator de relaxação: ir refinando com base no número de iterações
% w = 1 voltamos para gauss seidel

while (d > erro)
  k = k+1;
  for i=1 : n
    soma = 0;
    for j=1 : n
      if j ~= i
        soma = soma + a(i,j)*x0(j);
      endif
    endfor
    %x0(i) = (b(i)-soma)/a(i,i);
    x0(i) = (1-w)*x0(i) + w*((b(i)-soma)/a(i,i));
  endfor
  d = sum(abs(x-x0));
  %d = max(abs(x-x0));
  x = x0;
end
k
x0
d
% gauss seidel é melhor que jacob
