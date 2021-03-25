function wblsdf_agent_move = wblsdf_agent(previous_move, previous_outcome)

%win-back, lose-stay, draw-forward agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wblsdf_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wblsdf_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wblsdf_agent_move = 'r';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wblsdf_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wblsdf_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wblsdf_agent_move = 'p';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wblsdf_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wblsdf_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wblsdf_agent_move = 's';
end

end