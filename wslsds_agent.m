function wslsds_agent_move = wslsds_agent(previous_move, previous_outcome)

%win-stay, lose-stay, draw-stay agent

if previous_move == 'r'
    wslsds_agent_move = 'p';
elseif previous_move == 'p'
    wslsds_agent_move = 's';
else
    wslsds_agent_move = 'r';
end