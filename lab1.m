n = input('Koliko brojeva? n = ');
disp('Upisi ulazni niz: ');
for i = 1:n
  ulazni(i) = input('');
end
disp(ulazni);
for i = 1:n
  if (i == 1)
    izlazni(1) = ulazni(1);
  end
  if (i > 1)
    izlazni(i) = ulazni(i) + ulazni(i-1);
  end
end
disp(izlazni);
