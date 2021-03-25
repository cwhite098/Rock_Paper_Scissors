function wslfds_agent_move = wslfds_agent(previous_move, previous_outcome)

%win-stay, lose-forward, draw-stay agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wslfds_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wslfds_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wslfds_agent_move = 'p';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wslfds_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wslfds_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wslfds_agent_move = 's';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wslfds_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wslfds_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wslfds_agent_move = 'r';
end

end