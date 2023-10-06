function distance=get_distance(state1,state2)
global dataset;
[~,~,dataset]=xlsread('Distances.xlsx');

state1_index = state2index(dataset, state1);
state2_index = state2index(dataset, state2);

if state1_index > 1 && state2_index > 1
    distance = cell2mat(dataset(state1_index, state2_index));
  else
    distance = -1;
  end
end

function index = state2index(dataset, state)
  [~, states] = size(dataset);
  index = -1;
  for i = 2:states
    if strcmp(cell2mat(dataset(1, i)), state)
      index=i; break;
    end
  end
end
