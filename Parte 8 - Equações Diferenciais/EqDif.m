function EqDif
  clear
  clc

  a = 0;
  b = 0.5;
  n = 4; % número de pontos
  h = (b-a)/n;
  x = [a:h:b];
  % -------------------- Euler ----------------------
  y1(1) = -1;

  for i=1:n
    y1(i+1)=y1(i)+h*fxy(x(i),y1(i));
  endfor
  y1

  % ------------------- RK2 (Runge-Kutta) ----------------
  y2(1) = -1;
  for i=1:n
    k1 = h*fxy(x(i), y2(i));
    k2 = h*fxy(x(i)+h, y2(i)+k1);
    y2(i+1)=y2(i) + (k1+k2)/2;
  endfor
  y2

  % ------------------- RK4 (Runge-Kutta) ----------------
  y4(1) = -1;
  for i=1:n
    k1 = h*fxy(x(i), y4(i));
    k2 = h*fxy(x(i)+h/2, y4(i)+k1/2);
    k3 = h*fxy(x(i)+h/2, y4(i)+k2/2);
    k4 = h*fxy(x(i)+h, y4(i)+k3);
    y4(i+1)=y4(i) + (k1+2*k2 + 2*k3 + k4)/6;
  endfor
  y4

  % ------------------- exata ----------------
  ye = -3*exp(-x) - 2*x + 2 %exata

  % ------------------- erros -----------------
  erro1 = abs(ye-y1)
  erro2 = abs(ye-y2)
  erro4 = abs(ye-y4)

  % ----------------- gráfico -----------------
  plot(x, ye)
  grid
  hold on
  plot(x,y1,'g')
  hold on
  plot(x, y2,'r')
  hold on
  plot(x, y4,'k')

end

function f=fxy(x,y)
  f = -2*x - y;
end

