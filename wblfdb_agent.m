function wblfdb_agent_move = wblfdb_agent(previous_move, previous_outcome)

%win-stay, lose-forward, draw-back agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wblfdb_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wblfdb_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wblfdb_agent_move = 's';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wblfdb_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wblfdb_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wblfdb_agent_move = 'r';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wblfdb_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wblfdb_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wblfdb_agent_move = 'p';
end

end