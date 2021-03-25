function wflsds_agent_move = wflsds_agent(previous_move, previous_outcome)

%win-forward, lose-stay, draw-stay agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wflsds_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wflsds_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wflsds_agent_move = 'p';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wflsds_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wflsds_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wflsds_agent_move = 's';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wflsds_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wflsds_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wflsds_agent_move = 'r';
end

end