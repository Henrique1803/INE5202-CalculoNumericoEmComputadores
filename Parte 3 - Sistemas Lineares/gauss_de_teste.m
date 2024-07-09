clc
clear
format short

% Dados de entrada
a = [
    2 1 0 0 0;...
    1 2 1 0 0;...
    0 1 2 1 0;...
    0 0 1 2 1;...
    0 0 0 1 2;
];
b = [4; 4; 0; 0; 2];

n = length(b);

% Inicialização dos vetores
r = diag(a);
d = diag(a, -1);
d = [d; 0];
t = diag(a, 1);
t = [0; t];

r
d
t

% Eliminação gaussiana para zerar elementos de t e atualizar r e b
for i = 2:n
  r(i) = r(i) - (t(i)/r(i-1))*d(i-1);
  b(i) = b(i) - (t(i)/r(i-1))*b(i-1);
end

% Retrosubstituição
x = zeros(n, 1);
x(n) = b(n) / r(n);
for i = n-1:-1:1
    x(i) = (b(i) - d(i) * x(i+1)) / r(i);
end

x

