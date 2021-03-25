function wflsdf_agent_move = wflsdf_agent(previous_move, previous_outcome)

%win-forward, lose-stay, draw-forward agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wflsdf_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wflsdf_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wflsdf_agent_move = 'r';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wflsdf_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wflsdf_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wflsdf_agent_move = 'p';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wflsdf_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wflsdf_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wflsdf_agent_move = 's';
end

end