clear
clc
n = 2; % pontos de integração

% TABELA ESTÁ NO MOODLE
if n==1
  t(1) = 0;
  A(1) = 0;
end
if n==2
  t(1) = -0.57;
  t(2) =  0.57
  A(1) =
  A(2) =
end
if n==4:
  t(1) = 0.861;
  t(2) = 0.861;
  t(3) = 0.33;
  t(4) = 0.33;
  % A(1) = 0.34
  A(4) = 0.65;
end

a = 0;
b = 1;
dx = (b-a)/2;
Q = 0;
for i=1:n
  x(i) = ((b-a)/2)*t(i)+(b+a)/2;
  F(i) = (x(i)^3*exp(x(i)))*dx;
  Q = Q + A(i)*F(i);
end
Q
F
