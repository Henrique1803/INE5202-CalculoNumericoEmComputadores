function bissecao
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

bissecao
