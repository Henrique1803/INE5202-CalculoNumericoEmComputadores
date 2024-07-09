clear
clc
n = 2; % pontos de integração

% TABELA ESTÁ NO MOODLE
if n == 1
  t(1) = 0;
  A(1) = 2;
elseif n == 2
  t(1) = -1 / sqrt(3);
  t(2) = 1 / sqrt(3);
  A(1) = 1;
  A(2) = 1;
elseif n == 3
  t(1) = -0.7745966692414834;
  t(2) = 0.7745966692414834;
  t(3) = 0;
  A(1) = 0.5555555555555556;
  A(2) = 0.5555555555555556;
  A(3) = 0.8888888888888888;
elseif n == 4
  t(1) = -0.8611363115940526;
  t(2) = 0.8611363115940526;
  t(3) = -0.3399810435848563;
  t(4) = 0.3399810435848563;
  A(1) = 0.3478548451374538;
  A(2) = 0.3478548451374538;
  A(3) = 0.6521451548625461;
  A(4) = 0.6521451548625461;
endif

a = 0;
b = 1;
dx = (b-a)/2;
Q = 0;
for i=1:n
  x(i) = ((b-a)/2)*t(i)+(b+a)/2;
  F(i) = (x(i)^3)*dx; % integral
  Q = Q + A(i)*F(i);
end
Q % valor da integral
F
