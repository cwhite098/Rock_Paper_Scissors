function wblsds_agent_move = wblsds_agent(previous_move, previous_outcome)

%win-back, lose-stay, draw-stay agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wblsds_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wblsds_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wblsds_agent_move = 'p';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wblsds_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wblsds_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wblsds_agent_move = 's';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wblsds_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wblsds_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wblsds_agent_move = 'r';
end

end