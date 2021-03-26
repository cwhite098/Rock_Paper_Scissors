function [Outcome] = determine_winner(player_move, AI_move)
player_move = rps_to_int(player_move);
AI_move = rps_to_int(AI_move);
if player_move(end) == AI_move(end)
    Outcome = 'draw';
elseif player_move(end) == mod(AI_move(end)+1,3)
    Outcome = 'player';
else
    Outcome = 'AI';
end