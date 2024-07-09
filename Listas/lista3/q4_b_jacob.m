clc
clear
a = [3 2 -5; 2 -3 1; 1 4 -1];
b = [0 0 4];
n = length(b);
erro = 10^-6;
k = 0;
x0 = zeros(1, n);
d = 1;
cont = 0;
lim = 2;
while (cont < lim)
  k = k+1;
  for i=1 : n
    soma = 0;
    for j=1 : n
      if j ~= i
        soma = soma + a(i,j)*x0(j);
      endif
    endfor
    x(i) = (b(i)-soma)/a(i,i);
  endfor
  %d = sum(abs(x-x0));
  d = max(abs(x-x0));
  x0 = x;
  cont = cont + 1;
end
k
x0
d
r=abs(b' - a*x0')
