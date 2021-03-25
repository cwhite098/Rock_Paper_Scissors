function wblfdf_agent_move = wblfdf_agent(previous_move, previous_outcome)

%win-back, lose-forward, draw-forward agent

if previous_move == 'r' && strcmp(previous_outcome, 'player')
    wblfdf_agent_move = 's';
end
if previous_move == 'r' && strcmp(previous_outcome, 'AI')
    wblfdf_agent_move = 'r';
end
if previous_move == 'r' && strcmp(previous_outcome, 'draw')
    wblfdf_agent_move = 'r';
end

if previous_move == 'p' && strcmp(previous_outcome, 'player')
    wblfdf_agent_move = 'r';
end
if previous_move == 'p' && strcmp(previous_outcome, 'AI')
    wblfdf_agent_move = 'p';
end
if previous_move == 'p' && strcmp(previous_outcome, 'draw')
    wblfdf_agent_move = 'p';
end

if previous_move == 's' && strcmp(previous_outcome, 'player')
    wblfdf_agent_move = 'p';
end
if previous_move == 's' && strcmp(previous_outcome, 'AI')
    wblfdf_agent_move = 's';
end
if previous_move == 's' && strcmp(previous_outcome, 'draw')
    wblfdf_agent_move = 's';
end

end