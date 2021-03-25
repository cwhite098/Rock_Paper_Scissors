function wslsdf_agent_move = wslsdf_agent(previous_move, previous_outcome)

%win-stay, lose-stay, draw-forward agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wslsdf_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wslsdf_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wslsdf_agent_move = 'r';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wslsdf_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wslsdf_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wslsdf_agent_move = 'p';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wslsdf_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wslsdf_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wslsdf_agent_move = 's';
end

end