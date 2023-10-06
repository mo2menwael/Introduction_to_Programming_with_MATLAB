function [summa, index]=max_sum(v,n)
if n>length(v)
  summa=0; index=-1; return;
end
temp_sum = zeros(1,length(v)-n+1); % Pre-allocation
for i=1:length(v)-n+1
  temp_sum(i)=sum(v(i:i+n-1));
end
[summa index]=max(temp_sum);
