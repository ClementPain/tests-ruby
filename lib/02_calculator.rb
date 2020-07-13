def add(x, y)
	return x + y
end

def subtract(x, y)
	return x - y
end

def sum(array)
	return array.inject(0) { |sum, x| sum + x }
end

def multiply(x, y)
	return x * y
end

def power(x, y)
	return x ** y
end

def factorial(x)
	if x > 0
		return (1..x).inject(:*)
	elsif x = 0
		return 0
	else
		puts "Veuiller renseigner un nombre entier positif"
	end
end
