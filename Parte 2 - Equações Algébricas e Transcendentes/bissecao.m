format long

function bissecao
  clear
  clc
  a=0;
  b=1;

  h = (b-a)/10;
  x = [a:h:b];
  y = funcao(x);
  plot(x, y)
  grid %tracejar pra visualizar melhor as linhas
  hold on % mantém a janela gráfica aberta e o que plotar em seguida vai ser nessa janela gráfica

  fa = funcao(a);
  fb = funcao(b);
  erro = 10^-10;
  k = 0; %iterações
  fxm = 1;
  while (abs(fxm) > erro)
    k = k+1;
    xm = (a+b)/2;
    fxm = funcao(xm);
    plot(xm, fxm, '*r') % aparecer na curva desenhada anteriormente
    hold on
    if fa * fxm < 0
      b = xm;
    else
      a = xm;
      fa = fxm;
    end
  end
  k
  xm
  fxm
end

function y = funcao(x)
  y = exp(x) .* sin(x) -1; % .* o ponto é utilizado para fazer operação com vetor (se necessário) sem usar for
end

bissecao
%gráfico (vetor de pontos): x = [0:0.1:1]
