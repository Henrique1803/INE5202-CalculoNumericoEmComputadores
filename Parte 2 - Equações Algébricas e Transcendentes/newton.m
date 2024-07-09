format long

function newton
  clear
  clc
  x0 = 1;
  erro = 10^-10;
  fx = funcao(x0);
  k = 0;

  while (abs(fx) > erro)
    k = k+1;
    dx = derivada(x0);
    x0 = x0 - (fx/dx);
    fx = funcao(x0);
  end
  k
  x0
  fx
end

function y1 = funcao(x)
  y1 = exp(x) * sin(x) -1;
end

function y2 = derivada(x)
  y2 = exp(x)*sin(x) + exp(x)*cos(x);
end

newton
