function summa=halfsum(a)
summa=0;
for i=1:height(a)
  for j=i:width(a)
    summa=summa+a(i,j);
  end
end
