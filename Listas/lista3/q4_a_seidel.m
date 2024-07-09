clc
clear
a = [3 4 3; 1 5 -1; 6 3 7];
b = [10 7 15];
n = length(b);
erro = 10^-10;
k = 0;
x0 = zeros(1, n);
x = x0;
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
    x0(i) = (b(i)-soma)/a(i,i);
  endfor
  %d = sum(abs(x-x0));
  d = max(abs(x - x0));
  x = x0;
  cont = cont + 1;
end
k
x0
d
r=abs(b' - a*x0')

