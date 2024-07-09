% letra a:

clear
clc
format short

a = [3 2 -5; 2 -3 1; 1 4 -1]; # matriz, linhas separadas por ;
b = [0 0 4];

a1 = a; #cópia para cálculo do resíduo
b1 = b'; #b1 já vai ser matriz coluna
n = length(b);

for k=1:n-1
  for i=k+1:n
    mult = a(i,k)/a(k,k); # (linha, coluna)
    for j=k:n
      a(i,j) = a(i,j) - mult*a(k,j);
    end
    b(i) = b(i) - mult*b(k);
  end
end
a
b
#até aqui fizemos o escalonamento
#agora vamos resolver o sistema linear
x(n) = b(n)/a(n,n);
for i=n-1 : -1 : 1
  soma = 0;
  for j=i+1 : n
    soma = soma + a(i,j)*x(j);
  end
  x(i) = (b(i) - soma)/a(i,i);
end
x
#aqui o sistema já está resolvido
#calculo do resíduo
r = abs(b1 - a1*x')
