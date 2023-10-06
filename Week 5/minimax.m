function [mmr, mmm] = minimax(M)
mmr=max(M')-min(M');
mmm=max(M,[],"all")-min(M,[],"all");
end
