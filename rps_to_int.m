function int_value = rps_to_int(rps_str)
% RPS_TO_INT: converts string representing rock, paper or scissors to int
% representation

if rps_str == 'r'
   int_value = 0; 
end
if rps_str == 'p'
   int_value = 1; 
end
if rps_str == 's'
   int_value = 2; 
end

end