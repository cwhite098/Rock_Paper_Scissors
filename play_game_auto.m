clear all;

player_move = 0;
previous_move = 0;
previous_outcome = 0;

AI_agent = 'random';
round_counter = 0;

wins = [0,0,0]; %wins vector, player, AI, draws
win_matrix = [];

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

player_win_message = 'You win!\n';
AI_win_message = 'You lose!\n';
draw_message = 'Its a draw\n';

player_win_percent = [];
AI_win_percent = [];
draw_percent = [];

strategy_vec = [];
winning_strategy_vec = [];
losing_strategy_vec = [];
drawing_strategy_vec = [];

focus_length = Inf;

rng('shuffle','philox')

while round_counter < 10000

player_move  = random_agent(previous_move,previous_outcome);

player_move

if round_counter == 0 || round_counter == 1
    
    AI_move = determine_AI_move(previous_move, previous_outcome, 'random')
    fprintf('Strategy: ')
    fprintf('random\n')
    
else
    
    AI_agent = determine_AI_agent(win_matrix, round_counter, focus_length);       
    AI_move = determine_AI_move(previous_move, previous_outcome, AI_agent)
    
    fprintf('Strategy: ')
    fprintf(AI_agent) 
    fprintf('\n')
       
end

[winner,wins] = determine_winner(player_move, AI_move, wins);

if not(round_counter==0)
    win_matrix = simulate_AI_agents(player_move, previous_move, previous_outcome, win_matrix);
end

if strcmp(winner, 'player')
    fprintf(player_win_message)
end
if strcmp(winner, 'AI')
    fprintf(AI_win_message)
end
if strcmp(winner, 'draw')
    fprintf(draw_message)
end

fprintf('Player wins:%5d. AI wins:%5d. draws:%5d\n', wins(1), wins(2), wins(3))

previous_move  = player_move;
previous_outcome = winner;

for i = 1:28
    if char(agent_ref(i,2)) == AI_agent
        strategy_vec(end+1) = i;
        if strcmp(winner,'AI')
            winning_strategy_vec(end+1) = i;
        end
        if strcmp(winner,'player')
            losing_strategy_vec(end+1) = i;
        end
        if strcmp(winner,'draw')
            drawing_strategy_vec(end+1) = i;
        end
    end
end
for i = 1:28
   frequency(i) = length(find(strategy_vec==i)) ;
   win_frequency(i) = length(find(winning_strategy_vec==i));
   lose_frequency(i) = length(find(losing_strategy_vec==i));
   draw_frequency(i) = length(find(drawing_strategy_vec==i));
end

round_counter = round_counter+1;

player_win_percent(round_counter) = (wins(1)/round_counter)*100;
AI_win_percent(round_counter) = (wins(2)/round_counter)*100;
draw_percent(round_counter) = (wins(3)/round_counter)*100;


end

figure(1);
plot(0:round_counter-1, player_win_percent, '-g', 'LineWidth', 2);
hold on
plot(0:round_counter-1, AI_win_percent, '-r', 'LineWidth', 2);
plot(0:round_counter-1, draw_percent, '-m', 'LineWidth', 2);
hold off
xlabel('Round Number'); ylabel('Win Percentage');
legend('Player Win %', 'AI Win %', 'Draw %');

total_frequency(:,1) = win_frequency;
total_frequency(:,2) = lose_frequency;
total_frequency(:,3) = draw_frequency;


figure();
hold on
title('Strategy Performance');
bar(1:28,total_frequency, 'stacked');
legend('AI','player','draw');
hold off

