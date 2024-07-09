clear
clc
format long
a = 0;
b = 1;
n = 4;
h = (b-a)/n;
x = [a:h:b]
y = x.^3.*exp(x)
s = 0;
for i=2 : n
  s = s + y(i);
end
T = (h/2)*(y(1) + 2*s + y(n+1)) % Trapézio
s1 = 0;
s2 = 0;
for i=1 : (n/2)-1
  s1 = s1 + y(2*i);
  s2 = s2 + y(2*i+1);
end
s1 = s1 + y(n);
S = (h/3)*(y(1) + 4*s1 + 2*s2 + y(n+1)) % Simpson
