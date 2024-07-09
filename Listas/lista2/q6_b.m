function newton
  clear
  clc
  x0 = 0;
  erro = 10^-6;
  fx = funcao(x0);
  k = 0;

  while (abs(fx) > erro)
    k = k+1;
    dx = derivada(x0);
    %disp(['Xk: ' num2str(x0)]);
    x0 = x0 - (fx/dx);
    %disp(['Xk+1: ' num2str(x0)]);
    fx = funcao(x0);
    %disp(['f(Xk+1): ' num2str(fx)]);
  end
  k
  x0
  fx
end

function y1 = funcao(x)
  y1 = x - cos(x);
end

function y2 = derivada(x)
  y2 = 1 + sin(x);
end

newton
