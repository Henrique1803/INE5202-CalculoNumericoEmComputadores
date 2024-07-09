clc
clear

a = [5 2 0; 2 4 -2; 1 3 4];
b = [2 6 -1];
a1 = a; #cópia para cálculo do resíduo
b1 = b'; #b1 já vai ser matriz coluna
n = length(b);
o = [1:n];

disp('----------------- escalonamento ---------------------')
for k=1:n-1
  #controlar a troca de linhas
  #pivotamento parcial
  pivo = abs(a(o(k),k));
  p=k;
  for i=k+1 : n
    if (abs(a(o(i),k)) > pivo)
      pivo = abs(a(o(i),k));
      p=i;
    endif
  endfor

  #trocar logicamente a linha
  if (p > k)
    #for j=k : n
      #aux = a(k,j);
      #a(k,j)= a(p,j);
      #a(p,j) = aux;
    #endfor
    aux = o(k);
    o(k) = o(p);
    o(p) = aux;
  endif

  # escalonamento
  for i=k+1:n
    #mult = a(i,k)/a(k,k); # (linha, coluna)
    mult = a(o(i),k)/a(o(k),k); # (linha, coluna)
    for j=k:n
      a(o(i),j) = a(o(i),j) - mult*a(o(k),j);
    end
    b(o(i)) = b(o(i)) - mult*b(o(k));
  end
  a
  b
  o
end
disp('-------------- fim do escalonamento ------------------')
disp('-------------- resolver o sistema ------------------')
#até aqui fizemos o escalonamento
#agora vamos resolver o sistema linear
x(n) = b(o(n))/a(o(n),n);
for i=n-1 : -1 : 1
  soma = 0;
  for j=i+1 : n
    soma = soma + a(o(i),j)*x(j);
  end
  x(i) = (b(o(i)) - soma)/a(o(i),i); #indice do x não muda
  x
end
disp('-------------- sistema resolvido ------------------')
a
b
o
x
#aqui o sistema já está resolvido
#calculo do resíduo
r = abs(b1 - a1*x')
#troca das linhas

