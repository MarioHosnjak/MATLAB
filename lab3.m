x = input('Unesite x: ');
n = input('Unesite n: ');
sum = 1;

for i = 1:n;
  sum = sum + (x.^i / myFactorial(i));
endfor

disp(sum) ;
