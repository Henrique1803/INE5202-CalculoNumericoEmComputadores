clear
clc
format long

% limites de integração
a = 0;
b = 1;

% número de subintervalos
n = 2;

% distância de cada subintervalos
h = (b-a)/n;
% vetor de pontos em x
x = [a:h:b]
% função a ser integrada (vetor de pontos em y)
y = exp(x)

s1 = 0;
s2 = 0;
for i=1 : (n/2)-1
  s1 = s1 + y(2*i);
  s2 = s2 + y(2*i+1);
end
s1 = s1 + y(n);
S = (h/3)*(y(1) + 4*s1 + 2*s2 + y(n+1)) % Simpson
