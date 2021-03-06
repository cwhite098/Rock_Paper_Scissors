function AI_agent = determine_AI_agent(win_matrix, round_counter, focus_length)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION determine_AI_agent - determines the AI agent that will be taking
% the next turn
% 
% Input: win_matrix = matrix containing win/loss/draw data for each agent
%        round_counter = number of rounds that has been played
%        focus_length = number of previous games decision is based on
%        
% Ouput: AI_agent = the agent that will be taking the next turn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sum_of_wins = zeros(28,1);
win_percent = zeros(28,1);

size_win_mat = size(win_matrix);
length_win_mat = size_win_mat(2);

%sums number of wins for each agent and converts to percentage
if length_win_mat - focus_length <= 0
    for row = 1:28
        sum_of_wins(row, 1) = sum(win_matrix(row,:), 'omitnan');
        win_percent(row, 1) = (sum_of_wins(row)/round_counter)*100;   
    end
else
    for row = 1:28
        sum_of_wins(row, 1) = sum(win_matrix(row,(end-focus_length):end), 'omitnan');
        win_percent(row, 1) = (sum_of_wins(row)/focus_length)*100;   
    end
end

%chooses the row with the highest win%
[col, row] = max(win_percent);

AI_agent_number = row;

agent_ref = cell(28,2);
agent_ref = {1, 'wslfds';
2, 'random';
3, 'wslbds';
4, 'wslsds';
5, 'wslfdf';
6, 'wslfdb';
7, 'wslbdf';
8, 'wslbdb';
9, 'wslsdf';
10, 'wslsdb';
11, 'wblfdf';
12, 'wblfdb';
13, 'wblfds';
14, 'wblbdf';
15, 'wblbdb';
16, 'wblbds';
17, 'wblsdf';
18, 'wblsdb';
19, 'wblsds';
20, 'wflfdf';
21, 'wflfdb';
22, 'wflfds';
23, 'wflbdf';
24, 'wflbdb';
25, 'wflbds';
26, 'wflsdf';
27, 'wflsdb';
28, 'wflsds'};

%picks the agent with the highest win% by referenciung it in the above cell
AI_agent = agent_ref(AI_agent_number, 2);
AI_agent = char(AI_agent);

end