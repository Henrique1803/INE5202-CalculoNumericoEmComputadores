function naoLinear

  clear
  clc
  x = [0.5; 0.5; 0.5];
  erro = 10^-3;
  k = 0;
  d = 1;
  while(sum(abs(d)) > erro)
    k = k+1;
    J(1,1) = 2*(x(1));
    J(1,2) = 2*(x(2));
    J(1,3) = 2*(x(3));
    J(2,1) = 4*(x(1));
    J(2,2) = 2*(x(2));
    J(2,3) = -4;
    J(3,1) = 6*(x(1));
    J(3,2) = -4;
    J(3,3) = 2*(x(3));
    F(1) = funcao1(x);
    F(2) = funcao2(x);
    F(3) = funcao3(x);
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
  y1 = (x(1))^2 + (x(2))^2 + (x(3))^2 -1;
end

function y2=funcao2(x)
  y2 = 2*(x(1))^2 + (x(2))^2 -4*x(3);
end

function y3=funcao3(x)
  y3 = 3*(x(1))^2 -4*x(2) + (x(3))^2 -3;
end


