function falsa_posicao
  clear
  clc
  a=2;
  b=3;

  fa = funcao(a);
  fb = funcao(b);
  erro = 10^-3;
  k = 0; %iterações
  fxm = 1;
  while (abs(fxm) > erro)
    k = k+1;
    xm = a - ((fa*(b-a))/(fb-fa));
    fxm = funcao(xm);

    if fa * fxm < 0
      b = xm;
      fb = fxm;
    else
      a = xm;
      fa = fxm;
    end
  end
  xm
  fxm
  a
  fa
  b
  fb
  k
end

function y = funcao(x)
  y = x*cos(x) + 1.9;
end

falsa_posicao

