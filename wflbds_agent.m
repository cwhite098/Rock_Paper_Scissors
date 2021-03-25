function wflbds_agent_move = wflbds_agent(previous_move, previous_outcome)

%win-forward, lose-back, draw-stay agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wflbds_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wflbds_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wflbds_agent_move = 'p';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wflbds_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wflbds_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wflbds_agent_move = 's';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wflbds_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wflbds_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wflbds_agent_move = 'r';
end

end