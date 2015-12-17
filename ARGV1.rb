
	# puts "write the word for convert at Pig Latin!:"
	# word = gets.chomp
	def pig_latin(word)

	  if word =~ /\A[aeiouAEIOU]/
		 puts word + "way"	
	  else
	 	con = /[a-z&&[^aeiou]]/
	 	match1 = word.match con
	 	word.sub! /[a-z&&[^aeiou]]/, '\1'
	 	puts "#{word}#{match1}ay"
	  end

	end

	ARGV.each do |word|
		new_word = word.dup
		print pig_latin(new_word)
	end

	print "\n"