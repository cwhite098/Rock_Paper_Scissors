function wslfdf_agent_move = wslfdf_agent(previous_move, previous_outcome)

%win-stay, lose-forward, draw-forward agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wslfdf_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wslfdf_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wslfdf_agent_move = 'r';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wslfdf_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wslfdf_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wslfdf_agent_move = 'p';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wslfdf_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wslfdf_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wslfdf_agent_move = 's';
end

end