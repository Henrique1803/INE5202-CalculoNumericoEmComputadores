format long

function secante
  clear
  clc
  x0 = 0;
  x1 = 2;
  erro = 10^-10;
  fx0 = funcao(x0);
  fx1 = funcao(x1);
  k = 0;

  while (abs(fx1) > erro)
    k = k+1;
    #próximo valor usando a fórmula da secante
    x_next = x1 - ((fx1 * (x1 - x0)) / (fx1 - fx0));
    x0 = x1;
    x1 = x_next;
    fx0 = funcao(x0);
    fx1 = funcao(x1);
  end
  k
  x1
  fx1
end

function y1 = funcao(x)
  y1 = exp(x) * sin(x) -1;
end

secante
