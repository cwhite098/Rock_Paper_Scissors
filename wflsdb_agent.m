function wflsdb_agent_move = wflsdb_agent(previous_move, previous_outcome)

%win-forward, lose-stay, draw-back agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wflsdb_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wflsdb_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wflsdb_agent_move = 's';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wflsdb_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wflsdb_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wflsdb_agent_move = 'r';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wflsdb_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wflsdb_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wflsdb_agent_move = 'p';
end

end