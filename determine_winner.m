function [winner, wins] = determine_winner(player_move, AI_move, wins)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if player_move == 'r' && AI_move == 'r'
    winner = 'draw';
    wins(3) = wins(3)+1;
end
if player_move == 'r' && AI_move == 'p'
    winner = 'AI';
    wins(2) = wins(2)+1;
end
if player_move == 'r' && AI_move == 's'
    winner = 'player';
    wins(1) = wins(1)+1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if player_move == 'p' && AI_move == 'r'
    winner = 'player';
    wins(1) = wins(1)+1;
end
if player_move == 'p' && AI_move == 'p'
    winner = 'draw';
    wins(3) = wins(3)+1;
end
if player_move == 'p' && AI_move == 's'
    winner = 'AI';
    wins(2) = wins(2)+1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if player_move == 's' && AI_move == 'r'
    winner = 'AI';
    wins(2) = wins(2)+1;
end
if player_move == 's' && AI_move == 'p'
    winner = 'player';
    wins(1) = wins(1)+1;
end
if player_move == 's' && AI_move == 's'
    winner = 'draw';
    wins(3) = wins(3)+1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end