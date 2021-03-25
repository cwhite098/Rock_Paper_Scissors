function wslbdb_agent_move = wslbdb_agent(previous_move, previous_outcome)

%win-stay, lose-back, draw-back agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wslbdb_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wslbdb_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wslbdb_agent_move = 's';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wslbdb_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wslbdb_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wslbdb_agent_move = 'r';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wslbdb_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wslbdb_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wslbdb_agent_move = 'p';
end

end