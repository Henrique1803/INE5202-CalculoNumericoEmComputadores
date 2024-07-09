clc
clear
a = [5 2 0; 2 4 -2; 1 3 4];
b = [2 6 -1];
n = length(b);
erro = 10^-10;
k = 0;
x0 = zeros(1, n);
x = x0;
d = 1;
cont = 0;
lim = 3;
while (cont < lim)
  k = k+1;
  for i=1 : n
    soma = 0;
    for j=1 : n
      if j ~= i
        soma = soma + a(i,j)*x0(j);
      endif
    endfor
    x0(i) = (b(i)-soma)/a(i,i);
  endfor
  %d = sum(abs(x-x0));
  d = max(abs(x - x0)); % Norma infinita
  %d = max(abs(x-x0));
  x = x0;
  cont = cont + 1;
end
k
x0
d
r=abs(b' - a*x0')

