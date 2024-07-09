clear
clc
format long

% limites de integração
a = 0;
b = 1;

% número de subintervalos
n = 2;

% definindo altura de cada trapézio
h = (b-a)/n;
x = [a:h:b]

% função a ser integrada
y = x.^2

s = 0;
for i=2 : n
  s = s + y(i);
end
T = (h/2)*(y(1) + 2*s + y(n+1)) % Trapézio

