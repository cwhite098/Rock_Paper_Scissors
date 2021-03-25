function wslsds_agent_move = wslsds_agent(previous_move, previous_outcome)

%win-stay, lose-stay, draw-stay agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wslsds_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wslsds_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wslsds_agent_move = 'p';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wslsds_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wslsds_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wslsds_agent_move = 's';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wslsds_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wslsds_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wslsds_agent_move = 'r';
end

end