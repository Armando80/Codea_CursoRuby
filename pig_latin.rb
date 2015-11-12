
	puts "write the word for convert at Pig Latin!:"
	word = gets.chomp
	  if word =~ /\A[aeiouAEIOU]/
		 puts word + "way"	
	  else
	 	con = /[a-z&&[^aeiou]]/
	 	match1 = word.match con
	 	word.sub! /[a-z&&[^aeiou]]/, '\2\1\ '
	 	puts "#{word}#{match1}ay"
	  end