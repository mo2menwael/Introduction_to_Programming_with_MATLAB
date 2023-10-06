function valid=valid_date(y,m,d)

if(~isscalar(y) || y < 1 || y ~= fix(y))
  valid=false;
  return;
elseif(~isscalar(m) || m < 1 || m ~= fix(m))
  valid=false;
  return;
elseif(~isscalar(d) || d < 1 || d ~= fix(d))
  valid=false;
  return;
end

if(m>12 || d>31)
  valid=false;
  return;
end

if (mod(y,400)==0 || (mod(y,4)==0 && mod(y,100)~=0))
  leap=true;
else
  leap=false;
end

if(d==29 && m==2 && ~leap)
  valid=false;
elseif(d==30 && m==2)
  valid=false;
elseif(d==31 && (m==2 || m==4 || m==6 || m==9 || m==11))
  valid=false;
else
  valid=true;
end
