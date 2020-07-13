def echo(says)
	return says
end

def shout(says)
	return says.upcase
end

def repeat(says, nb = 2 )
	return ( says + " " ) * (nb - 1) + says
end

def start_of_word(says, nb)
	return says.chars.first(nb).join
end

def first_word(says)
	return says.split.first
end

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
