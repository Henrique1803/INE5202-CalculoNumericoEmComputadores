function newton
  clear
  clc
  x0 = 1;
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
  y1 = 5*x^(5) - 4*x^(4) + x^(3) - x + 1;
end

function y2 = derivada(x)
  y2 = 25*x^(4) - 16*x^(3) + 3*x^(2) - 1;
end

newton
