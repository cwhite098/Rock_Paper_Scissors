function wslsdb_agent_move = wslsdb_agent(previous_move, previous_outcome)

%win-stay, lose-stay, draw-back agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wslsdb_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wslsdb_agent_move = 'p';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wslsdb_agent_move = 's';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wslsdb_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wslsdb_agent_move = 's';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wslsdb_agent_move = 'r';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wslsdb_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wslsdb_agent_move = 'r';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wslsdb_agent_move = 'p';
end

end