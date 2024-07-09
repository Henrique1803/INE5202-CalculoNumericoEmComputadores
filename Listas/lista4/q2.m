function naoLinear

  clear
  clc
  x = [-5; -5];
  erro = 10^-3;
  k = 0;
  d = 1;
  while(sum(abs(d)) > erro)
    k = k+1;
    J(1,1) = 2 + exp(-x(1));
    J(1,2) = -1;
    J(2,1) = -1;
    J(2,2) = 2 + exp(-x(2));
    F(1) = funcao1(x);
    F(2) = funcao2(x);
    J;
    F;
    d = J\-F';  %método direto para resolver Ax = b
    x = x + d;
  end
  k
  x
  d

end

function y1=funcao1(x)
  y1 = 2*x(1) -x(2) -exp(-x(1));
end

function y2=funcao2(x)
  y2 = -x(1) + 2*x(2)  -exp(-x(2));
end





