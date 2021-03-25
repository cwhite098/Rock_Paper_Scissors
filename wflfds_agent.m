function wflfds_agent_move = wflfds_agent(previous_move, previous_outcome)

%win-forward, lose-forward, draw-stay agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wflfds_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wflfds_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wflfds_agent_move = 'p';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wflfds_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wflfds_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wflfds_agent_move = 's';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wflfds_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wflfds_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wflfds_agent_move = 'r';
end

end