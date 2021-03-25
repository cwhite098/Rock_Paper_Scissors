clear all;

player_move = 0;
previous_move = 0;
previous_outcome = 0;

AI_agent = 'random';
round_counter = 0;

wins = [0,0,0]; %wins vector, player, AI, draws
win_matrix = [];

%WIN_MATRIX
%row 1 = random_agent
%row 2 = wslfds_agent
%row 3 = wslbds_agent
%row 4 = wslsds_agent
%row 5 = wslfdf_agent
%row 6 = wslfdb_agent
%row 7 = wslbdf_agent
%row 8 = wslbdb_agent
%row 9 = wslsdf_agent
%row 10 = wslsdb_agent
%row 11 = wblfdf_agent
%row 12 = wblfdb_agent
%row 13 = wblfds_agent
%row 14 = wblbdf_agent
%row 15 = wblbdb_agent
%row 16 = wblbds_agent
%row 17 = wblsdf_agent
%row 18 = wblsdb_agent
%row 19 = wblsds_agent
%row 20 = wflfdf_agent
%row 21 = wflfdb_agent
%row 22 = wflfds_agent
%row 23 = wflbdf_agent
%row 24 = wflbdb_agent
%row 25 = wflbds_agent
%row 26 = wflsdf_agent
%row 27 = wflsdb_agent
%row 28 = wflsds_agent

player_win_message = 'You win!\n';
AI_win_message = 'You lose!\n';
draw_message = 'Its a draw\n';

player_win_percent = [];
AI_win_percent = [];
draw_percent = [];
strategy_vec = [];

focus_length = 1;

rng('shuffle','threefry')

while not(strcmp(player_move,'e'))
    
player_move = input('Choose rock (r), paper (p), scissors (s) or exit (e):\n','s');
player_move = player_move(1);
while not(player_move == 'r') && not(player_move == 'p') && not(player_move == 's') && not(player_move == 'e')
      player_move = input('Choose rock (r), paper (p), scissors (s) or exit (e):\n','s');
end

if player_move == 'e'
   break 
end

player_move

if round_counter == 0
    AI_move = determine_AI_move(previous_move, previous_outcome, 'random')
    fprintf('Strategy: ')
    fprintf('random\n')
else
    win_matrix = simulate_AI_agents(player_move, previous_move, previous_outcome, win_matrix);
    AI_agent = determine_AI_agent(win_matrix, round_counter, focus_length);
        
    AI_move = determine_AI_move(previous_move, previous_outcome, AI_agent)
    
    fprintf('Strategy: ')
    fprintf(AI_agent) 
    fprintf('\n')
end

[winner,wins] = determine_winner(player_move, AI_move, wins);

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

round_counter = round_counter+1;

player_win_percent(round_counter) = (wins(1)/round_counter)*100;
AI_win_percent(round_counter) = (wins(2)/round_counter)*100;
draw_percent(round_counter) = (wins(3)/round_counter)*100;

end

plot(0:round_counter-1, player_win_percent, '-g', 'LineWidth', 2);
hold on
plot(0:round_counter-1, AI_win_percent, '-r', 'LineWidth', 2);
plot(0:round_counter-1, draw_percent, '-m', 'LineWidth', 2);
hold off
xlabel('Round Number'); ylabel('Win Percentage');
legend('Player Win %', 'AI Win %', 'Draw %');


