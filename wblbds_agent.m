function wblbds_agent_move = wblbds_agent(previous_move, previous_outcome)

%win-back, lose-back, draw-stay agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wblbds_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wblbds_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wblbds_agent_move = 'p';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wblbds_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wblbds_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wblbds_agent_move = 's';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wblbds_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wblbds_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wblbds_agent_move = 'r';
end

end