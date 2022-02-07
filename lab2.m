clc
clear all
a=0; % Pocetna tocka intervala
b=3.14159 / 2; % Krajnja tocka Intervala
x=a; % pocetna tocka pocetak intervala
brojac = 1;
n=[8 16 32 64];

for i = 1 : 4
  x = a;
  h = (b-a) / n(i);
  s=funk1(a); % f(x0)
  for j= 1 : (n(i)-1) %
    x= x+h; % sljedeca tocka xi
    s = s + 2*funk1(x); % suma svih 2*f(xi)
  end
  s=s+funk1(b); % suma+ f(xn)
  Integ(brojac)=(b-a)*s/(2*n(i)); % Konacni izracun integrala
  fprintf("Za n = %d ", n(i));
  fprintf('\nI=%4.6f\n' ,Integ(brojac))
  brojac = brojac + 1;
endfor

Integ

if(Integ(1) < Integ(4))
  pogreska(1) = (1 - (Integ(1) / Integ(4))) * 100;
else
  pogreska(1) = (1 - (Integ(4) / Integ(1))) * 100;
endif

if(Integ(2) < Integ(4))
  pogreska(2) = (1 - (Integ(2) / Integ(4))) * 100;
else
  pogreska(2) = (1 - (Integ(4) / Integ(2))) * 100;
endif

if(Integ(3) < Integ(4))
  pogreska(3) = (1 - (Integ(3) / Integ(4))) * 100;
else
  pogreska(3) = (1 - (Integ(4) / Integ(3))) * 100;
endif

pogreska
