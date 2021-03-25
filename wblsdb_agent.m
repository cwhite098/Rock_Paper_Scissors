function wblsdb_agent_move = wblsdb_agent(previous_move, previous_outcome)

%win-back, lose-stay, draw-back agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wblsdb_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wblsdb_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wblsdb_agent_move = 's';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wblsdb_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wblsdb_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wblsdb_agent_move = 'r';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wblsdb_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wblsdb_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wblsdb_agent_move = 'p';
end

end