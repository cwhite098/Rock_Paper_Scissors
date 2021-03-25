function random_agent_move = random_agent(previous_move, previous_outcome)
r =rand;
   if r>=0 && r<(1/3)
      random_agent_move = 'r';
   end
   if (1/3)<=r && r<(2/3)
      random_agent_move = 'p'; 
   end
   if (2/3)<=r
      random_agent_move = 's'; 
   end
end