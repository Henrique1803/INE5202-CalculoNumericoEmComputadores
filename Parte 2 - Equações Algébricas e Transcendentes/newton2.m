format long

function newton2
  clear
  clc
  x0 = 1;

  a = 0;
  b = 1;
  h = (b-a)/10;
  x = [a:h:b];
  y = funcao(x);
  plot(x, y)
  grid
  hold on

  erro = 10^-10;
  fx = funcao(x0);
  k = 0;

  while (abs(fx) > erro)
    k = k+1;
    dx = derivada(x0);

    r = dx*(x-x0) + fx;
    plot(x, r, 'r')
    hold on

    x0 = x0 - (fx/dx);
    fx = funcao(x0);
  end
  k
  x0
  fx
end

function y1 = funcao(x)
  y1 = exp(x) .* sin(x) -1;
end

function y2 = derivada(x)
  y2 = exp(x)*sin(x) + exp(x)*cos(x);
end

newton2
