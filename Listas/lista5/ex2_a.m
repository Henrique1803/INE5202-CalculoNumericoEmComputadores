%a = [1 -1 1; 1 0 0; 1 1 1];
%y = [4;1;-1];
%c = a\y
%det(a)
%cond(a)

function Lagrange

  clear
  clc

  x = [2 4 6];
  y = [-18 28 106];
  n = length(x);

  % gráfico --------------
  h = (max(x) - min(x))/10; % divide pelo número de intervalos
  x1 = [min(x):h:max(x)];
  n1 = length(x1);
  % ----------------------

  xx = 5;
  px = Lag(x,y,n,xx)

  for i=1:n1
    p1(i) = Lag(x,y,n,x1(i));
  endfor

  p1

  plot(x, y, '*')
  grid
  hold on
  plot(x1, p1)
  hold on
  plot(xx, px, 'go')
end

function p=Lag(x,y,n,xx)
  p = 0;
  for i=1:n
    num = 1;
    den = 1;
    for j=1:n
      if j~= i
        num = num * (xx-x(j));
        den = den * (x(i)-x(j));
      endif
    endfor
    L(i) = num/den;
    p = p + y(i) * L(i);
  end
end

Lagrange


