clear
clc
x = [0 20 40 60 80 100];
y = [81.4 77.7 74.2 72.4 70.3 68.8];
n = length(x);
M = 1; %Grau do ajuste
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

