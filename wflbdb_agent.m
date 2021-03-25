function wflbdb_agent_move = wflbdb_agent(previous_move, previous_outcome)

%win-sforward, lose-back, draw-back agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wflbdb_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wflbdb_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wflbdb_agent_move = 's';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wflbdb_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wflbdb_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wflbdb_agent_move = 'r';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wflbdb_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wflbdb_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wflbdb_agent_move = 'p';
end

end