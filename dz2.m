brojac = 0;
for i = 100:999
  if(mod(i, 10) == 4)
    disp(i);
    brojac = brojac + 1;
  endif
endfor

disp('Ukupno brojeva koji zavrsavaju na 4 je: ');
disp(brojac);
