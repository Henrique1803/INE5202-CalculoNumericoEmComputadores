clear
clc

a = [4 2 3; 2 -4 -1; -1 1 4];
b = [7 1 -5];
n = length(b);

for k=1 : n
  for i=k : n
    soma = 0;
    for t=1 : k-1
      soma = soma + L(i,t)*U(t,k);
    end
    L(i,k) = a(i,k) - soma;
  end
  U(k,k) = 1;
  for j=k+1 : n
    soma = 0;
    for t=1 : k-1
      soma = soma + L(k,t)*U(t,j);
    end
    U(k,j) = (a(k,j)-soma)/L(k,k);
  end
end

L
U

y(1) = b(1)/L(1,1);
for i=2 : n
  soma = 0;
  for j=1 : i-1
    soma = soma + L(i,j)*y(j);
  endfor
  y(i) = (b(i)-soma)/L(i,i); %cuidado com y
end
y

x(n) = y(n)/U(n,n);
for i=n-1 : -1 :1
  soma = 0;
  for j=i+1 : n
    soma = soma + U(i,j)*x(j);
  endfor
  x(i) = (y(i)-soma)/U(i,i);
end
x
r=abs(b' - a*x')


