s=?1
10.times do 
  puts s
  s.gsub!(/(.)\1*/){"#{$&.size}"+$1} 

end 