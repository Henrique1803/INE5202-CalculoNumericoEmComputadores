clear
clc
x = [1.3 3.4 5.1 6.8 8];
y = [2 5.2 3.8 6.1 5.8];
z = log(y); % já calcula automaticamente o vetor z com os logaritmos
n = length(x);
M = 1; %sempre 1 no ajuste exponencial
for i=1:M+1
  for j=1:M+1
    a(i,j) = 0;
    for k=1 : n
      a(i,j) = a(i,j)+x(k)^(j+i-2);
    end
  end
  b(i) = 0;
  for k=1:n
      b(i) = b(i) + z(k)*x(k)^(i-1);
  end
end

a
b
%det(a)
%cond(a)

c=a\b' %resolve o sistema linear

c(1) = exp(c(1));
c

for k=1 : n
  g(k) = c(1) * exp(c(2) * x(k));
end

d = sum((y-g).^2) % quanto menor, melhor

plot(x, y, '*')
hold on
grid
plot(x, g)

