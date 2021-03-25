function wblbdf_agent_move = wblbdf_agent(previous_move, previous_outcome)

%win-stay, lose-back, draw-forward agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wblbdf_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wblbdf_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wblbdf_agent_move = 'r';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wblbdf_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wblbdf_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wblbdf_agent_move = 'p';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wblbdf_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wblbdf_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wblbdf_agent_move = 's';
end

end