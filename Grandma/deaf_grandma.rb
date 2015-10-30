def deaf_grandma
  puts "say something to grand Ma!"
      some = gets.chomp
  while some != "BYE TQM"       
   
      if some==some.upcase then
  	    return "NO, NO DESDE 1983"
        else
  	    return "HUH?! NO TE ESCUCHO, HIJO!"
      end
   end 
end

p deaf_grandma