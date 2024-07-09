format short

function falsa_posicao
  clear
  clc
  a=0;
  b=1;

  fa = funcao(a);
  fb = funcao(b);
  erro = 10^-3;
  k = 0; %iterações
  fxm = 1;
  while (abs(fxm) > erro)
    disp('');
    k = k+1;
    xm = a - ((fa*(b-a))/(fb-fa))
    fxm = funcao(xm)
    a
    fa
    b
    fb

    if fa * fxm < 0
      b = xm;
      fb = fxm;
    else
      a = xm;
      fa = fxm;
    end
    a
    b
  end
  disp('');
  xm
  fxm
  a
  fa
  b
  fb
  k
end

function y = funcao(x)
  y = x^3 - 2*e^(-x);
end

falsa_posicao

