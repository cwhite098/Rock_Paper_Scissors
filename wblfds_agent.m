function wblfds_agent_move = wblfds_agent(previous_move, previous_outcome)

%win-back, lose-forward, draw-stay agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wblfds_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wblfds_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wblfds_agent_move = 'p';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wblfds_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wblfds_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wblfds_agent_move = 's';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wblfds_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wblfds_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wblfds_agent_move = 'r';
end

end