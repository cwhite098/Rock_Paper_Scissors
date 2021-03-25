function wslfdb_agent_move = wslfdb_agent(previous_move, previous_outcome)

%win-stay, lose-forward, draw-back agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wslfdb_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wslfdb_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wslfdb_agent_move = 's';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wslfdb_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wslfdb_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wslfdb_agent_move = 'r';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wslfdb_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wslfdb_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wslfdb_agent_move = 'p';
end

end