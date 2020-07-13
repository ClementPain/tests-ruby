def who_is_bigger(x, y, z)
	nil_check = false

	[x, y, z].each { |nb| nil_check = true if nb.nil? }
	
	if nil_check == false
		return "#{["a", "b", "c"][[x, y, z].index([x, y, z].max)]} is bigger"
	else
		return "nil detected"
	end
end

def reverse_upcase_noLTA(string)
	return string.reverse.upcase.gsub(/[LTA]/, '')
end

def array_42(array)
	return array.include?(42)
end

def magic_array(array)
	array.flatten.sort!.delete_if { |x| x%3 == 0 }.map { |x| x *= 2 }.uniq
end
