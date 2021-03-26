clear all;
round_counter = 1;
in_play = true;
outcomes = [""];
AI_agent = [""];
AI_move = [""];
wins = [0,0,0]; %wins vector, player, AI, draws
win_matrix = [];
win_message = ["You win!\n", "You lose!\n", "Its a draw\n"];
win_percent = [NaN ,NaN ,NaN];

focus_length = 5;

while in_play
    
    player_move(round_counter) = [""];
    while not(player_move(round_counter) == 'r') && ...
            not(player_move(round_counter) == 'p') && ...
            not(player_move(round_counter) == 's') && ...
            not(player_move(round_counter) == 'e')
        player_move(round_counter) = ...
            input('Choose rock (r), paper (p), scissors (s) or exit (e):\n','s');
    end
    if player_move(round_counter) == 'e'
        in_play = false;
        break
    end
    
    if round_counter == 1 || round_counter == 2
        AI_move(round_counter) = determine_AI_move(player_move(1), ...
            outcomes(1), 'random');
        AI_agent(round_counter) = "Random";
    else        
        AI_agent(round_counter) = determine_AI_agent(win_matrix, round_counter, focus_length);
        
        win_matrix = simulate_AI_agents(player_move(round_counter), ...
            player_move(round_counter-1), ...
            outcomes(round_counter-1), win_matrix);
        
        AI_move(round_counter) = determine_AI_move(player_move(round_counter-1), ...
        outcomes(round_counter-1), AI_agent(round_counter));
    end
    
    fprintf('AI move: %s Strategy: %s \n', AI_move(round_counter), AI_agent(round_counter));
    [outcomes(round_counter)] = determine_winner(player_move(round_counter), AI_move(round_counter));
    
    if round_counter == 2
       win_matrix = simulate_AI_agents(player_move(round_counter), ...
            player_move(round_counter-1), ...
            outcomes(round_counter-1), win_matrix); 
    end
    
    if strcmp(outcomes(round_counter), 'player')
        fprintf(win_message(1))
        wins(1) = wins(1) + 1;
    elseif strcmp(outcomes(round_counter), 'AI')
        fprintf(win_message(2))
        wins(2) = wins(2) + 1;
    elseif strcmp(outcomes(round_counter), 'draw')
        fprintf(win_message(3))
        wins(3) = wins(3) + 1;
    end
    
    fprintf('Player wins:%5d. AI wins:%5d. draws:%5d\n', wins(1), wins(2), wins(3))
    win_percent(round_counter, :) = (wins./(round_counter))*100;
    round_counter = round_counter+1;
end

plot(1:round_counter-1, win_percent(:, 1), '-g', ...
    1:round_counter-1, win_percent(:, 2), '-r', ...
    1:round_counter-1, win_percent(:, 3), '-m');
xlabel('Round Number'); ylabel('Win Percentage');
legend('Player Win %', 'AI Win %', 'Draw %');
grid on;