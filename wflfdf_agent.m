function wflfdf_agent_move = wflfdf_agent(previous_move, previous_outcome)

%win-forward, lose-forward, draw-forward agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wflfdf_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wflfdf_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wflfdf_agent_move = 'r';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wflfdf_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wflfdf_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wflfdf_agent_move = 'p';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wflfdf_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wflfdf_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wflfdf_agent_move = 's';
end

end