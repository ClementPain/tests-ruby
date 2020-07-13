def translate( words )
	
	new_words = ""
	array_of_words = words.split(" ")

	array_of_words.each_with_index do |word, index_word|

		new_word = word.chars
		consonant = ""
		i = 0
		
		while ( ['a','e','i','o','u'].include?(word[i]) == false )

			if word[i] + word[i+1] == 'qu'
				consonant += 'qu'
				new_word.delete_at(0)
				new_word.delete_at(0)
				i += 2
			else
				consonant += word[i]
				new_word.delete_at(0)
				i += 1
			end
		end

		new_words += new_word.join + consonant + "ay"
		new_words += " " if index_word < ( array_of_words.size - 1 )
	end


	return new_words

end