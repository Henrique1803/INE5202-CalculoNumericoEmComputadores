%a = [1 -1 1; 1 0 0; 1 1 1];
%y = [4;1;-1];
%c = a\y
%det(a)
%cond(a)

clear
clc

%x = [-1 0 1];
%y = [4 1 -1];
x = [2:0.05:2.15];
y = log(x);
n = length(x);

% gráfico --------------
h = (max(x) - min(x))/10; % divide pelo número de intervalos
x1 = [min(x):h:max(x)];
n1 = length(x1);
% ----------------------

for i=1:n
  for j=1:n
    a(i,j) = x(i)^(j-1);
  endfor
end
cond(a)
c = a\y'

%xx = 0.5; % avaliando no pto 0.5 (está dentro do intervalo 0 e 1)
xx = 2.14;
px = 0;
for j=1:n
  px = px + c(j)*xx^(j-1);
endfor
px
exato = log(xx)
pause

for i=1:n1
  p(i) = 0;
  for j=1:n
    p(i) = p(i) + c(j)*x1(i)^(j-1);
  endfor
end
p
x1

plot(x, y, '*')
grid
hold on
plot(x1, p)
