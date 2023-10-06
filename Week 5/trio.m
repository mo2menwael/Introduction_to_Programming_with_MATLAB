function A = trio(n,m)
A = zeros(3*n,m);
A(1:(1/3*3*n),:)=1;
A((1/3*3*n)+1:(2/3*3*n),:)=2;
A((2/3*3*n)+1:3*n,:)=3;
end
