format long

function q1_newton
  clear
  clc
  x0 = 2;
  erro = 10^-6;
  fx = funcao(x0);
  k = 0;

  while (abs(fx) > erro)
    disp('');
    k = k+1;
    dx = derivada(x0);
    disp(['Xk: ' num2str(x0)]);
    x0 = x0 - (fx/dx);
    disp(['Xk+1: ' num2str(x0)]);
    fx = funcao(x0);
    disp(['f(Xk+1): ' num2str(fx)]);
  end
  %k
  %x0
  %fx
end

function y1 = funcao(x)
  y1 = x^2 - 5;
end

function y2 = derivada(x)
  y2 = 2*x;
end

q1_newton
