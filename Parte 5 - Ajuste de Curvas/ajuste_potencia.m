clear
clc
x = [1.3 3.4 5.1 6.8 8];
y = [2 5.2 3.8 6.1 5.8];
z = log(y); % Calcula o logaritmo natural de y
t = log(x); % Calcula o logaritmo natural de x
n = length(x);
M = 1; % Grau do polinômio (sempre 1 para ajuste linear)

% Inicializa as matrizes a e b
for i = 1:M+1
  for j = 1:M+1
    a(i,j) = 0;
    for k = 1:n
      a(i,j) = a(i,j) + t(k)^(j+i-2);
    end
  end
  b(i) = 0;
  for k = 1:n
      b(i) = b(i) + z(k)*t(k)^(i-1);
  end
end

a
b

c = a\b'; % Resolve o sistema linear

c(1) = exp(c(1)); % c(1) agora é o coeficiente multiplicativo a
c

% Calcula os valores ajustados
for k = 1:n
  g(k) = c(1) * x(k)^c(2);
end

d = sum((y-g).^2); % Quanto menor, melhor

% Plota os resultados
plot(x, y, '*')
hold on
grid
plot(x, g)

