clear
clc
format long

#a = [4 2 3; 2 -4 -1; -1 1 4]; # matriz, linhas separadas por ;
#b = [7 1 -5];

a = [1 -1 1; 2 3 -1; -3 1 1];
b = [1 4 -1];
# Sistema:
# x - y + z = 1
# 2x + 3y - z = 4
# -3x + y + z = -1
a1 = a; #cópia para cálculo do resíduo
b1 = b'; #b1 já vai ser matriz coluna
n = length(b);
#o = [1:n];

for k=1:n-1
  #controlar a troca de linhas
  #pivotamento parcial
  pivo = abs(a(k,k));
  p=k;
  for i=k+1 : n
    if (abs(a(i,k)) > pivo)
      pivo = abs(a(i,k));
      p=i;
    endif
  endfor

  #trocar fisicamente a linha
  if (p > k)
    for j=k : n
      aux = a(k,j);
      a(k,j)= a(p,j);
      a(p,j) = aux;
    endfor
    aux = b(k);
    b(k) = b(p);
    b(p) = aux;
  endif

  # escalonamento
  for i=k+1:n
    mult = a(i,k)/a(k,k); # (linha, coluna)
    #mult = a(o(i),k)/a(o(k),k); # (linha, coluna)
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
