function coded=caesar(v,shift)
v=double(v);
v=v+shift;
for i=1:length(v)
  while v(i)>126
    v(i)=v(i)-95;
  end
  while v(i)<32
    v(i)=v(i)+95;
  end
end 
coded=char(v);
