format long

function falsa_posicao
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
    xm = a - ((fa*(b-a))/(fb-fa));
    fxm = funcao(xm);

    r = fa + (((fb-fa)/(b-a))*(x-a));
    plot(x, r, 'r') % aparecer na curva desenhada anteriormente
    hold on

    if fa * fxm < 0
      b = xm;
      fb = fxm;
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

falsa_posicao
%gráfico (vetor de pontos): x = [0:0.1:1]
