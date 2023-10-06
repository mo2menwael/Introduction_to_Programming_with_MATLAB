function charnum=char_counter(fname,character)

fid=fopen(fname,'rt');
if fid<0 || ~ischar(character)
  charnum=-1; return;
end

charnum=0;
oneline=fgets(fid);
while ischar(oneline)
  charnum=charnum+length(find(oneline==character));
  oneline=fgets(fid);
end

%To call your function
%type('simple.txt')
%charnum = char_counter('simple.txt','a')
%charnum = char_counter('Frankenstein-by-Shelley.txt','?')
