function matrix=sparse2matrix(cel)
matrix=zeros(cel{1}(1),cel{1}(2)) + cel{2};
for i=3:length(cel)
  matrix(cel{i}(1),cel{i}(2))=cel{i}(3);
end
