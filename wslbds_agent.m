function wslbds_agent_move = wslbds_agent(previous_move, previous_outcome)

%win-stay, lose-back, draw-stay agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wslbds_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wslbds_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wslbds_agent_move = 'p';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wslbds_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wslbds_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wslbds_agent_move = 's';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wslbds_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wslbds_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wslbds_agent_move = 'r';
end

end