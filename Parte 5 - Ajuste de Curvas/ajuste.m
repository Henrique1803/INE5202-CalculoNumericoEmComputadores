clear
clc
x = [1.3 3.4 5.1 6.8 8];
y = [2 5.2 3.8 6.1 5.8];
n = length(x);
M = 2; %Grau do ajuste
for i=1:M+1
  for j=1:M+1
    a(i,j) = 0;
    for k=1 : n
      a(i,j) = a(i,j)+x(k)^(j+i-2);
    end
  end
  b(i) = 0;
  for k=1:n
      b(i) = b(i) + y(k)*x(k)^(i-1);
  end
end

a
b
%det(a)
%cond(a)

c=a\b' %resolve o sistema linear

for k=1 : n
  g(k) = 0;
  for i=1 : M+1
    g(k) = g(k) + c(i)*x(k)^(i-1);
  endfor
end

d = sum((y-g).^2) % quanto menor, melhor o ajuste
plot(x, y, '*')
hold on
grid
plot(x, g)

