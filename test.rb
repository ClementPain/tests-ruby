def titleize(says)
	new_says = ""

	says.split.map.with_index do |word, i| 
		
		if (word.size > 3 || i == 0) 
			new_says += word.capitalize
		else 
			new_says += word
		end
		
		new_says += " " if i != (says.split.size - 1)
	end

	return new_says
end

puts titleize("the bridge over the river kwai")