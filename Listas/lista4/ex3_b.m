function exercicio_interp_dif_newton
  clear
  clc

  x = [0 2 3 5];
  y = [1 7 13 31];
  n = 4;

  % gráfico --------------
  h = (max(x) - min(x))/10; % divide pelo número de intervalos
  x1 = [min(x):h:max(x)];
  n1 = length(x1);
  % ----------------------

  a(:,1) = y;

  for j=2:n
    for i=j:n
      a(i,j) = (a(i,j-1) - a(i-1,j-1))/ (x(i) - x(i-j+1));
    endfor
  end
  a
  xx = 4;
  px = poli(x, n, a, xx)

  for i=1:n1
    p1(i) = poli(x,n,a,x1(i));
  endfor

  p1

  plot(x, y, '*')
  grid
  hold on
  plot(x1, p1, 'mo')
  hold on
  plot(xx, px, 'go')

end

function p = poli(x, n, a, xx)
  p=0;
  for i=1:n
    m=1;
    for j=1:i-1
      m = m*(xx-x(j));
    endfor
    p = p+a(i,i)*m;
  end
end
