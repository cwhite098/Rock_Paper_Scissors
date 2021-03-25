function rps_str = int_to_rps(int_value)
% INT_TO_RPS: converts int representing rock, paper or scissors to str
% representation

if int_value == 0
   rps_str = 'r'; 
end
if int_value == 1
   rps_str = 'p'; 
end
if int_value == 2
   rps_str= 's'; 
end

end

