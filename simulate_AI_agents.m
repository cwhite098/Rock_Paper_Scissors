function win_matrix = simulate_AI_agents(player_move, previous_move, previous_outcome, win_matrix)

wins_placeholder =[0 0 0];

%% WIN-STAY variations 

%random agent simulation
random_agent_move = random_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, random_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(2,end+1) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(2,end+1) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(2,end+1) = NaN;
end

%wslfds agent simulation
wslfds_agent_move = wslfds_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wslfds_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(1,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(1,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(1,end) = NaN;
end

%wslbds agent simulation
wslbds_agent_move = wslbds_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wslbds_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(3,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(3,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(3,end) = NaN;
end

%wslsds agent simulation
wslsds_agent_move = wslsds_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wslsds_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(4,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(4,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(4,end) = NaN;
end

%wslfdf agent simulation
wslfdf_agent_move = wslfdf_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wslfdf_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(5,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(5,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(5,end) = NaN;
end

%wslfdb agent simulation
wslfdb_agent_move = wslfdb_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wslfdb_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(6,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(6,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(6,end) = NaN;
end

%wslbdf agent simulation
wslbdf_agent_move = wslbdf_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wslbdf_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(7,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(7,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(7,end) = NaN;
end

%wslbdb agent simulation
wslbdb_agent_move = wslbdb_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wslbdb_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(8,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(8,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(8,end) = NaN;
end

%wslsdf agent simulation
wslsdf_agent_move = wslsdf_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wslsdf_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(9,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(9,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(9,end) = NaN;
end

%wslsdb agent simulation
wslsdb_agent_move = wslsdb_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wslsdb_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(10,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(10,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(10,end) = NaN;
end

%% WIN-BACK variations

%wblfdf agent simulation
wblfdf_agent_move = wblfdf_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wblfdf_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(11,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(11,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(11,end) = NaN;
end

%wblfdb agent simulation
wblfdb_agent_move = wblfdb_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wblfdb_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(12,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(12,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(12,end) = NaN;
end

%wblfds agent simulation
wblfds_agent_move = wblfds_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wblfds_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(13,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(13,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(13,end) = NaN;
end

%wblbdf agent simulation
wblbdf_agent_move = wblbdf_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wblbdf_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(14,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(14,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(14,end) = NaN;
end

%wblbdb agent simulation
wblbdb_agent_move = wblbdb_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wblbdb_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(15,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(15,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(15,end) = NaN;
end

%wblbds agent simulation
wblbds_agent_move = wblbds_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wblbds_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(16,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(16,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(16,end) = NaN;
end

%wblsdf agent simulation
wblsdf_agent_move = wblsdf_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wblsdf_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(17,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(17,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(17,end) = NaN;
end

%wblsdb agent simulation
wblsdb_agent_move = wblsdb_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wblsdb_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(18,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(18,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(18,end) = NaN;
end

%wblsds agent simulation
wblsds_agent_move = wblsds_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wblsds_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(19,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(19,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(19,end) = NaN;
end

%% WIN-FORWARD variations

%wflfdf agent simulation
wflfdf_agent_move = wflfdf_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wflfdf_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(20,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(20,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(20,end) = NaN;
end

%wflfdb agent simulation
wflfdb_agent_move = wflfdb_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wflfdb_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(21,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(21,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(21,end) = NaN;
end

%wflfds agent simulation
wflfds_agent_move = wflfds_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wflfds_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(22,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(22,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(22,end) = NaN;
end

%wflbdf agent simulation
wflbdf_agent_move = wflbdf_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wflbdf_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(23,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(23,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(23,end) = NaN;
end

%wflbdb agent simulation
wflbdb_agent_move = wflbdb_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wflbdb_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(24,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(24,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(24,end) = NaN;
end

%wflbds agent simulation
wflbds_agent_move = wflbds_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wflbds_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(25,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(25,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(25,end) = NaN;
end

%wflsdf agent simulation
wflsdf_agent_move = wflsdf_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wflsdf_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(26,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(26,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(26,end) = NaN;
end

%wflsdb agent simulation
wflsdb_agent_move = wflsdb_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wflsdb_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(27,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(27,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(27,end) = NaN;
end

%wflsds agent simulation
wflsds_agent_move = wflsds_agent(previous_move, previous_outcome);
winner = determine_winner(player_move, wflsds_agent_move, wins_placeholder);
if strcmp(winner, 'player')
    win_matrix(28,end) = 0;
end
if strcmp(winner, 'AI')
    win_matrix(28,end) = 1;
end
if strcmp(winner, 'draw')
    win_matrix(28,end) = NaN;
end


end