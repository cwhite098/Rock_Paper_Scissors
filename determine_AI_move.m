function AI_move = determine_AI_move(previous_move, previous_outcome, AI_agent)

%WIN-STAY variations
if AI_agent == 'random'
   AI_move = random_agent(previous_move, previous_outcome);
end

if AI_agent == 'wslfds'
   AI_move = wslfds_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wslbds'
   AI_move = wslbds_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wslsds'
   AI_move = wslsds_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wslfdf'
   AI_move = wslfdf_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wslfdb'
   AI_move = wslfdb_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wslbdf'
   AI_move = wslbdf_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wslbdb'
   AI_move = wslbdb_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wslsdf'
   AI_move = wslsdf_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wslsdb'
   AI_move = wslsdb_agent(previous_move, previous_outcome); 
end

%WIN-BACK variations
if AI_agent == 'wblfdf'
   AI_move = wblfdf_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wblfdb'
   AI_move = wblfdb_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wblfds'
   AI_move = wblfds_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wblbdf'
   AI_move = wblbdf_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wblbdb'
   AI_move = wblbdb_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wblbds'
   AI_move = wblbds_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wblsdf'
   AI_move = wblsdf_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wblsdb'
   AI_move = wblsdb_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wblsds'
   AI_move = wblsds_agent(previous_move, previous_outcome); 
end

%WIN-FORWARD variations
if AI_agent == 'wflfdf'
   AI_move = wflfdf_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wflfdb'
   AI_move = wflfdb_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wflfds'
   AI_move = wflfds_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wflbdf'
   AI_move = wflbdf_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wflbdb'
   AI_move = wflbdb_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wflbds'
   AI_move = wflbds_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wflsdf'
   AI_move = wflsdf_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wflsdb'
   AI_move = wflsdb_agent(previous_move, previous_outcome); 
end

if AI_agent == 'wflsds'
   AI_move = wflsds_agent(previous_move, previous_outcome); 
end

end