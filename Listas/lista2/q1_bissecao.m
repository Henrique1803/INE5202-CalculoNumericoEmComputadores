format short

function bissecao
  clear
  clc
  a=2;
  b=3;

  fa = funcao(a);
  fb = funcao(b);
  erro = 10^-2;
  k = 0; %iterações
  fxm = 1;
  while (abs(fxm) > erro)
    disp('');
    k = k+1;
    xm = (a+b)/2
    fxm = funcao(xm)
    a
    fa
    b
    fb
    if fa * fxm < 0
      b = xm;
    else
      a = xm;
      fa = fxm;
    end
  end
  disp('');
  k
end

function y = funcao(x)
  y = x^2 - 5; % .* o ponto é utilizado para fazer operação com vetor (se necessário) sem usar for
end

bissecao
%gráfico (vetor de pontos): x = [0:0.1:1]
