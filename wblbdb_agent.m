function wblbdb_agent_move = wblbdb_agent(previous_move, previous_outcome)

%win-back, lose-back, draw-back agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wblbdb_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wblbdb_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wblbdb_agent_move = 's';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wblbdb_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wblbdb_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wblbdb_agent_move = 'r';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wblbdb_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wblbdb_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wblbdb_agent_move = 'p';
end

end